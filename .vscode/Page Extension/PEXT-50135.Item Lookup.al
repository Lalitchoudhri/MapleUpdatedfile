pageextension 50135 "Item Lookup" extends "Item Lookup"
{
    layout
    {

        modify(InventoryCtrl)
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
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}