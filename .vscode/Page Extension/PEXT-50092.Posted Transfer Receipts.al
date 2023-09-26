pageextension 50092 "Posted Transfer Receipts" extends "Posted Transfer Receipts"
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
    begin
        UserSetup.GET(USERID);
        IF (UserSetup."Location Filter" <> '') AND (UserSetup."All Location Transfer" <> true) THEN BEGIN
            FILTERGROUP(2);
            SETRANGE("Transfer-to Code", UserSetup."Location Filter");
            FILTERGROUP(0);
        END;
    end;

    var
        myInt: Integer;
        UserSetup: Record 91;
}