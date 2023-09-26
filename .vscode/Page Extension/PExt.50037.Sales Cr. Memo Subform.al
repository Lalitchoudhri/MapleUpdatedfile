pageextension 50037 "Sales Cr. Memo Subform" extends "Sales Cr. Memo Subform"
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
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}