pageextension 50012 "Purchases & Payables Setup" extends "Purchases & Payables Setup"
{
    layout
    {
         modify("Allow Document Deletion Before")
        {
            Visible = false;
        }
        addafter("Default Qty. to Receive")
        {
            field("Buyback Vendor"; "Buyback Vendor")
            {
                ApplicationArea = all;

            }
            field("Maximum Invoice Diff. Allowed"; "Maximum Invoice Diff. Allowed")
            {

                ApplicationArea = all;
            }
            field("Sender Mail ID( Maple)"; "Sender Mail ID( Maple)")
            {
                ApplicationArea = all;
            }
            field("PDF Path"; "PDF Path")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {

    }

    var
        myInt: Integer;
}