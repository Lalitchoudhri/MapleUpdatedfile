page 50171 "Product Groups"
{
    Caption = 'Product Groups';
    DataCaptionFields = "Item Category Code";
    PageType = List;
    SourceTable = 50071;
    UsageCategory = Lists;
    ApplicationArea = all;


    layout
    {
        area(content)
        {
            repeater(Repeater)
            {
                field("Item Category Code"; "Item Category Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field("Warehouse Class Code"; "Warehouse Class Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            systempart(Links; Links)
            {
                Visible = false;
                ApplicationArea = All;
            }
            systempart(Notes; Notes)
            {
                Visible = false;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}

