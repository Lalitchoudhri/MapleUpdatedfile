pageextension 50042 "Posted Sales Credit Memos" extends "Posted Sales Credit Memos"
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