codeunit 50042 "Open Retail Sales Order Delete"
{

    trigger OnRun()
    var
        SalesHeader: Record 36;
        Date1: Date;
        SalesLine: Record 37;
    begin
        Date1 := CALCDATE('<-1D>', TODAY);
        SalesHeader.SETRANGE("Posting Date", 0D, Date1);
        SalesHeader.SETRANGE(Status, SalesHeader.Status::Open);
        SalesHeader.SETRANGE("Sales Order Type", SalesHeader."Sales Order Type"::Retail);
        IF SalesHeader.FINDSET THEN
            REPEAT
                SalesHeader.DELETE(TRUE);
            UNTIL SalesHeader.NEXT = 0;
    end;
}

