pageextension 50138 "Item Ledger Entries" extends "Item Ledger Entries"
{
    layout
    {
        addafter("Serial No.")
        {
            field("MRP Value"; "MRP Value")
            {
                ApplicationArea = all;

            }
            field("UPN Code"; Rec."UPN Code")
            {
                ApplicationArea = all;

            }
            field("IMEI No."; "IMEI No.")
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