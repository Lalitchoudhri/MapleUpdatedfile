pageextension 50024 "JournalVoucher" extends "Journal Voucher"
{
    layout
    {

        addafter(Amount)
        {
            field("DebitAmount"; Rec."Debit Amount")
            {
                ApplicationArea = all;
                Caption = 'Debit AMOUNT';
            }
            field("CreditAmount"; Rec."Credit Amount")
            {
                ApplicationArea = all;
                Caption = 'Creadit AMOUNT';
            }

        }
        addafter("External Document No.")
        {

            field("Narration."; Rec.Narration)
            {
                Editable = true;
                ApplicationArea = All;
            }
        }

        addafter(Description)
        {



        }
        modify("Debit Amount")
        {
            trigger OnAfterValidate()
            begin
                //Win317++//WIN345++
                IF ("Document Type" = "Document Type"::Payment) AND ("Debit Amount" < 0) THEN
                    ERROR('Amount Must Be Positve');
                //Win317--//WIN345--
            end;
        }
        modify("Credit Amount")
        {
            trigger OnAfterValidate()
            begin
                //Win317++//WIN345++
                IF ("Document Type" = "Document Type"::Payment) AND ("Credit Amount" < 0) THEN
                    ERROR('Amount Must Be Positve');
                //Win317--//WIN345--
            end;
        }
    }

    actions
    {

        modify(Post)
        {
            trigger OnAfterAction()
            var
                myInt: Integer;
            begin
                // To check voucher narration at the time of posting - WIN336//WIN345++
                RecNarration.RESET;
                RecNarration.SETFILTER(RecNarration."Document No.", '%1', "Document No.");
                IF RecNarration.FINDSET THEN BEGIN
                    REPEAT
                        IF RecNarration.Narration = '' THEN BEGIN
                            ERROR('Narration is empty');
                            EXIT;
                        END;
                    UNTIL RecNarration.NEXT = 0;
                END
                ELSE
                    ERROR('Narration not defined');
                //WIN336//WIN345--

            end;
        }
        modify(PostAndPrint)
        {
            trigger OnAfterAction()
            var
                myInt: Integer;
            begin
                // To check voucher narration at the time of posting - WIN336//WIN345++
                RecNarration.RESET;
                RecNarration.SETFILTER(RecNarration."Document No.", '%1', "Document No.");
                IF RecNarration.FINDSET THEN BEGIN
                    REPEAT
                        IF RecNarration.Narration = '' THEN BEGIN
                            ERROR('Narration is empty');
                            EXIT;
                        END;
                    UNTIL RecNarration.NEXT = 0;
                END
                ELSE
                    ERROR('Narration not defined');
                //WIN336//WIN345--
                CODEUNIT.RUN(CODEUNIT::"Gen. Jnl.-Post+Print", Rec);
                // CurrentJnlBatchName := GETRANGEMAX("Journal Batch Name");//tk
                CurrPage.UPDATE(FALSE);


            end;
        }
    }

    var
        myInt: Integer;
        Text001: Label 'Standard General Journal %1 has been successfully created.';
        TotalDebitAmount: Decimal;
        TotalCreditAmount: Decimal;
        ChangeExchangeRate: Page 511;
        GLReconcile: Page 345;
        GenJnlManagement: Codeunit 230;
        ReportPrint: Codeunit 228;
        RecNarration: Record "Gen. Journal Narration";
        ApprovalMgt: Codeunit "Approvals Mgmt.";
        OpenedFromBatch: Boolean;
        GenJnlLine: Record 81;

    local procedure UpdateBalance()
    begin
        // GenJnlManagement.CalcBalance(Rec,xRec,Balance,TotalBalance,ShowBalance,ShowTotalBalance);
        // BalanceVisible := ShowBalance;
        // TotalBalanceVisible := ShowTotalBalance;
    end;

    local procedure UpdateDebitCreditAmount()
    begin
        //GenJnlManagement.CalcTotDebitTotCreditAmount(Rec,TotalDebitAmount,TotalCreditAmount,FALSE);
    end;


    local procedure CurrentJnlBatchNameOnAfterVali()
    begin
        // CurrPage.SAVERECORD;
        // GenJnlManagement.SetName(CurrentJnlBatchName, Rec);
        // CurrPage.UPDATE(FALSE);
    end;

    local procedure AfterGetCurrentRecord()
    begin
        xRec := Rec;
        //GenJnlManagement.GetAccounts(Rec, AccName, BalAccName);//tk
        UpdateBalance;
        UpdateDebitCreditAmount;
    end;
}