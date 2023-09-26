pageextension 50003 "Item List" extends "Item List"
{
    layout
    {
        addafter("No.")
        {
            field("Old Item No"; "Old Item No")
            {
                ApplicationArea = All;
            }

            field("Ingram Part Code"; "Ingram Part Code")
            {
                ApplicationArea = All;
            }
            field("Vendor Part Code Long"; "Vendor Part Code Long")
            {
                Caption = 'Vendor Part Code';
                ApplicationArea = All;
            }

            field("Primary category"; "Primary category")
            {
                ApplicationArea = All;
            }
            field("Secondary category"; "Secondary category")
            {
                ApplicationArea = All;
            }
            field("Third category"; "Third category")
            {
                ApplicationArea = All;
            }
            field("HSN/SAC Code"; "HSN/SAC Code")
            {
                ApplicationArea = All;
            }
            field("GST Group Code"; "GST Group Code")
            {
                ApplicationArea = All;
            }
        }
        addafter("Costing Method")
        {
            field(Grade; Grade)
            {
                ApplicationArea = All;
            }
            field("Tax Group Code"; "Tax Group Code")
            {
                ApplicationArea = All;
            }

        }
        modify(InventoryField)
        {
            Visible = false;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin

            end;
        }

    }

    actions
    {
        addafter("E&ntries")
        {
            action(TEST)
            {
                APPLICATIONAREA = ALL;
                PROMOTED = true;
                Visible = false;
                trigger OnAction()
                var
                    TT: Record "Posting No. Series";
                BEGIN
                    TT.Reset();
                    TT.DeleteAll();
                    Message('Done');
                END;
            }
        }
    }

    var
        myInt: Integer;
}