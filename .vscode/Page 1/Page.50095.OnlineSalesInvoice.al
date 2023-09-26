page 50095 "Online Sales Invoice"
{
    Caption = 'Online Sales Invoice';
    CardPageID = "Posted Sales Invoice";
    Editable = false;
    PageType = List;
    PromotedActionCategories = 'New,Process,Report,Invoice,Navigate';
    UsageCategory = Lists;
    ApplicationArea = all;
    SourceTable = 112;

    layout
    {
        area(content)
        {
            repeater(Repeater)
            {
                // field("Sales Order Type"; "Sales Order Type")
                // {
                //     Style = Strong;
                //     StyleExpr = TRUE;
                // }
                // field("Order ID"; "Order ID")
                // {
                // }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    Visible = true;
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
                // field("Cust. Mobile No."; "Cust. Mobile No.")
                // {
                // }
                // field("Cust. email ID"; "Cust. email ID")
                // {
                // }//tk
                field("Currency Code"; "Currency Code")
                {
                    Visible = false;
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
                field("Gross Amount"; '')
                //field("Gross Amount"; "Amount to Customer")
                {
                    Caption = 'Gross Amount';
                    ApplicationArea = All;
                }
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
                field("No. Printed"; "No. Printed")
                {
                    Visible = false;
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
                // field(Shield; Shield)
                // {
                // }
                field("Document Exchange Status"; "Document Exchange Status")
                {
                    StyleExpr = DocExchStatusStyle;
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        //DocExchStatusDrillDown;//tk
                    end;
                }
                field("Invoice Type"; "Invoice Type")
                {
                    ApplicationArea = All;
                }
                field("Coupled to CRM"; "Coupled to CRM")
                {
                    Visible = CRMIntegrationEnabled;
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            part(IncomingDocAttachFactBox; 193)
            {
                ShowFilter = false;
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
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "Sales Invoice Statistics";
                    RunPageLink = "No." = FIELD("No.");
                    ShortCutKey = 'F7';
                    ApplicationArea = All;
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "Sales Comment Sheet";
                    RunPageLink = "Document Type" = CONST("Posted Invoice"),
                                  "No." = FIELD("No.");
                    ApplicationArea = All;
                }
                action(Dimensions)
                {
                    AccessByPermission = TableData 348 = R;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    ShortCutKey = 'Shift+Ctrl+D';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowDimensions;
                    end;
                }
                action("Mail Invoice to Customer")
                {
                    Promoted = true;
                    PromotedIsBig = true;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //WBU.SendMailtoCustomerwithAttachment(Rec);//tk
                    end;
                }
                action(IncomingDoc)
                {
                    AccessByPermission = TableData 130 = R;
                    Caption = 'Incoming Document';
                    Image = Document;
                    Promoted = true;
                    PromotedCategory = Category4;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        IncomingDocument: Record 130;
                    begin
                        IncomingDocument.ShowCard("No.", "Posting Date");
                    end;
                }
            }
            group(ActionGroupCRM)
            {
                Caption = 'Dynamics CRM';
                Visible = CRMIntegrationEnabled;
                action(CRMGotoInvoice)
                {
                    Caption = 'Invoice';
                    Enabled = CRMIsCoupledToRecord;
                    Image = CoupledInvoice;
                    ToolTip = 'Open the coupled Microsoft Dynamics CRM account.';
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                    // CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        //CRMIntegrationManagement.ShowCRMEntityFromRecordID(RECORDID);
                    end;
                }
                action(CreateInCRM)
                {
                    Caption = 'Create Invoice in Dynamics CRM';
                    Enabled = NOT CRMIsCoupledToRecord;
                    Image = NewInvoice;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        SalesInvoiceHeader: Record 112;
                        //CRMIntegrationManagement: Codeunit "CRM Integration Management";
                        SalesInvoiceHeaderRecordRef: RecordRef;
                    begin
                        CurrPage.SETSELECTIONFILTER(SalesInvoiceHeader);
                        SalesInvoiceHeader.NEXT;
                        //tk
                        // IF SalesInvoiceHeader.COUNT = 1 THEN
                        //   CRMIntegrationManagement.CreateNewRecordInCRM(RECORDID,FALSE)
                        // ELSE BEGIN
                        //   SalesInvoiceHeaderRecordRef.GETTABLE(SalesInvoiceHeader);
                        //   CRMIntegrationManagement.CreateNewRecordsInCRM(SalesInvoiceHeaderRecordRef);
                        // END;//tk
                    end;
                }
            }
        }
        area(processing)
        {
            action(SendCustom)
            {
                Caption = 'Send';
                Ellipsis = true;
                Image = SendToMultiple;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    SalesInvHeader: Record 112;
                begin
                    SalesInvHeader := Rec;
                    CurrPage.SETSELECTIONFILTER(SalesInvHeader);
                    // Call SendRecords to open sending profile dialog
                    SalesInvHeader.SendRecords;
                end;
            }
            action("&Print")
            {
                Caption = '&Print';
                Ellipsis = true;
                Image = Print;
                ApplicationArea = All;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;

                trigger OnAction()
                var
                    SalesInvHeader: Record 112;
                begin
                    SalesInvHeader := Rec;
                    CurrPage.SETSELECTIONFILTER(SalesInvHeader);
                    SalesInvHeader.PrintRecords(TRUE);
                end;
            }
            action("&Email")
            {
                Caption = '&Email';
                Image = Email;
                ApplicationArea = All;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;

                trigger OnAction()
                var
                    SalesInvHeader: Record 112;
                begin
                    SalesInvHeader := Rec;
                    CurrPage.SETSELECTIONFILTER(SalesInvHeader);
                    SalesInvHeader.EmailRecords(TRUE);
                end;
            }
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Category5;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Navigate;
                end;
            }
            action(ActivityLog)
            {
                Caption = 'Activity Log';
                Image = Log;
                ApplicationArea = All;

                trigger OnAction()
                var
                    ActivityLog: Record 710;
                begin
                    ActivityLog.ShowEntries(RECORDID);
                end;
            }
            action("Print Serial No")
            {
                Caption = 'Print Serial No';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                var
                    SalesInvHeader: Record 112;
                begin
                    RecpurcLine12.RESET;
                    RecpurcLine12.SETRANGE(RecpurcLine12."Document No.", "No.");
                    REPORT.RUN(50084, TRUE, TRUE, RecpurcLine12);
                end;
            }
            action(Taxable)
            {
                Caption = 'Taxable';
                Ellipsis = true;
                Image = "Filter";
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ShowInvoiceTypeDoc("Invoice Type"::Taxable);
                end;
            }
            action("Bill of Supply")
            {
                Caption = 'Bill of Supply';
                Ellipsis = true;
                Image = "Filter";
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ShowInvoiceTypeDoc("Invoice Type"::"Bill of Supply");
                end;
            }
            action(Export)
            {
                Caption = 'Export';
                Ellipsis = true;
                Image = "Filter";
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ShowInvoiceTypeDoc("Invoice Type"::Export);
                end;
            }
            action(Supplementary)
            {
                Caption = 'Supplementary';
                Ellipsis = true;
                Image = "Filter";
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ShowInvoiceTypeDoc("Invoice Type"::Supplementary);
                end;
            }
            action("Debit Note")
            {
                Caption = 'Debit Note';
                Ellipsis = true;
                Image = "Filter";
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ShowInvoiceTypeDoc("Invoice Type"::"Debit Note");
                end;
            }
            action("Non GST")
            {
                Caption = 'Non GST';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ShowInvoiceTypeDoc("Invoice Type"::"Non-GST");
                end;
            }
            group(Capillery)
            {
                Caption = 'Capillery';
                action("Cancel E Commerce Order")
                {
                    Promoted = true;
                    ApplicationArea = All;
                    //RunObject = Page 50094;//tk
                }
                action("E commerce Order List")
                {
                    RunObject = Page 50093;
                    Visible = Admin;
                    ApplicationArea = All;
                }
                action(Test)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        //LocalPathAndFileName:=
                        //FileManagement.SelectFolderDialog('File to Upload',LocalPathAndFileName);
                        //MESSAGE(LocalPathAndFileName);
                        //tk
                        // FileManagement.DownloadToFile('\\mapleNAV\Navision\Dont Delete (Capilery Integration)\Customer_Details\ KUSHAL RAJ S KM0301.xml','D:\Winspire\ KUSHAL RAJ S KM0301.xml');
                        // MESSAGE('done');//tk
                    end;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    var
        CRMCouplingManagement: Codeunit 5331;
    begin
        DocExchStatusStyle := GetDocExchStatusStyle;
        CurrPage.IncomingDocAttachFactBox.PAGE.LoadDataFromRecord(Rec);
        CRMIsCoupledToRecord := CRMIntegrationEnabled AND CRMCouplingManagement.IsRecordCoupledToCRM(RECORDID);
    end;

    trigger OnAfterGetRecord()
    begin
        DocExchStatusStyle := GetDocExchStatusStyle;
        //Updated WIN347++
        //StyleTxt := SetStyle;
        // CALCFIELDS(Shield);//tk
        //Updated WIN347--
        //WIN316++
        IF "User ID" = 'ADMIN' THEN
            Admin := TRUE;
        //WIN316--
    end;

    trigger OnOpenPage()
    var
    // CRMIntegrationManagement: Codeunit "CRM Integration Management";
    begin
        // SetSecurityFilterOnRespCenter;
        // CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled;
        // FILTERGROUP(2);
        // //SETFILTER("Posting Date",'%1..',050318D);
        // SETRANGE("Capillary Posted",TRUE);
        // SETFILTER("Sales Order Type",'%1',"Sales Order Type"::Online);
        // SETFILTER("Order ID",'<>%1','');
        // FILTERGROUP(0);//tk
    end;

    var
        DocExchStatusStyle: Text;
        CRMIntegrationEnabled: Boolean;
        CRMIsCoupledToRecord: Boolean;
        RecpurcLine12: Record 113;
        //WBU: Codeunit "50000";//tk
        Admin: Boolean;
        FileManagement: Codeunit 419;
        LocalPathAndFileName: Text;

    local procedure ShowInvoiceTypeDoc(InvoiceType: Option Taxable,"Bill of Supply",Export,Supplementary,"Debit Notes")
    var
        SalesInvHeader: Record 112;
    begin
        SETRANGE("Invoice Type", InvoiceType);
        IF FINDSET THEN
            PAGE.RUN(PAGE::"Posted Sales Invoices", Rec);
    end;
}

