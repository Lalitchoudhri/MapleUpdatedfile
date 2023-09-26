pageextension 50122 "Company Information" extends "Company Information"
{
    layout
    {
        addafter("State Code")
        {
            field("VAT Effective Dt"; "VAT Effective Dt")
            {
                ApplicationArea = all;
            }
            field("CST Effective Dt"; "CST Effective Dt")
            {
                ApplicationArea = all;
            }
            field("CIN no"; "CIN no")
            {
                ApplicationArea = all;
            }
            field("Ward No"; "Ward No")
            {
                ApplicationArea = all;
                Caption = 'Ward No.';
            }
        }
        addafter("Allow Blank Payment Info.")
        {
            field("Bank Code"; "Bank Code")
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