pageextension 50043 "Posted Return Receipts" extends "Posted Return Receipts"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
        UserSetup: Record 91;
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
}