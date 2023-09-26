pageextension 50004 "Item Card" extends "Item Card"
{
    layout
    {
        addafter("No.")
        {
            field("Vendor Part Code Long"; "Vendor Part Code Long")
            {
                Caption = 'Vendor Part Code';
                ApplicationArea = all;
            }

            field(SKU1; SKU1)
            {
                Caption = 'SKU';
                ApplicationArea = all;
            }


            field("Ingram Part Code"; "Ingram Part Code")
            {
                ApplicationArea = all;
            }

            field("Assembly BOM"; "Assembly BOM")
            {
                Visible = false;
                ApplicationArea = all;
            }

            field("Lond Description"; "Lond Description")
            {
                Caption = 'Long Description';
                ApplicationArea = all;
            }
        }
        addafter(PreventNegInventoryDefaultYes)
        {
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
            field(Grade; Grade)
            {
                ApplicationArea = all;
            }
            field("Purchase Block"; "Purchase Block")
            {
                ApplicationArea = all;
            }
            field("Sales Block"; "Sales Block")
            {
                ApplicationArea = all;
            }
            field("Sales Points"; "Sales Points")
            {
                ApplicationArea = all;
            }
            field(Status; Status)
            {
                ApplicationArea = all;
            }
            field("Ecommerce Item"; "Ecommerce Item")
            {
                ApplicationArea = all;
            }


        }
        addafter("Item Category Code")
        {
            field("Product Category"; Rec."Product Category")
            {
                Caption = 'Category';
                ApplicationArea = all;
                Visible = true;

            }
        }
        addafter("Serial Nos.")
        {
            field("Last No. Used"; Rec."Last No. Used")
            {
                ApplicationArea = all;
            }
        }
        modify("Item Category Code")
        {
            Caption = 'Brand';
        }

    }

    actions
    {
        addafter(Identifiers)
        {
            action("ECC No./Item Categories")
            {
                Caption = 'ECC No./Item Categories';
                ApplicationArea = All;
                //RunObject = Page "ECC No./Item Categories";
                //RunPageLink = "Item No."=FIELD("No.");
            }
        }
        addafter("BOM Level")
        {
            action(Timeline)
            {
                Caption = 'Timeline';
                Image = Timeline;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ShowTimelineFromItem(Rec);
                end;
            }
        }

        addbefore("Prepa&yment Percentages")
        {
            action(Prices)
            {
                Caption = 'Prices';
                Image = Price;
                RunObject = Page 7012;
                RunPageLink = "Item No." = FIELD("No.");
                RunPageView = SORTING("Item No.");
                ApplicationArea = All;
            }
            action("Line Discounts")
            {
                Caption = 'Line Discounts';
                Image = LineDiscount;
                RunObject = Page 7014;
                RunPageLink = "Item No." = FIELD("No.");
                ApplicationArea = All;
            }
        }
        addafter("Return Orders")
        {
            action("Nonstoc&k Items")
            {
                Caption = 'Nonstoc&k Items';
                Image = NonStockItem;
                RunObject = Page 5726;
                ApplicationArea = All;
            }
        }
    }

    var
        myInt: Integer;
}