pageextension 50045 "Posted Purchase Rcpt. Subform" extends "Posted Purchase Rcpt. Subform"
{
    layout
    {
        addafter("Job No.")
        {

            field("Primary category"; "Primary category")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("Secondary category"; "Secondary category")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("Third category"; "Third category")
            {
                Editable = false;
                ApplicationArea = all;

            }
        }
        addbefore("No.")
        {
            field("UPN Code"; "UPN Code")
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