codeunit 50045 "Sales Order API"
{
    trigger OnRun()
    begin

    end;

    Procedure XMLOrderImport(RecImportOrder: XmlPort "Create Sales Order"): text
    VAR
        SH: Record "Sales Header";
        SingleInstanceCodeunit: Codeunit "Single Instance Codeunit";
    BEGIN
        IF RecImportOrder.Import() THEN BEGIN
            exit(SingleInstanceCodeunit.GetPONumber());
        END
        ELSE
            Error(GetLastErrorText);
        //exit();
    END;

    Procedure XMLOrderUpdate(RecImportOrder: XmlPort "Update Sales Order"): text
    VAR
        SH: Record "Sales Header";
        SingleInstanceCodeunit: Codeunit "Single Instance Codeunit";
    BEGIN
        IF RecImportOrder.Import() THEN BEGIN
            exit(SingleInstanceCodeunit.GetPONumber());
        END
        ELSE
            Error(GetLastErrorText);
    END;
    // Mapple NG 28032023 START - Added for Sales Order API

    procedure XMLOrderImportW(webxml: Text): Text
    var
        SingleInstanceCodeunit: Codeunit "Single Instance Codeunit";
        TempBlob: Codeunit "Temp Blob";
        CreateSalesOrder: XmlPort "Create Sales Order";
        XMLOutStream: OutStream;
        XMLInStream: InStream;
        SH: Record "Sales Header";
    begin


        TempBlob.CreateOutStream(XMLOutStream);
        XMLOutStream.WriteText(webxml);
        TempBlob.CreateInStream(XMLInStream);
        CreateSalesOrder.SetSource(XMLInStream);
        if CreateSalesOrder.Import() then
            exit(SingleInstanceCodeunit.GetPONumber())
        else
            Error(GetLastErrorText);
    end;
    /*
procedure XMLOrderImportW(webxml: Text; OrderID: Code[20]): Text
var
    SingleInstanceCodeunit: Codeunit "Single Instance Codeunit";
    TempBlob: Codeunit "Temp Blob";
    CreateSalesOrder: XmlPort "Create Sales Order";
    XMLOutStream: OutStream;
    XMLInStream: InStream;
    SH: Record "Sales Header";
begin
    SH.Reset();
    SH.SetRange(SH."Order ID", OrderID);
    IF SH.FindFirst() THEN
        Error('Order already exist');

    TempBlob.CreateOutStream(XMLOutStream);
    XMLOutStream.WriteText(webxml);
    TempBlob.CreateInStream(XMLInStream);
    CreateSalesOrder.SetSource(XMLInStream);
    if CreateSalesOrder.Import() then
        exit(SingleInstanceCodeunit.GetPONumber())
    else
        Error(GetLastErrorText);
end;
*/
    procedure XMLOrderUpdateW(webxml: Text): Text
    var
        SingleInstanceCodeunit: Codeunit "Single Instance Codeunit";
        TempBlob: Codeunit "Temp Blob";
        UpdateSalesOrder: XmlPort "Update Sales Order";
        XMLOutStream: OutStream;
        XMLInStream: InStream;
    begin
        TempBlob.CreateOutStream(XMLOutStream);
        XMLOutStream.WriteText(webxml);
        TempBlob.CreateInStream(XMLInStream);
        UpdateSalesOrder.SetSource(XMLInStream);
        if UpdateSalesOrder.Import() then
            exit(SingleInstanceCodeunit.GetPONumber())
        else
            Error(GetLastErrorText);
    end;

    procedure SerialnoUpdateOnSales(serialNoJson: Text): Text
    var
        SerialJsonObject: JsonObject;
    begin
        if not SerialJsonObject.ReadFrom(serialNoJson) then
            exit('invalid input expected a JSON array Object');
        CreateUpdateReservEntryweb(SerialJsonObject);
        if ResponseSerial then
            exit('update successfully')
        else
            exit(GetLastErrorText());
    end;

    local procedure CreateUpdateReservEntryweb(SerailReservationJsonObject: JsonObject): Boolean
    var

        SerailReservationJsonToken: JsonToken;
        ReservationJsonArray: JsonArray;
        UpdateReservationJsonObject: JsonObject;
        SalesOrderVal: Code[20];
        LineNoVal: Integer;
        LocationCodeVal: Code[10];
        ItemNoVal: Code[20];
        SerailNoVal: Code[50];
        PreSerailNoVal: Code[50];
    begin
        if SerailReservationJsonObject.Get('SerialNosArray', SerailReservationJsonToken) then begin
            ReservationJsonArray := SerailReservationJsonToken.AsArray();
            foreach SerailReservationJsonToken in ReservationJsonArray do begin
                UpdateReservationJsonObject := SerailReservationJsonToken.AsObject();
                Clear(SalesOrderVal);
                Clear(LineNoVal);
                Clear(LocationCodeVal);
                Clear(ItemNoVal);
                Clear(SerailNoVal);
                Clear(PreSerailNoVal);
                SalesOrderVal := GetJsonToken(UpdateReservationJsonObject, 'SalesOrder').AsValue().AsCode();
                LineNoVal := GetJsonToken(UpdateReservationJsonObject, 'LineNo.').AsValue().AsInteger();
                LocationCodeVal := GetJsonToken(UpdateReservationJsonObject, 'LocationCode').AsValue().AsCode();
                ItemNoVal := GetJsonToken(UpdateReservationJsonObject, 'ItemNo.').AsValue().AsCode();
                SerailNoVal := GetJsonToken(UpdateReservationJsonObject, 'SerialNo').AsValue().AsCode();
                PreSerailNoVal := GetJsonToken(UpdateReservationJsonObject, 'PreSerialNo').AsValue().AsCode();
                DeleteReservationEntry(SalesOrderVal, LineNoVal, LocationCodeVal, ItemNoVal, SerailNoVal, PreSerailNoVal);
                CreateReservEntrySalesOrderLine(SalesOrderVal, LineNoVal, LocationCodeVal, ItemNoVal, SerailNoVal, PreSerailNoVal);
            end;
        end;
    end;

    local procedure DeleteReservationEntry(SalesOrder: Code[20]; LineNo: Integer; LocationCode: Code[10]; ItemNo: Code[20]; SerailNo: Code[50]; PreSerailNo: Code[50])
    var
        DelReservEntry: Record "Reservation Entry";
    begin
        DelReservEntry.Reset();
        DelReservEntry.SetRange("Source Type", Database::"Sales Line");
        DelReservEntry.SetRange("Source ID", SalesOrder);
        DelReservEntry.SetRange("Source Ref. No.", LineNo);
        DelReservEntry.SetRange("Item No.", ItemNo);
        DelReservEntry.SetRange("Location Code", LocationCode);
        if PreSerailNo <> '' then
            DelReservEntry.SetRange("Serial No.", PreSerailNo);
        if not DelReservEntry.IsEmpty then
            DelReservEntry.DeleteAll();

    end;

    local procedure CreateReservEntrySalesOrderLine(SalesOrder: Code[20]; LineNo: Integer; LocationCode: Code[10]; ItemNo: Code[20]; SerailNo: Code[50]; PreSerailNo: Code[50])
    var
        SalesLine: Record "Sales Line";
        TempReservEntry: Record "Reservation Entry" temporary;
        CreateReservEntry: Codeunit "Create Reserv. Entry";
        ReservStatus: Enum "Reservation Status";

    begin
        if SalesLine.Get(SalesLine."Document Type"::Order, SalesOrder, LineNo) then begin
            TempReservEntry.Init();
            TempReservEntry."Entry No." := 0;
            TempReservEntry."Serial No." := SerailNo;
            TempReservEntry."Source ID" := SalesLine."Document No.";
            TempReservEntry.Quantity := 1;
            TempReservEntry.Insert();
            CreateReservEntry.SetDates(0D, TempReservEntry."Expiration Date");
            CreateReservEntry.CreateReservEntryFor(Database::"Sales Line", 1, SalesOrder, '', 0, SalesLine."Line No.", SalesLine."Qty. per Unit of Measure", TempReservEntry.Quantity, TempReservEntry.Quantity * SalesLine."Qty. per Unit of Measure", TempReservEntry);
            CreateReservEntry.CreateEntry(SalesLine."No.", SalesLine."Variant Code", SalesLine."Location Code", SalesLine.Description, 0D, Today, 0, Enum::"Reservation Status"::Surplus);
            ResponseSerial := true;
        end;

    end;

    local procedure GetJsonToken(JsonObject: JsonObject; TokenKey: Text) JsonToken: JsonToken;

    begin
        if not JsonObject.Get(TokenKey, JsonToken) then
            Error('Could not find a token with key %1', TokenKey);
    end;
    // Mapple NG 28032023 END - Added for Sales Order API

    procedure Hello(): Text
    begin
        exit('Hi');
    end;

    var
        ResponseSerial: Boolean;
}