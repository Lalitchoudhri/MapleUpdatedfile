page 50080 "Closed Purchase Order List"
{
    Caption = 'Purchase Orders';
    CardPageID = "Purchase Order";
    Editable = false;
    PageType = List;
    SourceTable = 38;
    UsageCategory = Lists;
    ApplicationArea = all;
    SourceTableView = WHERE("Document Type" = CONST(Order),
                            Subcontracting = CONST(false),
                            Closed = FILTER(true),
                            "Retail Buyback Ref. No." = FILTER(= ''));

    layout
    {
        area(content)
        {
            repeater(Repeater)
            {
                field("No."; rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Order Address Code"; "Order Address Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Buy-from Vendor Name"; "Buy-from Vendor Name")
                {
                    ApplicationArea = All;
                }
                field("Vendor Authorization No."; "Vendor Authorization No.")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Post Code"; "Buy-from Post Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Buy-from Country/Region Code"; "Buy-from Country/Region Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Buy-from Contact"; "Buy-from Contact")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Vendor No."; "Pay-to Vendor No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Name"; "Pay-to Name")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Post Code"; "Pay-to Post Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Country/Region Code"; "Pay-to Country/Region Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Pay-to Contact"; "Pay-to Contact")
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
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(1);
                    end;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(2);
                    end;
                }
                field("Location Code"; "Location Code")
                {
                    Visible = true;
                    ApplicationArea = All;
                }
                field("Purchaser Code"; "Purchaser Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Assigned User ID"; "Assigned User ID")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; "Currency Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Document Date"; "Document Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Status; Status)
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
                field("Payment Method Code"; "Payment Method Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shipment Method Code"; "Shipment Method Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Requested Receipt Date"; "Requested Receipt Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Job Queue Status"; "Job Queue Status")
                {
                    ApplicationArea = All;
                    // Visible = JobQueueActive;
                }
            }
        }
        area(factboxes)
        {
            part(Part; 9093)
            {
                SubPageLink = "No." = FIELD("Buy-from Vendor No."),
                              "Date Filter" = FIELD("Date Filter");
                Visible = true;
                ApplicationArea = All;
            }
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
            group("O&rder")
            {
                Caption = 'O&rder';
                Image = "Order";
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    Promoted = false;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = false;
                    ShortCutKey = 'Shift+Ctrl+D';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowDocDim;
                    end;
                }
                action(Statistics)
                {
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'F7';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        CalcInvDiscForHeader;
                        COMMIT;
                        PAGE.RUNMODAL(PAGE::"Purchase Order Statistics", Rec);
                    end;
                }
                action(Approvals)
                {
                    Caption = 'Approvals';
                    Image = Approvals;
                    Promoted = false;
                    ApplicationArea = All;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = false;

                    trigger OnAction()
                    var
                        ApprovalEntries: Page 658;
                    begin
                        // ApprovalEntries.Setfilters(DATABASE::"Purchase Header","Document Type","No.");
                        // ApprovalEntries.RUN;//tk
                    end;
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Purch. Comment Sheet";
                    RunPageLink = "Document Type" = FIELD("Document Type"),
                                  "No." = FIELD("No."),
                                  "Document Line No." = CONST(0);
                    ApplicationArea = All;
                }
            }
            group(Documents)
            {
                Caption = 'Documents';
                Image = Documents;
                action(Receipts)
                {
                    Caption = 'Receipts';
                    Image = PostedReceipts;
                    Promoted = false;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = false;
                    RunObject = Page "Posted Purchase Receipts";
                    RunPageLink = "Order No." = FIELD("No.");
                    RunPageView = SORTING("Order No.");
                    ApplicationArea = All;
                }
                action(Invoices)
                {
                    Caption = 'Invoices';
                    Image = Invoice;
                    Promoted = false;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = false;
                    RunObject = Page "Posted Purchase Invoices";
                    RunPageLink = "Order No." = FIELD("No.");
                    RunPageView = SORTING("Order No.");
                    ApplicationArea = All;
                }
                action("Prepa&yment Invoices")
                {
                    Caption = 'Prepa&yment Invoices';
                    Image = PrepaymentInvoice;
                    RunObject = Page "Posted Purchase Invoices";
                    RunPageLink = "Prepayment Order No." = FIELD("No.");
                    RunPageView = SORTING("Prepayment Order No.");
                    Visible = false;
                    ApplicationArea = All;
                }
                action("Prepayment Credi&t Memos")
                {
                    Caption = 'Prepayment Credi&t Memos';
                    Image = PrepaymentCreditMemo;
                    RunObject = Page "Posted Purchase Credit Memos";
                    RunPageLink = "Prepayment Order No." = FIELD("No.");
                    RunPageView = SORTING("Prepayment Order No.");
                    Visible = false;
                    ApplicationArea = All;
                }
                separator(Separator)
                {
                }
            }
            group(Warehouse)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                Visible = false;
                action("In&vt. Put-away/Pick Lines")
                {
                    Caption = 'In&vt. Put-away/Pick Lines';
                    Image = PickLines;
                    RunObject = Page "Warehouse Activity List";
                    RunPageLink = "Source Document" = CONST("Purchase Order"),
                                  "Source No." = FIELD("No.");
                    RunPageView = SORTING("Source Document", "Source No.", "Location Code");
                    ApplicationArea = All;
                }
                action("Whse. Receipt Lines")
                {
                    Caption = 'Whse. Receipt Lines';
                    Image = ReceiptLines;
                    RunObject = Page "Whse. Receipt Lines";
                    RunPageLink = "Source Type" = CONST(39),
                                  "Source Subtype" = FIELD("Document Type"),
                                  "Source No." = FIELD("No.");
                    RunPageView = SORTING("Source Type", "Source Subtype", "Source No.", "Source Line No.");
                    ApplicationArea = All;
                }
                separator(Separator1)
                {
                }
            }
        }
        area(processing)
        {
            group(General)
            {
                Caption = 'General';
                Image = Print;
                action("&Print")
                {
                    Caption = '&Print';
                    Ellipsis = true;
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        DocPrint.PrintPurchHeader(Rec);
                    end;
                }
            }
            group(Release)
            {
                Caption = 'Release';
                Image = ReleaseDoc;
                action("Re&lease")
                {
                    Caption = 'Re&lease';
                    Image = ReleaseDoc;
                    ShortCutKey = 'Ctrl+F9';
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ReleasePurchDoc: Codeunit 415;
                    begin
                        ReleasePurchDoc.PerformManualRelease(Rec);
                    end;
                }
                action("Re&open")
                {
                    Caption = 'Re&open';
                    Image = ReOpen;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ReleasePurchDoc: Codeunit 415;
                    begin
                        ReleasePurchDoc.PerformManualReopen(Rec);
                    end;
                }
                separator(Separator7)
                {
                }
            }
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action("Send A&pproval Request")
                {
                    Caption = 'Send A&pproval Request';
                    Image = SendApprovalRequest;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit 439;
                    begin
                        //IF ApprovalMgt.SendPurchaseApprovalRequest(Rec) THEN;//tk
                    end;
                }
                action("Cancel Approval Re&quest")
                {
                    Caption = 'Cancel Approval Re&quest';
                    Image = Cancel;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit 439;
                    begin
                        //IF ApprovalMgt.CancelPurchaseApprovalRequest(Rec,TRUE,TRUE) THEN;//tk
                    end;
                }
                separator(Separator2)
                {
                }
                action("Send IC Purchase Order")
                {
                    Caption = 'Send IC Purchase Order';
                    Image = IntercompanyOrder;
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ICInOutboxMgt: Codeunit 427;
                        SalesHeader: Record 36;
                        ApprovalMgt: Codeunit 439;
                    begin
                        // IF ApprovalMgt.PrePostApprovalCheck(SalesHeader,Rec) THEN
                        //   ICInOutboxMgt.SendPurchDoc(Rec,FALSE);
                    end;
                }
            }
            group(Warehouse1)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                Visible = false;
                action("Create &Whse. Receipt")
                {
                    Caption = 'Create &Whse. Receipt';
                    Image = NewReceipt;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        GetSourceDocInbound: Codeunit 5751;
                    begin
                        GetSourceDocInbound.CreateFromPurchOrder(Rec);

                        IF NOT FIND('=><') THEN
                            INIT;
                    end;
                }
                action("Create Inventor&y Put-away/Pick")
                {
                    Caption = 'Create Inventor&y Put-away/Pick';
                    Ellipsis = true;
                    Image = CreatePutawayPick;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        CreateInvtPutAwayPick;

                        IF NOT FIND('=><') THEN
                            INIT;
                    end;
                }
                separator(Separator5)
                {
                }
            }
            group("P&osting")
            {
                Caption = 'P&osting';
                Image = Post;
                action("Test Report")
                {
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ReportPrint.PrintPurchHeader(Rec);
                    end;
                }
                action("P&ost")
                {
                    Caption = 'P&ost';
                    Ellipsis = true;
                    Image = PostOrder;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'F9';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        SendToPosting(CODEUNIT::"Purch.-Post (Yes/No)");
                    end;
                }
                action("Post and &Print")
                {
                    Caption = 'Post and &Print';
                    Ellipsis = true;
                    Image = PostPrint;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'Shift+F9';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        SendToPosting(CODEUNIT::"Purch.-Post + Print");
                    end;
                }
                action("Post &Batch")
                {
                    Caption = 'Post &Batch';
                    Ellipsis = true;
                    Image = PostBatch;
                    Promoted = true;
                    PromotedCategory = Process;
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        REPORT.RUNMODAL(REPORT::"Batch Post Purchase Orders", TRUE, TRUE, Rec);
                        CurrPage.UPDATE(FALSE);
                    end;
                }
                action("Remove From Job Queue")
                {
                    Caption = 'Remove From Job Queue';
                    Image = RemoveLine;
                    Visible = JobQueueActive;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        CancelBackgroundPosting;
                    end;
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        PurchasesPayablesSetup: Record 312;
    begin
        SetSecurityFilterOnRespCenter;

        JobQueueActive := PurchasesPayablesSetup.JobQueueActive;
    end;

    var
        DimMgt: Codeunit 408;
        ReportPrint: Codeunit 228;
        DocPrint: Codeunit 229;
        [InDataSet]
        JobQueueActive: Boolean;
}

