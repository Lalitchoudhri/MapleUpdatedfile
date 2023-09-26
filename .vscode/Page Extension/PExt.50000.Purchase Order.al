pageextension 50000 "PurchaseOrder" extends "Purchase Order"
{


    layout
    {

        addbefore("Purchaser Code")
        {

            field("Vendor Invoice Date"; "Vendor Invoice Date")
            {
                ApplicationArea = all;
            }
            field("Import Document No."; "Import Document No.")
            {
                ApplicationArea = all;
            }

        }
        addafter("Purchaser Code")
        {

            field("Vendor Invoice Value"; "Vendor Invoice Value")
            {
                ApplicationArea = all;
            }
            field("PO Validity Date"; "PO Validity Date")
            {
                ApplicationArea = all;
            }
            field("Closing Remark"; "Closing Remark")
            {
                ApplicationArea = all;
            }
            field(Closed; Closed)
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("Remarks Team"; "Remarks Team")
            {
                ApplicationArea = all;
            }
            field("Remarks Vendor"; "Remarks Vendor")
            {
                ApplicationArea = all;
            }
            field("CIN Number"; recComp."CIN no")
            {
                ApplicationArea = all;
            }
            field("Ingram Order No."; "Ingram Order No.")
            {
                Editable = true;
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        addafter("Co&mments")
        {
            action("Send mail to Vendor")
            {
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    IF (Status <> Status::Released) THEN
                        ERROR('Purchase order is not Approved');
                    WBU.SendMailtoVendorwithAttachment(Rec);//tk
                end;
            }
            action(UploadSerialNo)
            {
                Caption = 'Upload Serial No.';
                Image = ImportCodes;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    XMLPORT.RUN(XMLPORT::"Upload Serial No.", FALSE, TRUE); //KPPL-INGRAM
                end;
            }
        }
        addbefore(Documents)
        {
            group(Closing)
            {
                action("Close Purchase Order")
                {
                    Ellipsis = true;
                    Image = Close;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        PurchLine: Record 39;
                        UserSetup: Record 91;
                    begin
                        UserSetup.GET(USERID);
                        IF NOT UserSetup."Close PO" THEN
                            EXIT;

                        PurchLine.RESET;
                        PurchLine.SETRANGE("Document Type", "Document Type");
                        PurchLine.SETRANGE(PurchLine."Document No.", "No.");
                        IF PurchLine.FINDSET THEN BEGIN
                            REPEAT
                                IF PurchLine."Qty. Rcd. Not Invoiced" <> 0 THEN
                                    ERROR('You can not close the Purchase Order, Received Quantity & Invoiced Quantity are not matching for Item %1', PurchLine."No.");
                            UNTIL PurchLine.NEXT = 0;
                        END;
                        IF "Closing Remark" = '' THEN
                            ERROR('Closing Remark should not be blank')
                        ELSE BEGIN
                            PurchLine.RESET;
                            PurchLine.SETRANGE(PurchLine."Document Type", "Document Type");
                            PurchLine.SETRANGE(PurchLine."Document No.", "No.");
                            IF PurchLine.FINDSET THEN BEGIN
                                REPEAT
                                    PurchLine.Quantity := PurchLine."Quantity Received";
                                    PurchLine.MODIFY;
                                UNTIL PurchLine.NEXT = 0;
                            END;

                            Closed := TRUE;
                            "Closed By" := USERID;
                            "Closed Date & Time" := CURRENTDATETIME;
                        END;
                        //Win 127
                        CurrPage.CLOSE;
                    end;
                }

            }

        }

        addbefore(Post)
        {
            action("Serial Details")
            {
                Caption = 'Serial Details';
                Ellipsis = true;
                Image = "Report";
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ShortCutKey = 'F9';
                ApplicationArea = All;

                trigger OnAction()
                var
                    PurchasePostViaJobQueue: Codeunit 98;
                    PurchLine: Record 39;
                begin
                    // CLEAR(PODetails);
                    // RecpurcLine12.RESET;
                    // RecpurcLine12.SETFILTER(RecpurcLine12."No.", "No.");
                    // IF RecpurcLine12.FINDFIRST THEN BEGIN
                    //     PODetails.SETTABLEVIEW(RecpurcLine12);
                    //     PODetails.RUNMODAL;
                    //END;
                    //Try now
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        //SetDocNoVisible;//tk

        IF UserMgt.GetPurchasesFilter <> '' THEN BEGIN
            FILTERGROUP(2);
            SETRANGE("Responsibility Center", UserMgt.GetPurchasesFilter);
            FILTERGROUP(0);
            SETFILTER("Location Code", "Location Code");
        END;
        recComp.GET; //win344
    end;

    var

        PurchSetup: Record 312;
        ChangeExchangeRate: Page 511;
        CopyPurchDoc: Report 492;
        MoveNegPurchLines: Report 6698;
        ReportPrint: Codeunit 228;
        //DocPrint: Codeunit 229;
        UserMgt: Codeunit 5700;
        ArchiveManagement: Codeunit 5063;
        PurchCalcDiscByType: Codeunit 66;
        PurchLine: Record 39;

        myInt: Integer;
        ReservEntry: record 337;

        BillAmtCalc: Decimal;
        PurchLineRec11: Record 39;
        DiffAmt: Decimal;
        TrackingSpecification: Record 336;
        ItemTackingLine: Page 6510;
        //PODetails: Report 50030;

        CreateReservEntry: Codeunit 99000830;

        ReservePurchLine: Codeunit 99000834;
        RecpurcLine12: Record 38;
        // PODetails: Report 50030;//tk
        recComp: Record 79;
        RecPH: Record 38;
        WBU: codeunit 50000;



    local procedure Post(PostingCodeunitID: Integer)
    begin
        SendToPosting(PostingCodeunitID);
        IF "Job Queue Status" = "Job Queue Status"::"Scheduled for Posting" THEN
            CurrPage.CLOSE;
        CurrPage.UPDATE(FALSE);
    end;

    local procedure BuyfromVendorNoOnAfterValidate()
    begin
        IF GETFILTER("Buy-from Vendor No.") = xRec."Buy-from Vendor No." THEN
            IF "Buy-from Vendor No." <> xRec."Buy-from Vendor No." THEN
                SETRANGE("Buy-from Vendor No.");
        CurrPage.UPDATE;
    end;



    local procedure PaytoVendorNoOnAfterValidate()
    begin
        CurrPage.UPDATE;
    end;

    procedure UpdateSerialNo(PurchLine: Record 39)
    begin
        //ReservEntry.INIT;
        //ReservEntry."Source Type" := DATABASE::"Purchase Line";
        WITH PurchLine DO BEGIN
            /*
            ReservEntry.INIT;
            ReservEntry."Item No." := "No.";
            ReservEntry."Location Code" := "Location Code";
            ReservEntry.Description := Description;
            ReservEntry."Variant Code" := "Variant Code";
            ReservEntry."Source Subtype" := "Document Type";
            ReservEntry."Source ID" := "Document No.";
            ReservEntry."Source Batch Name" := '';
            ReservEntry."Source Prod. Order Line" := 0;
            ReservEntry."Source Ref. No." := "Line No.";
            ReservEntry."Quantity (Base)" := "Quantity (Base)";
            ReservEntry."Qty. to Invoice (Base)" := "Qty. to Invoice (Base)";
            ReservEntry."Qty. to Handle (Base)" := "Quantity (Base)";
            ReservEntry."Quantity Invoiced (Base)" := "Qty. Invoiced (Base)";
            ReservEntry."Qty. per Unit of Measure" := "Qty. per Unit of Measure";
            ReservEntry."Serial No." := PurchLine."Item Serial No";
            ReservEntry.Positive := TRUE;
            ReservEntry.INSERT;
            */
            //Tk++
            // CreateReservEntry.CreateReservEntryFor(
            //   DATABASE::"Purchase Line", "Document Type", "Document No.", '', 0, "Line No.", "Qty. per Unit of Measure", 0, "Quantity (Base)", "Item Serial No", '');

            // CreateReservEntry.CreateEntry("No.", "Variant Code", "Location Code", Description, "Expected Receipt Date", 0D, 0, ReservEntry."Reservation Status"::Surplus);
            //Tk--
        END;

    end;

    procedure DeletePurchSpecification(PurchHeader: Record 38)
    begin
        //win344++
        //ItemTrackingForm.SetSource(ReservEntry,PurchLine."Expected Receipt Date");
        //ItemTrackingForm.SetInbound(PurchLine.IsInbound);
        //ItemTrackingForm.RUNMODAL;
        /*
        ReservEntry.SETCURRENTKEY("Source ID","Source Type",
          "Source Subtype","Source Batch Name","Source Prod. Order Line","Source Ref. No.");
        ReservEntry.SETRANGE("Source ID",PurchHeader."No.");
        ReservEntry.SETRANGE("Source Type",DATABASE::"Purchase Line");
        ReservEntry.SETRANGE("Source Subtype",PurchHeader."Document Type");
        ReservEntry.SETRANGE("Source Batch Name",'');
        ReservEntry.SETRANGE("Source Prod. Order Line",0);
        //ReservEntry.SETRANGE("Source Ref. No.",PurchLine."Line No.");
        IF ReservEntry.FINDSET THEN
          REPEAT
            ReservEntry.DELETE;
          UNTIL ReservEntry.NEXT = 0;
         */
        ReservEntry.SETCURRENTKEY(
          "Source ID", "Source Ref. No.", "Source Type", "Source Subtype",
          "Source Batch Name", "Source Prod. Order Line", "Reservation Status",
          "Shipment Date", "Expected Receipt Date");
        ReservEntry.SETRANGE("Source ID", PurchHeader."No.");
        //ReservEntry.SETRANGE("Source Ref. No.",ReservEntry."Source Ref. No.");
        ReservEntry.SETRANGE("Source Type", DATABASE::"Purchase Line");
        ReservEntry.SETRANGE("Source Subtype", PurchHeader."Document Type");
        ReservEntry.SETRANGE("Source Batch Name", '');
        ReservEntry.SETRANGE("Source Prod. Order Line", 0);
        IF ReservEntry.FINDSET THEN
            REPEAT
                ReservEntry.DELETE;
            UNTIL ReservEntry.NEXT = 0;
        //win344--

    end;

    procedure ReservEntryExistPurchLine(PurchLine: Record 39): Boolean
    var
        NewReservEntry: Record 337;
    begin
        ReservEntry.RESET;
        ReservEntry.SETRANGE("Source ID", PurchLine."Document No.");
        ReservEntry.SETRANGE("Source Ref. No.", PurchLine."Line No.");
        ReservEntry.SETRANGE("Source Type", DATABASE::"Purchase Line");
        ReservEntry.SETRANGE("Source Subtype", PurchLine."Document Type");
        ReservEntry.SETRANGE("Source Batch Name", '');
        ReservEntry.SETRANGE("Source Prod. Order Line", 0);
        EXIT(ReservEntry.FINDSET);
    end;

}