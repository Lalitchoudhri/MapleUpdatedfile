pageextension 50087 "Posted Transfer Shipment" extends "Posted Transfer Shipment"
{
    layout
    {
        modify("Shipping Agent Code")
        {
            Editable = true;
        }
        addafter("Transfer Order Date")
        {
            field("Rental Sales Invoice No."; "Rental Sales Invoice No.")
            {
                Editable = false;
                Style = Standard;
                StyleExpr = TRUE;
                ApplicationArea = all;
            }
            field("Customer No."; "Customer No.")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("Shipped By User ID"; "Shipped By User ID")
            {
                ApplicationArea = all;
            }
            field("Received By User ID"; "Received By User ID")
            {
                ApplicationArea = all;
            }
        }
        addbefore("Foreign Trade")
        {
            group("E-Invoicing")
            {
                field("IRN No."; "IRN No.")
                {
                    ApplicationArea = all;
                }
                field("Acknowledgement No."; "Acknowledgement No.")
                {
                    ApplicationArea = all;
                }

                field("Acknowledgement Date"; "Acknowledgement Date")
                {
                    ApplicationArea = all;
                }
                field("E-Invoice Cancel Remark"; "E-Invoice Cancel Remark")
                {
                    ApplicationArea = all;
                }
                field("E-Invoice Reason Code"; "E-Invoice Reason Code")
                {
                    ApplicationArea = all;
                }
                field("E-Invocie Cancel Date"; "E-Invocie Cancel Date")
                {
                    ApplicationArea = all;
                }
                field("QR Code"; "QR Code")
                {
                    ApplicationArea = All;
                }
                field("Envoice Cancelled"; "Envoice Cancelled")
                {
                    ApplicationArea = All;
                    Enabled = false;
                }
            }
            group("Eway Bill")
            {
                field(Distance; Distance)
                {
                    ApplicationArea = all;
                }
                field("E-Way Bill No."; "E-Way Bill No.")
                {
                    ApplicationArea = all;
                }
                field("E-Way Bill Date"; "E-Way Bill Date")
                {
                    ApplicationArea = all;
                }

                field("Cancel Reason Code"; "Cancel Reason Code")
                {
                    ApplicationArea = all;
                }
                field("Cancel Remark"; "Cancel Remark")
                {
                    ApplicationArea = all;
                }
            }

        }
        addafter("Transport Method")
        {
            field("Posting Date2"; "Posting Date")
            {
                Caption = 'Date of Removal';
                ApplicationArea = all;
            }
            field("<Vehicle No11.>"; "Vehicle No.")
            {
                Caption = 'Vehicle No.1';
                ApplicationArea = all;
            }
            field("<LR/RR No1.>"; "LR/RR No.")
            {
                Caption = 'LR/RR No.1';
                ApplicationArea = all;
            }
            field("<LR/RR Date1>"; "LR/RR Date")
            {
                Caption = 'LR/RR Date1';
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        addafter("&Print")
        {
            action("Generate E-Invoice IRN")
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice.EInvoicingGenerationTransfer(Rec);
                end;
            }
            action("Cancel E-Invoice IRN")
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice.CancelEInvTaxProTra(Rec);

                end;
            }
            action("E-Way Bill Generation")
            {
                ApplicationArea = all;
                Visible = false;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice."E-WayBillByIRNTransfer"(Rec);


                end;
            }
            action("Cancel E-Way Bill")
            {
                ApplicationArea = all;
                Visible = false;
                trigger OnAction()
                var
                    Einvoice: Codeunit "E-Invoice";
                begin
                    Einvoice.CancelEwayBillTRansfer(Rec);


                end;
            }

            //   action("Print E-Way Bill")
            //     {
            //         Image = Print;
            //         Promoted = true;

            //         trigger OnAction()
            //         begin

            //             TESTFIELD("E-Way Bill No.");
            //             IF RecGeneLedSetup.GET THEN;
            //             IF RecLoc.GET("Transfer-from Code")THEN;
            //             "CUE-WayBill".PrintEwayBillSales("E-Way Bill No.",RecLoc."GST Registration No.",RecLoc."E-Invoice User ID",RecLoc."E-Invoice Password");
            //             MESSAGE('E-Way Bill Printed Sucessfully in %1 ',RecGeneLedSetup."E-Way Document Store Path");
            //         end;
            //     }

        }

    }

    var
        myInt: Integer;
}