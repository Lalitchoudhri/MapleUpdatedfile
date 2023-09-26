page 50027 "Posted Sales Shield Invoices"
{
    Caption = 'Posted Sales  Sheild Invoices';
    CardPageID = "Posted Sales Invoice";
    Editable = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = all;
    SourceTable = 112;
    SourceTableView = WHERE("Sales Order Type" = FILTER("Retail" | "B2B"),
                            Shield = CONST(true),
                            "Ref. Invoice No." = FILTER(<> ''));

    layout
    {
        area(content)
        {
            repeater(Repeater)
            {
                field("Sales Order Type"; "Sales Order Type")
                {
                    Style = Strong;
                    StyleExpr = TRUE;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    Width = 25;
                    ApplicationArea = All;
                }
                field("Sell-to Customer No."; "Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Sell-to Customer Name"; "Sell-to Customer Name")
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        SETRANGE("No.");
                        PAGE.RUNMODAL(PAGE::"Posted Sales Invoice", Rec)
                    end;
                }
                // field("Gross Amount";"Amount to Customer")
                // {
                //     Caption = 'Gross AMount';
                // }
                field("Amount Including VAT"; "Amount Including VAT")
                {
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        SETRANGE("No.");
                        PAGE.RUNMODAL(PAGE::"Posted Sales Invoice", Rec)
                    end;
                }
                field("Sell-to Post Code"; "Sell-to Post Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Sell-to Country/Region Code"; "Sell-to Country/Region Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Sell-to Contact"; "Sell-to Contact")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Bill-to Name"; "Bill-to Name")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Bill-to Post Code"; "Bill-to Post Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Bill-to Country/Region Code"; "Bill-to Country/Region Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Bill-to Contact"; "Bill-to Contact")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Code"; "Ship-to Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Name"; "Ship-to Name")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Post Code"; "Ship-to Post Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Country/Region Code"; "Ship-to Country/Region Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Ship-to Contact"; "Ship-to Contact")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Currency Code"; "Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Salesperson Code"; "Salesperson Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Location Code"; "Location Code")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field("Ref. Invoice No."; "Ref. Invoice No.")
                {
                    Style = Strong;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("No. Printed"; "No. Printed")
                {
                    ApplicationArea = All;
                }
                field("Document Date"; "Document Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Payment Terms Code"; "Payment Terms Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Due Date"; "Due Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Payment Discount %"; "Payment Discount %")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shipment Method Code"; "Shipment Method Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shipment Date"; "Shipment Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            systempart(Links; Links)
            {
                Visible = false;
                ApplicationArea = All;
            }
            systempart(Notes; Notes)
            {
                Visible = true;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Invoice")
            {
                Caption = '&Invoice';
                Image = Invoice;
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    ShortCutKey = 'Shift+F7';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"Posted Sales Invoice", Rec)
                    end;
                }
                action(Statistics)
                {
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page 397;
                    RunPageLink = "No." = FIELD("No.");
                    ShortCutKey = 'F7';
                    ApplicationArea = All;
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page 67;
                    RunPageLink = "Document Type" = CONST("Posted Invoice"),
                                  "No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowDimensions;
                    end;
                }
            }
        }
        area(processing)
        {
            action("&Print")
            {
                Caption = '&Print';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                Visible = false;
                ApplicationArea = All;

                trigger OnAction()
                var
                    SalesInvHeader: Record 112;
                begin
                    CurrPage.SETSELECTIONFILTER(SalesInvHeader);
                    SalesInvHeader.PrintRecords(TRUE);
                end;
            }
            action(Print)
            {
                Caption = '&Print';
                Image = Print;
                Promoted = true;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin

                    RecSalesHead12.RESET;
                    //RecSalesHead12.SETRANGE(RecSalesHead12."Document Type","Document Type");
                    RecSalesHead12.SETRANGE(RecSalesHead12."No.", "No.");
                    REPORT.RUN(50011, TRUE, TRUE, RecSalesHead12);
                end;
            }
            action("Print GST- Shield Invoice")
            {
                Caption = 'Print GST- Shield Invoice';
                Image = Print;
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    SalesInvHeader.RESET;
                    SalesInvHeader.SETRANGE("No.", "No.");
                    REPORT.RUNMODAL(50074, TRUE, TRUE, SalesInvHeader);
                end;
            }
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Navigate;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        //StyleTxt := SetStyle;
    end;

    trigger OnOpenPage()
    begin
        SetSecurityFilterOnRespCenter;
    end;

    var
        RecSalesHead12: Record 112;
        SalesInvHeader: Record 112;
}

