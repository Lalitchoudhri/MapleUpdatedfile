page 50009 "Posted PDC List"
{
    DeleteAllowed = false;
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = 50002;
    SourceTableView = SORTING("Entry No.")
                      ORDER(Ascending)
                      WHERE("Document No." = FILTER(<> ''));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = all;
                }
                field("Document No."; "Document No.")
                {
                    ApplicationArea = all;
                }

                field("PDC Type"; "PDC Type")
                {
                    ApplicationArea = all;
                }

                field("Res Center"; "Res Center")
                {
                    ApplicationArea = all;

                }
                field("Account No."; "Account No.")
                {
                    ApplicationArea = all;
                }

                field(Name; Name)
                {
                    ApplicationArea = all;
                }

                field("PDC Received Date"; "PDC Received Date")
                {
                    ApplicationArea = all;
                }

                field("PDC Cheque Date"; "PDC Cheque Date")
                {
                    ApplicationArea = all;
                }

                field("PDC Amount"; "PDC Amount")
                {
                    ApplicationArea = all;
                }

                field("MICR Code"; "MICR Code")
                {
                    ApplicationArea = all;
                }

                field("Bank No."; "Bank No.")
                {
                    ApplicationArea = all;
                }

                field("Bank Name"; "Bank Name")
                {
                    ApplicationArea = all;
                }

                field("Bank Deposit Code"; "Bank Deposit Code")
                {
                    ApplicationArea = all;
                }

                field("PDC Deposit Date"; "PDC Deposit Date")
                {
                    ApplicationArea = all;
                }

            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("<Action59>")
            {
                Caption = 'Fun&ction';
                action("<Action61>")
                {
                    Caption = 'Applied Entries';
                    Image = Statistics;
                    Promoted = false;
                    ApplicationArea = all;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
                    ShortCutKey = 'F7';

                    trigger OnAction()
                    begin
                        pApplnBuffer.RESET;
                        pApplnBuffer.SETFILTER(pApplnBuffer."Document Type", '=%1', "Entry No.");
                        PAGE.RUN(50010, pApplnBuffer);
                    end;
                }
            }
        }
        area(reporting)
        {
            action("<Action1906813206>")
            {
                Caption = 'PDC in Hand';
                Promoted = false;
                ApplicationArea = all;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                // RunObject = Report 50000;//tk
            }
            action("<Action1907586706>")
            {
                Caption = 'PDC Received';
                Promoted = false;
                ApplicationArea = all;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                // RunObject = Report 50001;//tk
            }
            action("<Action1902299006>")
            {
                Caption = 'Receivable PDC';
                Promoted = false;
                ApplicationArea = all;

                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                //RunObject = Report 50002;
            }
        }
    }

    var
        pApplnBuffer: Record 50004;
}

