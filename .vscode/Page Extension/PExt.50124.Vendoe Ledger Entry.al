pageextension 50124 "Vendor Ledger Entries" extends "Vendor Ledger Entries"
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
            field("ExternalDocument No."; "External Document No.")
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
        addafter("Document No.")
        {
            field("Total TDS Including SHE CESS"; "Total TDS Including SHE CESS")
            {
                ApplicationArea = all;
            }
            field("TDS SectionCode"; "TDS Section Code")
            {
                ApplicationArea = all;
            }
            field("UserID"; "User ID")
            {
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