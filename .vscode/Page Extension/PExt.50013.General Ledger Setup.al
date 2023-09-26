pageextension 50013 "General Ledger Setup" extends "General Ledger Setup"
{

    layout
    {
        modify("Allow G/L Acc. Deletion Before")
        {
            Visible = false;
        }
        addbefore(AmountDecimalPlaces)
        {
            field("Vendor Cash Limit"; "Vendor Cash Limit")
            {
                ApplicationArea = all;
            }
            field(gspappid; gspappid)
            {
                ApplicationArea = all;
            }
            field(gspappsecret; gspappsecret)
            {
                ApplicationArea = all;
            }
            field("Amount Rounding Precision"; "Amount Rounding Precision")
            {
                ApplicationArea = all;
            }

            field("Unit-Amount Rounding Precision"; "Unit-Amount Rounding Precision")
            {
                ApplicationArea = all;
            }
            field("Purchase Invoice IIIrd Party"; "Purchase Invoice IIIrd Party")
            {
                ApplicationArea = all;
            }
            field("Sales Invoice IIIrd Party"; "Sales Invoice IIIrd Party")
            {
                ApplicationArea = all;
            }
            field("Denomination Nos"; "Denomination Nos")
            {
                ApplicationArea = all;
            }
            field("Daily Currency Nos"; "Daily Currency Nos")
            {
                ApplicationArea = all;
            }
            field("Cash Account"; "Cash Account")
            {
                ApplicationArea = all;
            }
        }
        addafter(AmountDecimalPlaces)
        {
            field("BB Cash Account"; "BB Cash Account")
            {
                ApplicationArea = all;
                Visible = true;
            }

        }
        addafter(General)
        {

            Group("Invoice Terms")
            {
                Caption = 'Invoice Terms';
                field("InvoiceTerm1"; Rec."Invoice Terms 1")
                {
                    ApplicationArea = all;


                }
                field("InvoiceTerms2"; Rec."Invoice Terms 2")
                {
                    ApplicationArea = all;





                }
                field("InvoiceTerms3"; Rec."Invoice Terms 3")
                {
                    ApplicationArea = all;

                }
                field("Invoice Terms. 4"; Rec."Invoice Terms 4")
                {
                    ApplicationArea = all;
                    Visible = true;
                }
                field("Invoice Terms. 5"; Rec."Invoice Terms 5")
                {
                    ApplicationArea = all;
                    Visible = true;
                }
                field("Invoice Terms 6"; Rec."Invoice Terms 6")
                {
                    ApplicationArea = all;
                    Visible = true;
                }
            }
        }


        addafter("Payroll Trans. Import Format")
        {
            group("Maple File No.")
            {
                Caption = 'Maple File No.';
                field("Mapple File Date"; "Mapple File Date")

                {
                    ApplicationArea = all;
                }
                field("ISL File No."; "ISL File No.")
                {
                    ApplicationArea = all;
                }
                field("OSL File No."; "OSL File No.")
                {
                    ApplicationArea = all;
                }

                field("RET File No."; "RET File No.")
                {
                    ApplicationArea = all;
                }
            }
        }
        addafter("Bank Account Nos.")
        {
            field("Cust PDC Batch No."; "Cust PDC Batch No.")
            {
                ApplicationArea = all;
            }
            field("Vend PDC Batch No."; "Vend PDC Batch No.")
            {
                ApplicationArea = all;
            }
        }

    }

    actions
    {
        addafter("Bank Account Posting Groups")
        {
            action("Update GL Entry")
            {
                //AccessByPermission = tabledata "G/L Entry" = rmdi;
                ApplicationArea = all;
                Image = UpdateDescription;
                trigger OnAction()
                var
                    CC: Codeunit 50057;
                BEGIN
                    CC.UpdateGLEntry();
                END;

            }
        }
    }

    var
        myInt: Integer;
}