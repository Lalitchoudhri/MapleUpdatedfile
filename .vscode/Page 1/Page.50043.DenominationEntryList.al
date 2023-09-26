page 50043 "Denomination Entry List"
{
    CardPageID = "Denomination Entry";
    PageType = List;
    SourceTable = 50007;
    SourceTableView = WHERE(TransType = CONST(Denomination));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(DenominationNo; DenominationNo)
                {
                    ApplicationArea = All;
                }
                field("Dinomination Date"; "Dinomination Date")
                {
                    ApplicationArea = All;
                }
                field(Branch; Branch)
                {
                    ApplicationArea = All;
                }
                field(TotalAmt; TotalAmt)
                {
                    ApplicationArea = All;
                }
                field(Remarks; Remarks)
                {
                    ApplicationArea = All;
                }
                field("Document Posted"; "Document Posted")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; "Location Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    var
        UserSetup: Record 91;
    begin
        UserSetup.GET(USERID);
        SETFILTER("Location Code", '%1', UserSetup."Location Code");
    end;
}

