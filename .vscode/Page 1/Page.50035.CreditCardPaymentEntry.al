page 50035 "Credit Card Payment Entry"
{
    AutoSplitKey = true;
    PageType = Card;
    SourceTable = 50007;
    SourceTableView = WHERE(TransType = CONST(CreditCard));

    layout
    {
        area(content)
        {
            group(Group1)
            {
                field("Dinomination Date"; "Dinomination Date")
                {
                    Caption = 'Date';
                    ApplicationArea = All;
                }
                field(DenominationNo; DenominationNo)
                {
                    Caption = 'Document No.';
                    ApplicationArea = All;
                }
                field(Branch; Branch)
                {
                    ApplicationArea = All;
                }
                field("Credit CD Bank AC"; "Credit CD Bank AC")
                {
                    Visible = true;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        /*
                        IF "Credit CD Bank AC" <> '' THEN BEGIN
                         GLAc.RESET;
                         GLAc.SETFILTER("No.",'%1',"Credit CD Bank AC");
                         GLAc.SETFILTER(GLAc."Global Dimension 1 Filter",Branch);
                         GLAc.SETFILTER("Date Filter",'%1',CALCDATE('-1D',"Dinomination Date"));
                         GLAc.FINDFIRST;
                         GLAc.CALCFIELDS("Balance at Date");
                         PreBalance := GLAc."Balance at Date";

                         GLAc.RESET;
                         GLAc.SETFILTER("No.",'%1',"Credit CD Bank AC");
                         GLAc.SETFILTER(GLAc."Global Dimension 1 Filter",Branch);
                         GLAc.SETFILTER("Date Filter",'%1',"Dinomination Date");
                         GLAc.FINDFIRST;
                         GLAc.CALCFIELDS("Net Change");
                         "Closing Balance" :=  PreBalance + GLAc."Net Change";
                        END;
                         */

                    end;
                }
                field(TotalCreditAmt; TotalCreditAmt)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Closing Balance"; "Closing Balance")
                {
                    Editable = false;
                    Visible = true;
                    ApplicationArea = All;
                }
                field(Remarks; Remarks)
                {
                    ApplicationArea = All;
                }
            }
            repeater(Repeater)
            {
                field(LineNo; LineNo)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Machine Name"; "Machine Name")
                {
                    Editable = true;
                    Lookup = true;
                    LookupPageID = "Standard Text Codes";
                    TableRelation = "Standard Text"."Credit Cd Machine Code" WHERE("Credit Card Machine" = CONST(true),
                                                                                    "TID" = CONST(false));
                    ApplicationArea = All;
                }
                field("TID No"; "TID No")
                {
                    TableRelation = "Standard Text"."TID NO" WHERE("TID" = CONST(true));
                    ApplicationArea = All;
                }
                field(CreditCardAmt; CreditCardAmt)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        //WBU.RefreshPage();//tk
                    end;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action(Post)
            {
                Image = Post;
                Promoted = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    GenLedgerSetup: Record 98;
                begin
                    IF NOT "Document Posted" THEN BEGIN
                        TESTFIELD("Credit CD Bank AC");
                        IF TotalCreditAmt <> "Closing Balance" THEN
                            ERROR('Total Amount %1 is not matching with Closing Balance %2', TotalCreditAmt, "Closing Balance")
                        ELSE BEGIN
                            DenominationEntryLocal.RESET;
                            DenominationEntryLocal.SETFILTER(DenominationNo, '%1', DenominationNo);
                            IF DenominationEntryLocal.FINDFIRST THEN BEGIN
                                REPEAT
                                    DenominationEntryLocal."Document Posted" := TRUE;
                                    DenominationEntryLocal.MODIFY;
                                UNTIL DenominationEntryLocal.NEXT = 0
                            END;
                            MESSAGE('Document Posted Successfully');
                            CurrPage.CLOSE;

                        END;

                        /*
                         GLAc.RESET;
                         GLAc.SETFILTER("No.",'%1',"Credit CD Bank AC");
                         GLAc.SETFILTER(GLAc."Global Dimension 1 Filter",Branch);
                         GLAc.SETFILTER("Date Filter",'%1',CALCDATE('-1D',"Dinomination Date"));
                         GLAc.FINDFIRST;
                         GLAc.CALCFIELDS("Balance at Date");
                         "Closing Balance" := GLAc."Balance at Date";

                         GLAc.RESET;
                         GLAc.SETFILTER("No.",'%1',"Credit CD Bank AC");
                         GLAc.SETFILTER(GLAc."Global Dimension 1 Filter",Branch);
                         GLAc.SETFILTER("Date Filter",'%1',"Dinomination Date");
                         GLAc.FINDFIRST;
                         GLAc.CALCFIELDS("Net Change");

                        IF TotalCreditAmt <> ("Closing Balance" + GLAc."Net Change")  THEN
                          ERROR('Total Amount %1 is not matching with Closing Balance %2',TotalCreditAmt,("Closing Balance" + GLAc."Net Change"))
                        ELSE BEGIN
                          "Document Posted" := TRUE;
                          MESSAGE('Document Posted Successfully');
                          CurrPage.CLOSE;
                        END;
                        */
                    END;



                end;
            }
        }
    }

    trigger OnInit()
    begin
        TransType := TransType::CreditCard;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Editpage := TRUE;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        //EntryNo := GetEntryNo;
        //MESSAGE('New');
        TransType := TransType::CreditCard;
        IF Editpage THEN BEGIN
            DenominationNo := xRec.DenominationNo;
            Branch := xRec.Branch;
            "Dinomination Date" := xRec."Dinomination Date";
            "Credit CD Bank AC" := xRec."Credit CD Bank AC";
            "Closing Balance" := xRec."Closing Balance";
            Remarks := xRec.Remarks;
        END;
    end;

    trigger OnOpenPage()
    begin
        IF DenominationNo <> '' THEN BEGIN
            Editpage := TRUE;
            RESET;
            SETFILTER(TransType, '%1', TransType::CreditCard);
            SETFILTER(DenominationNo, '%1', DenominationNo);
            CurrPage.EDITABLE := NOT "Document Posted";
        END
        ELSE BEGIN
            Editpage := FALSE;
            GLSetup.GET;
            GLSetup.TESTFIELD(GLSetup."Daily Currency Nos");
            NoSeriesMgt.InitSeries(GLSetup."Daily Currency Nos", xRec."No. Series", WORKDATE, DenominationNo, "No. Series");
            SETFILTER(TransType, '%1', TransType::CreditCard);
            SETFILTER(DenominationNo, '%1', DenominationNo);
        END;
        /*
        SETFILTER(TransType,'%1',TransType::CreditCard);
        SETFILTER(Branch,'%1',BranchLocal);
        SETFILTER("Dinomination Date",'=%1',EntryDate);
        SETFILTER("Date Filter",'%1',EntryDate);
        */

    end;

    var
        TotalAmount: Decimal;
        EntryDate: Date;
        BranchLocal: Code[20];
        // WBU: Codeunit 50000;//tk
        MachineNameRec: Record 7;
        DenominationEntryLocal: Record 50007;
        UserSetup: Record 91;
        BranchEditable: Boolean;
        GLAc: Record 15;
        Editpage: Boolean;
        PreBalance: Decimal;
        [InDataSet]
        CreditCDAc: Code[20];
        ClosingBalance: Decimal;
        PaymentMethod: Record 289;
        GLSetup: Record 98;
        NoSeriesMgt: Codeunit NoSeriesManagement;


    procedure UpdateBalance(DenoNo: Code[20]; ClosingAmt: Decimal)
    var
        DenoEntry: Record 50007;
    begin
        // DenoEntry.SETFILTER(TransType, '%1', TransType::CreditCard);//tk
        DenoEntry.SETFILTER(DenominationNo, '%1', DenoNo);
        IF DenoEntry.FINDFIRST THEN BEGIN
            REPEAT
                DenoEntry."Credit CD Bank AC" := CreditCDAc;
                DenoEntry."Closing Balance" := ClosingAmt;
            UNTIL DenoEntry.NEXT = 0;
        END;
        CurrPage.UPDATE;
        //WBU.RefreshPage();//tk
    end;
}

