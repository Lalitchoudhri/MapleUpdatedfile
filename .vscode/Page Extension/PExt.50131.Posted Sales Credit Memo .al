pageextension 50131 "Posted Sales CreditMemo" extends "Posted Sales Credit Memo"
{
    Editable = true;

    layout
    {
        addafter("No.")
        {
            field("Sales Order Type"; "Sales Order Type")
            {
                ApplicationArea = all;
            }

        }

        addbefore("External Document No.")
        {


            field("Ref. Invoice No."; "Ref. Invoice No.")
            {
                Editable = false;
                Style = Strong;
                StyleExpr = TRUE;
                ApplicationArea = All;
            }
            field("Promo Code"; "Promo Code")
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("Delivery Note"; "Delivery Note")
            {
                Editable = true;
                ApplicationArea = All;
            }
            field("Dispatch Doc. No."; "Dispatch Doc. No.")
            {
                Editable = true;
                ApplicationArea = All;
            }
            field("Dispatch Through"; "Dispatch Through")
            {
                Editable = true;
                ApplicationArea = All;

            }

        }


        addafter("Cancel Reason")
        {
            field("E-Invoice Cancel Remark"; "E-Invoice Cancel Remark")
            {
                ApplicationArea = All;
            }
            field("E-Invoice Reason Code"; "E-Invoice Reason Code")
            {
                ApplicationArea = all;
            }
            field("E-invoice Cancelled"; "E-invoice Cancelled")
            {
                ApplicationArea = All;
            }

        }
    }


    actions
    {
        modify("Generate E-Invoice")
        {
            Visible = false;
        }
        // Add changes to page actions here
        addafter("Generate IRN")
        {
            action("Generate E-Invoice IRN")
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice.EInvoicingGenerationCRMemo(Rec);

                end;
            }
            action("Cancel E-Invoice IRN")
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice.CancelEInvTaxProCN(Rec);


                end;
            }
        }
    }

    var
        myInt: Integer;
}