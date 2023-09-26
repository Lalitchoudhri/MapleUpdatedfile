pageextension 50158 "Posted Sales Invoices" extends "Posted Sales Invoices"
{
    layout
    {
        addafter("No.")
        {
            field("Order ID"; Rec."Order ID")
            {
                ApplicationArea = all;
            }
            field("LocationCode"; "Location Code")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        UserSetup.GET(USERID);
        IF UserSetup."Location Code" <> '' THEN BEGIN
            FILTERGROUP(2);
            SETRANGE("Location Code", UserSetup."Location Code");
            FILTERGROUP(0);
        END;
    end;

    var
        myInt: Integer;
        UserSetup: Record 91;
}