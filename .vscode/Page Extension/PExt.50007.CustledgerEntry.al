pageextension 50007 "Customer Ledger Entries" extends "Customer Ledger Entries"
{
    layout
    {
        addafter(Description)
        {
            field("DebitAmount"; "Debit Amount")
            {
                ApplicationArea = all;
            }
            field("CreditAmount"; "Credit Amount")
            {
                ApplicationArea = all;
            }
            field(Narration; Narration)
            {
                Editable = false;
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}