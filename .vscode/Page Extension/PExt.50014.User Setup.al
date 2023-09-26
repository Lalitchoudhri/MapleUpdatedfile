pageextension 50014 "User Setup" extends "User Setup"
{
    layout
    {
        addafter("Service Resp. Ctr. Filter")
        {

            field("Location Filter"; "Location Filter")
            {
                ApplicationArea = all;
            }
            field("Location Code"; "Location Code")
            {
                ApplicationArea = all;
            }
            field("All Location Transfer"; "All Location Transfer")
            {
                ApplicationArea = all;
            }


            field("Allow Req. View All"; "Allow Req. View All")
            {
                ApplicationArea = all;
            }


            field("Super User"; "Super User")
            {
                ApplicationArea = all;
            }

            field("Ingram User"; "Ingram User")
            {
                ApplicationArea = all;
            }

            field("Reason Code mandatory"; "Reason Code mandatory")
            {
                ApplicationArea = all;
            }
            field(password; password)
            {
                ApplicationArea = all;
            }
            field("Web User"; "Web User")
            {
                ApplicationArea = all;
            }
            field("Close PO"; "Close PO")
            {
                ApplicationArea = all;
            }
            field("Capillary Disc.  Order Delete"; "Capillary Disc.  Order Delete")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("CRT Approval"; "CRT Approval")
            {
                ApplicationArea = all;
            }
            field("CRT Verifier"; "CRT Verifier")
            {
                ApplicationArea = all;
            }
        }

    }

    actions
    {

    }
    trigger OnAfterGetCurrRecord()
    begin
        EditAllowPostingDate := "Allow Back Dated Entry"; //<< KPPLRJ3.00
    end;

    trigger OnAfterGetRecord()
    begin
        EditAllowPostingDate := "Allow Back Dated Entry"; //<< KPPLRJ3.00
    end;

    trigger OnOpenPage()
    begin
        EditAllowPostingDate := TRUE; //<< KPPLRJ3.00

        IF (USERID = 'ACCAPV') OR (USERID = 'MAPLEIT') THEN
            AllowBackDateEditable := TRUE;
    end;


    var
        myInt: Integer;
        EditAllowPostingDate: Boolean;
        AllowBackDateEditable: Boolean;
}