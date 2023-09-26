pageextension 50041 "PostedSales Invoice" extends "Posted Sales Invoice"
{
    Editable = true;


    layout
    {
        addafter("No.")
        {
            field("Order ID"; "Order ID")
            {
                ApplicationArea = All;
            }
            field("LocationCode"; "Location Code")
            {
                ApplicationArea = all;
            }
            field("Sales Order Type"; "Sales Order Type")
            {
                ApplicationArea = all;
            }
            field("User Type"; "Mobile Type")
            {
                Caption = 'User Type';
                ApplicationArea = all;

            }
        }

        addafter("GST Customer Type")
        {
            field("Customer GST Reg. No."; Rec."Customer GST Reg. No.")
            {
                ApplicationArea = all;
            }
        }
        addafter("E-Way Bill No.")
        {
            field("IRN No."; "IRN No.")
            {
                ApplicationArea = all;
            }
            field("E-Way Bill Date"; "E-Way Bill Date")
            {
                ApplicationArea = all;
            }
            field("E-Way Bill Date ValidTill"; "E-Way Bill Date ValidTill")
            {
                ApplicationArea = all;
            }
        }
        addafter("E-Inv. Cancelled Date")
        {
            field("e-Inv Cancelled"; "E-Inv Cancelled")
            {
                ApplicationArea = all;
            }
            field("E-Invoice Reason Code"; "E-Invoice Reason Code")
            {
                ApplicationArea = all;
            }
            field("E-Invoice Cancel Remark"; "E-Invoice Cancel Remark")
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
                ApplicationArea = all;
            }
            field("Promo Code"; "Promo Code")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("Delivery Note"; "Delivery Note")
            {
                Editable = true;
                ApplicationArea = all;
            }
            field("Dispatch Doc. No."; "Dispatch Doc. No.")
            {
                Editable = true;
                ApplicationArea = all;
            }
            field("Dispatch Through"; "Dispatch Through")
            {
                Editable = true;
                ApplicationArea = all;

            }

        }

        modify("Vehicle No.")
        {
            Editable = true;
            Visible = true;

        }
        modify("Mode of Transport")
        {
            Editable = true;
            Visible = true;
        }
        //addafter()
    }


    actions
    {
        modify("Generate IRN")
        {
            Visible = false;
            Enabled = false;
        }
        modify("Generate QR Code")
        {
            Visible = false;
            Enabled = false;
        }
        modify("Generate E-Invoice")
        {
            Visible = false;
            Enabled = false;
        }
        // Add changes to page actions here
        addafter("Generate IRN")
        {
            action(TEST)
            {
                ApplicationArea = ALL;
                Promoted = true;
                Visible = false;
                trigger OnAction()
                var
                    CC: Codeunit 50057;
                BEGIN
                    CC.ClockmeAPI(Rec);
                END;
            }
            action("GenerateEInvoice_ASP")
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice.EInvoicingGeneration(Rec);
                end;
            }
            action("Cancel E-Invoice IRN")
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice.CancelEInvTaxPro(Rec);

                end;
            }
            action("E-Way Bill Generation")
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice."E-WayBillByIRN"(Rec);

                end;
            }
            action("Cancel E-Way Bill")
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice.CancelEwayBill(Rec);

                end;
            }
            // action("GenerateEInvoice_ASP")
            // {
            //     ApplicationArea = all;
            //     trigger OnAction()
            //     var
            //         myInt: Integer;
            //     // eInvoice_ASP: Codeunit 50025;
            //     begin
            //         // eInvoice_ASP.SetEwayRequirement(FALSE);

            //         // eInvoice_ASP.SetSalesInvHeader(Rec);
            //         // eInvoice_ASP.RUN;
            //     end;
            // }
            // action("GetEinvoice")
            // {
            //     ApplicationArea = all;
            //     trigger OnAction()
            //     var
            //         myInt: Integer;
            //         // eInvoice_ASP: Codeunit 50025;
            //         RecLoc: Record Location;
            //     begin
            //         //    RecLoc.GET(Rec."Location Code");
            //         // eInvoice_ASP.GetEInvoice(DocType::Invoice,rec."No.",RecLoc."GST Registration No.");
            //     end;
            // }



        }
        addafter(Print)
        {
            action("Print GST- Sales Invoice")
            {
                Caption = 'Print GST-Sales Invoice';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = all;
                Visible = true;

                trigger OnAction()
                begin
                    SalesInvHeader.RESET;
                    SalesInvHeader.SETRANGE("No.", Rec."No.");
                    SalesInvHeader.SETRANGE(Shield, TRUE);
                    SalesInvHeader.SETFILTER("Ref. Invoice No.", '<>%1', '');
                    IF SalesInvHeader.FINDFIRST THEN
                        ERROR('You cannot use this report for shield transaction');//WIN-234 06-03-2020
                    SalesInvHeader.RESET;
                    SalesInvHeader.SETRANGE("No.", Rec."No.");
                    REPORT.RUNMODAL(50009, TRUE, TRUE, SalesInvHeader);
                end;
            }
            action("Print GST- Sales Invoice Domestic")
            {
                Caption = 'Print GST-Sales Invoice Domestic';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = all;
                Visible = true;

                trigger OnAction()
                begin
                    SalesInvHeader.RESET;
                    SalesInvHeader.SETRANGE("No.", Rec."No.");
                    SalesInvHeader.SETRANGE(Shield, TRUE);
                    SalesInvHeader.SETFILTER("Ref. Invoice No.", '<>%1', '');
                    IF SalesInvHeader.FINDFIRST THEN
                        ERROR('You cannot use this report for shield transaction');//WIN-234 06-03-2020
                    SalesInvHeader.RESET;
                    SalesInvHeader.SETRANGE("No.", Rec."No.");
                    REPORT.RUNMODAL(50007, TRUE, TRUE, SalesInvHeader);
                end;
            }

        }


    }



    var
        myInt: Integer;
        DocType: Option Invoice,"or Credit Memo";
        UserSetup: Record 91;
}