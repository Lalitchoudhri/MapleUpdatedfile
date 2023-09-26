

pageextension 50032 "Sales Order Subform" extends "Sales Order Subform"
{
    layout
    {
        addafter("No.")
        {
            field(SKU1; SKU1)
            {
                ApplicationArea = all;
                Visible = true;
            }
            field("Eleva Product Serial No."; "Eleva Product Serial No.")
            {
                ApplicationArea = all;
                Editable = true;
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


            field("UPN Code"; "UPN Code")
            {
                ApplicationArea = all;
            }
            field("Salesperson Code"; "Salesperson Code")
            {
                ApplicationArea = all;
            }

            field("Purchase Order No."; "Purchase Order No.")
            {
                Visible = false;
                ApplicationArea = all;
            }
            field("Scheme Code"; "Scheme Code")
            {
                Editable = true;
                ApplicationArea = all;
            }
            field("Scheme %"; "Scheme %")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("Scheme Amount"; "Scheme Amount")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("MRP Discount %"; "MRP Discount %")
            {
                Caption = 'Maple Discount %';
                ApplicationArea = all;
            }
            field("MRP Discount Amount"; "MRP Discount Amount")
            {
                Caption = 'Maple Discount Amount';
                ApplicationArea = all;
            }
            field("Invoice Type"; "Invoice Type")
            {
                Visible = false;
                ApplicationArea = all;
            }

        }
        addafter("Document No.")
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
            field("Shield Type"; "Shield Type")
            {
                ApplicationArea = all;
            }
            field("Shield Value"; "Shield Value")
            {
                ApplicationArea = all;
            }
            field(Shield; Shield)
            {
                ApplicationArea = all;
                Editable = true;
            }
            field("Shield Cost"; "Shield Cost")
            {
                ApplicationArea = all;
                Editable = false;
            }

            field("MRP Value"; "MRP Value")
            {
                ApplicationArea = all;
            }
            field("Capillary Line Discount Amount"; "Capillary Line Discount Amount")
            {
                ApplicationArea = all;
                Editable = false;


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