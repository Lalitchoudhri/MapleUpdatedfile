pageextension 50033 "Sales Invoice Subform" extends "Sales Invoice Subform"
{
    layout
    {
        addafter("No.")
        {
            field(SKU1; SKU1)
            {
                ApplicationArea = all;
            }
            field("Eleva Product Serial No."; "Eleva Product Serial No.")
            {
                ApplicationArea = all;
                Editable = true;
            }
            field(Shield; Shield)
            {
                ApplicationArea = all;
            }
            field("shield Due Date"; "shield Due Date")
            {
                ApplicationArea = all;
            }
            field("Free Item"; "Free Item")
            {
                ApplicationArea = all;
            }
            field("Free Item Pend_for_ Delivery"; "Free Item Pend_for_ Delivery")
            {
                ApplicationArea = all;
            }
            field("Product Category"; "Product Category")
            {
                ApplicationArea = all;
            }
            field("Discount Type"; "Discount Type")
            {
                ApplicationArea = all;
            }
            field("Discount %"; "Discount %")
            {
                ApplicationArea = all;
            }
            field("Discount Amount"; "Discount Amount")
            {
                ApplicationArea = all;
            }
            field("Net Amount"; "Net Amount")
            {
                ApplicationArea = all;
            }
            field("Shield Value"; "Shield Value")
            {
                ApplicationArea = all;
            }
            field("Shield Cost"; "Shield Cost")
            {
                ApplicationArea = all;
            }
            field("Primary category"; "Primary category")
            {
                ApplicationArea = all;

            }
            field("Secondary category"; "Secondary category")
            {
                ApplicationArea = all;
            }
            field("Third category"; "Third category")
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