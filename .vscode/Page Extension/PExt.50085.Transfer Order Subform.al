pageextension 50085 "Transfer Order Subform" extends "Transfer Order Subform"
{
    layout

    {
        addbefore("Shipping Agent Code")
        {

            field("UPN Code"; rec."UPN Code")
            {
                ApplicationArea = all;
                Style = Strong;
                StyleExpr = TRUE;
            }
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
            field("Quantity Transfered"; "Quantity Transfered")
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