codeunit 50046 "Inventory API"
{
    trigger OnRun()
    begin
    end;

    procedure ActualInventory1(itemNo: code[20]): Text
    BEGIN

        exit(itemNo);
    END;

    procedure ActualInventory(itemNo: code[20]): Text
    var
        Location: Record Location;
        Item: Record Item;
        SalesLine: Record "Sales Line";

        Inventory: Decimal;
        UnPostedInventory: Decimal;
        ActualInventory: Decimal;

        ResponseJsonObject: JsonObject;
        ResponseJsonObjectArray: JsonArray;
        SerialNoJsonObjectArray: JsonArray;
        ILE: Record "Item Ledger Entry";
        LoopCount: Integer;
        LOC: Code[10];
    BEGIN
        Clear(LOC);
        Location.Reset();
        IF Location.FindSet() THEN
            REPEAT
                Clear(Inventory);
                Clear(UnPostedInventory);
                Clear(ActualInventory);

                Item.Reset();
                Item.SetRange("No.", itemNo);
                Item.SetRange("Location Filter", Location.Code);
                IF Item.FindFirst() THEN BEGIN
                    Item.CalcFields(Inventory);
                    Inventory := Item.Inventory;
                    SalesLine.Reset();
                    SalesLine.SetRange(SalesLine."Location Code", Location.Code);
                    SalesLine.SetRange(SalesLine.Type, SalesLine.Type::Item);
                    SalesLine.SetRange(SalesLine."No.", Item."No.");
                    SalesLine.SetFilter(SalesLine."Qty. to Ship", '<>%1', 0);
                    IF SalesLine.FindSet() THEN
                        REPEAT
                            UnPostedInventory += SalesLine."Qty. to Ship";
                        UNTIL SalesLine.Next() = 0;

                    ActualInventory := Inventory - UnPostedInventory;
                    IF ActualInventory > 0 THEN BEGIN
                        Clear(ResponseJsonObject);
                        //>>Add Json
                        ResponseJsonObject.Add('StoreCode', Location.Code);
                        ResponseJsonObject.Add('StoreName', Location.Name);
                        ResponseJsonObject.Add('RemainingQuantity', ActualInventory);
                        ResponseJsonObject.Add('MaplePartCode', Item."No.");
                        ResponseJsonObject.Add('ItemDescritpion', Item.Description);

                        // IF LOC <> Location.Code THEN

                        BEGIN
                            ILE.Reset();
                            ILE.SetRange(ILE."Item No.", Item."No.");
                            ILE.SetRange(ILE."Location Code", Location.Code);
                            ILE.SetFilter(ILE."Remaining Quantity", '>%1', 0);
                            ILE.SETFILTER(ILE."Serial No.", '<>%1', '');
                            IF ILE.FindSet() THEN BEGIN
                                Clear(LoopCount);
                                Clear(SerialNoJsonObjectArray);
                                // LOC := Location.Code;
                                REPEAT

                                    IF SerialNoJsonObjectArray.Count < 10 THEN
                                        SerialNoJsonObjectArray.Add(ILE."Serial No.");

                                UNTIL ILE.Next() = 0;
                            END;
                            ResponseJsonObject.Add('SerialNo', SerialNoJsonObjectArray);
                        END;
                        //<<Add Json
                        ResponseJsonObjectArray.Add(ResponseJsonObject);
                    END;
                END;
            UNTIL Location.Next() = 0;
        exit(Format(ResponseJsonObjectArray));
    END;
}