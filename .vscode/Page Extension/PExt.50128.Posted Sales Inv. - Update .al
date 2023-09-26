pageextension 50128 "Posted Sales Inv. - Update " extends "Posted Sales Inv. - Update"
{
    layout
    {
        addafter("Posting Date")
        {
            field("Vehicle No."; "Vehicle No.")
            {
                Visible = false;
                ApplicationArea = all;
                Editable = true;
            }
            field("Mode of Transport"; "Mode of Transport")
            {
                Description = '1:Road,2:Air,3:Ship';
                AboutText = '1:Road,2:Air,3:Ship';
                ApplicationArea = all;
                Editable = true;
                Visible = false;
            }
            field("Vehicle Type"; "Vehicle Type")
            {
                ApplicationArea = all;
                Editable = true;
                Visible = false;
            }
            field("Cancel Remark"; "Cancel Remark")
            {
                ApplicationArea = all;
                Editable = true;
                Visible = false;
            }
            field("Cancel Reason"; "Cancel Reason")
            {
                ApplicationArea = all;
                Editable = true;
                Visible = false;


            }
            field("Cancel Reason Code"; "Cancel Reason Code")
            {
                ApplicationArea = all;
                Editable = true;
                //Visible = false;
                Caption = 'E-invoice Cancel Reason';
            }
            field("E-Invoice Cancel Remark"; "E-Invoice Cancel Remark")
            {
                ApplicationArea = all;
                Editable = true;
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

pageextension 50140 "Posted Sales Cr.UpdateExtn" extends "Pstd. Sales Cr. Memo - Update"
{
    layout
    {
        // Add changes to page layout here
        addafter("Posting Date")
        {
            field("E-Invoice Cancel Remark"; "E-Invoice Cancel Remark")
            {
                ApplicationArea = all;
                Editable = true;
            }
            field("E-Invoice Reason Code"; "E-Invoice Reason Code")
            {
                ApplicationArea = All;
                Editable = true;
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