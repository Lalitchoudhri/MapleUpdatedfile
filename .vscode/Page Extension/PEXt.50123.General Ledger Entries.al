pageextension 50123 "General Ledger Entries" extends "General Ledger Entries"
{
    layout
    {
        addafter(Description)
        {
            field(Narration; Narration)
            {
                Editable = false;
                ApplicationArea = all;
            }
        }
        addafter("Bal. Account No.")
        {
            field("Bal Account Name"; "Bal Account Name")
            {
                ApplicationArea = all;
            }
        }
        addafter("G/L Account No.")
        {
            field("G/LAccount Name"; "G/L Account Name")
            {
                ApplicationArea = all;
            }
        }
        addafter(Amount)
        {
            field("DebitAmount"; "Debit Amount")
            {
                ApplicationArea = all;
            }
            field("CreditAmount"; "Credit Amount")
            {
                ApplicationArea = all;
            }


        }
    }

    actions
    {
        addafter(GLDimensionOverview)
        {

        }
    }

    var
        myInt: Integer;
}