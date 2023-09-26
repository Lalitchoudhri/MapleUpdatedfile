page 50003 "PDC Sent to Bank"
{
    DeleteAllowed = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = 50002;
    SourceTableView = WHERE("Sent to Bank" = FILTER(true),
                            "PDC Deposited" = FILTER(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Account Type"; "Account Type")
                {
                    ApplicationArea = All;
                }
                field("Document No."; "Document No.")
                {
                    ApplicationArea = All;
                }
                field("PDC Type"; "PDC Type")
                {
                    ApplicationArea = All;
                }
                field("Res Center"; "Res Center")
                {
                    ApplicationArea = All;
                }
                field("Account No."; "Account No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("PDC Received Date"; "PDC Received Date")
                {
                    ApplicationArea = All;
                }
                field("PDC Cheque Date"; "PDC Cheque Date")
                {
                    ApplicationArea = All;
                }
                field("PDC Amount"; "PDC Amount")
                {
                    ApplicationArea = All;
                }
                field("MICR Code"; "MICR Code")
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; "Bank Name")
                {
                    ApplicationArea = All;
                }
                field("PDC Amount Applied"; "PDC Amount Applied")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            part(Link; 9082)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(creation)
        {
            action(Open)
            {
                Caption = 'ReOpen';
                Promoted = true;
                Visible = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    //recDepositeCheque.GET(recDepositeCheque.id::"0","Entry No.");//tk
                    recDepositeCheque.DELETE;
                    //"Res Center" := "Res Center"::"0";
                    "Sent to Bank" := FALSE;
                    "PDC Deposited" := FALSE;
                    MODIFY;
                end;
            }
        }
    }

    var
        recDepositeCheque: Record 50006;
}

