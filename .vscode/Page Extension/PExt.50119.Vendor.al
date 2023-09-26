pageextension 50119 Vendor extends "Vendor Card"
{
    layout
    {
        addafter(Transporter)
        {
            field("Branch Code"; "Global Dimension 1 Code")
            {
                ApplicationArea = all;
            }
            field("Apple Distributor"; "Apple Distributor")
            {
                ApplicationArea = all;
            }
            field("Scheme Provisional A/C"; "Scheme Provisional A/C")
            {
                ApplicationArea = all;
            }
            field(Status; Status)
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