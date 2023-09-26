page 50002 "Vendor PDC Entry Card"
{
    // +-----------------------------------------------------------------------------------------------------------------------+
    // | Consultant            Date       Code Mark    Issue Id          Description                                           |
    // +-----------------------------------------------------------------------------------------------------------------------+
    // | Mahesh Mukundan       26-AUG-11  001          WINSPIRE.01       Modified the objects.                                 |
    // +-----------------------------------------------------------------------------------------------------------------------+

    PageType = Card;
    SourceTable = 50002;
    SourceTableView = SORTING("Entry No.")
                      ORDER(Ascending)
                      WHERE("PDC Status" = CONST(Open),
                            "Sent to Bank" = CONST(false),
                            "Account Type" = CONST(Vendor));

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                }
                field("PDC Type"; "PDC Type")
                {
                    ApplicationArea = All;
                }
                field("Res Center"; "Res Center")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Account Type"; "Account Type")
                {
                    Editable = false;
                    OptionCaption = 'Customer,Vendor';
                    ApplicationArea = All;
                }
                field("Account No."; "Account No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("PDC Cheque No."; "PDC Cheque No.")
                {
                    ApplicationArea = All;
                }
                field("PDC Cheque Date"; "PDC Cheque Date")
                {
                    ApplicationArea = All;
                }
                field("<PD Received Date>"; "PDC Received Date")
                {
                    Caption = 'PDC Send Date';
                    ApplicationArea = All;
                }
                field("PDC Amount"; "PDC Amount")
                {
                    ApplicationArea = All;
                }
                field("MICR Code"; "MICR Code")
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; "Bank Name")
                {
                    ApplicationArea = All;
                }
                field("Bank Branch"; "Bank Branch")
                {
                    ApplicationArea = All;
                }
                field("Bank Deposit Code"; "Bank Deposit Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("PDC Deposit Date"; "PDC Deposit Date")
                {
                    ApplicationArea = All;
                }
                field("PDC Amount Applied"; "PDC Amount Applied")
                {
                    ApplicationArea = All;
                }
                field("PDC Deposited"; "PDC Deposited")
                {
                    ApplicationArea = All;
                }
                field("Sent to Bank"; "Sent to Bank")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            part(Part; 9082)
            {
                //SubPageLink = "No."=FIELD(Field6);//tk
                Visible = false;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("<Action59>")
            {
                Caption = 'F&unctions';
                action("<Action61>")
                {
                    Caption = 'Sent to Bank';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        PDCApplication: Record 50005;
                        DepositCheques: Record 50006;
                    begin
                        //TESTFIELD("PDC Type");
                        TESTFIELD("PDC Amount");
                        TESTFIELD("PDC Cheque Date");
                        //001 - Start
                        // TESTFIELD("MICR Code");
                        //001 - Stop
                        //TESTFIELD("Bank Deposit Code");
                        //TESTFIELD("Bank deposit date");
                        //TESTFIELD("Res Center");
                        TESTFIELD("Sent to Bank", FALSE);

                        AppAmount := 0;
                        recPDCApp.RESET;
                        recPDCApp.SETFILTER(recPDCApp."Entry No.", FORMAT("Entry No."));
                        IF recPDCApp.FINDFIRST THEN
                            REPEAT
                                recCLE.RESET;
                                //tk//recCLE.SETFILTER(recCLE."Document No.", recPDCApp."Remaining Amount");
                                IF recCLE.FINDFIRST THEN BEGIN
                                    recCLE.CALCFIELDS(recCLE."Remaining Amt. (LCY)");
                                    IF recCLE."Remaining Amt. (LCY)" < recPDCApp."Document Type1" THEN
                                        ERROR('Amount to apply is more than remaining amount for document no.:' + recCLE."Document No.");
                                END;
                            UNTIL recPDCApp.NEXT = 0;

                        PDCApplication.RESET;
                        //tk //PDCApplication.SETCURRENTKEY("Entry No.", "Cust Ledger Entry No.");
                        PDCApplication.SETRANGE("Entry No.", "Entry No.");
                        PDCApplication.CALCSUMS("Document Type1");

                        IF PDCApplication."Document Type1" > "PDC Amount" THEN
                            ERROR(Text0003, FIELDCAPTION("PDC Amount Applied"), PDCApplication."Document Type1",
                                           FIELDCAPTION("PDC Amount"), "PDC Amount");

                        IF CONFIRM(Text0001) THEN BEGIN
                            //  IF ("PDC Type" = "PDC Type"::"Fully Filled") AND ("Document No." = "Document No."::"0") THEN
                            IF ("PDC Type" = "PDC Type"::"Fully Filled") THEN
                                "Sent to Bank" := TRUE;
                            //"Bank deposit date" := WORKDATE;//TODAY; to be changed later
                            MODIFY;
                            //  DepositCheques.InsertDepositCheques("Entry No.");//tk
                            MESSAGE(Text0002);
                        END;
                    end;
                }
                action("<Action62>")
                {
                    Caption = 'Upload file to Server';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;
                }
                action("<Action63>")
                {
                    Caption = 'Open File';
                    Image = Statistics;
                    InFooterBar = true;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;
                }
                action("<Action64>")
                {
                    Caption = 'Apply';
                    Image = Statistics;
                    InFooterBar = true;
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortCutKey = 'F9';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        TESTFIELD("Account Type", "Account Type"::Vendor);
                        TESTFIELD("PDC Type", "PDC Type"::"Fully Filled");
                        TESTFIELD("PDC Status", "PDC Status"::Open);

                        TESTFIELD("PDC Cheque Date");
                        TESTFIELD("PDC Cheque No.");


                        //TESTFIELD("PDC Cheque Date");
                        //TESTFIELD("PDC Type");
                        //001 - Start
                        //TESTFIELD("MICR Code");
                        //001 - Stop
                        //IF NOT "Blank Check" THEN //WIN 121 12.02.13 12:00
                        //  TESTFIELD("PDC Amount");
                        TESTFIELD("Sent to Bank", FALSE);

                        FillBuffer;
                    end;
                }
                action("<Action65>")
                {
                    Caption = 'UnApply';
                    Image = Statistics;
                    InFooterBar = true;
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortCutKey = 'Shift+F9';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        DelAppln;
                        //IF "Blank Check" THEN
                        //  "PDC Amount" := 0;
                    end;
                }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Account Type" := "Account Type"::Vendor;
    end;

    trigger OnOpenPage()
    begin
        "Account Type" := "Account Type"::Vendor;
    end;

    var
        Text0001: Label 'Do you want to send the Cheque to Bank?';
        Text0002: Label 'Cheque has been sent to Bank';
        Text0003: Label '%1 = %2 is more than the %3 = %4.';
        recPDCApp: Record 50005;
        recCLE: Record 21;
        AppAmount: Decimal;
}

