pageextension 50006 "Customer Card" extends "Customer Card"
{
    Editable = true;
    layout
    {
        addafter("No.")
        {
            field("ERP No."; Rec."ERP No.")
            {
                ApplicationArea = all;
                Editable = CustEdit;
                trigger OnAssistEdit()
                var
                    NoSeriesMgt: codeunit "NoSeriesManagement";
                    Cust: Record customer;

                begin
                    WITH Cust DO BEGIN
                        Cust := Rec;
                        IF "No." <> '' THEN BEGIN
                            IF CONFIRM('Do you want to Change Item Code') THEN
                                CLEAR(CustomerTypePage)
                            ELSE
                                ERROR('');
                        END
                        ELSE
                            CLEAR(CustomerTypePage);
                        // Commit();

                        CustomerTypePage.LOOKUPMODE(TRUE);
                        IF CustomerTypePage.RUNMODAL = ACTION::LookupOK THEN BEGIN
                            CustomerTypePage.GETRECORD(CutomerTypeRec);
                            SalesSetup.GET;
                            IF CutomerTypeRec."Customer Type" = CutomerTypeRec."Customer Type"::Retail THEN BEGIN
                                SalesSetup.TESTFIELD("Retail Customer Nos.");
                                "No." := NoSeriesMgt.GetNextNo(SalesSetup."Retail Customer Nos.", TODAY, TRUE);
                                // IF NoSeriesMgt.SelectSeries(SalesSetup."Retail Customer Nos.", Xrec."No. Series", "No. Series") THEN
                                //     NoSeriesMgt.SetSeries("No.");
                            END
                            ELSE
                                IF CutomerTypeRec."Customer Type" = CutomerTypeRec."Customer Type"::Corporate THEN BEGIN
                                    SalesSetup.TESTFIELD("Corporate Customer Nos.");
                                    "No." := NoSeriesMgt.GetNextNo(SalesSetup."Corporate Customer Nos.", TODAY, TRUE);
                                    // IF NoSeriesMgt.SelectSeries(SalesSetup."Corporate Customer Nos.", Xrec."No. Series", "No. Series") THEN
                                    //     NoSeriesMgt.SetSeries("No.");
                                END;
                            //KPPL Start
                            IF CutomerTypeRec."Customer Type" = CutomerTypeRec."Customer Type"::B2C THEN BEGIN
                                SalesSetup.TESTFIELD("B2C Customer No.");
                                "No." := NoSeriesMgt.GetNextNo(SalesSetup."B2C Customer No.", TODAY, TRUE);
                                // IF NoSeriesMgt.SelectSeries(SalesSetup."B2C Customer No.", Xrec."No. Series", "No. Series") THEN
                                //     NoSeriesMgt.SetSeries("No.");
                            END
                            ELSE BEGIN
                                SalesSetup.TESTFIELD("Corporate Customer Nos.");
                                "No." := NoSeriesMgt.GetNextNo(SalesSetup."Corporate Customer Nos.", TODAY, TRUE);
                                // IF NoSeriesMgt.SelectSeries(SalesSetup."Corporate Customer Nos.", XREC."No. Series", "No. Series") THEN
                                //     NoSeriesMgt.SetSeries("No.");
                            END
                            // Kppl End
                        END;
                        // Message('%1', cust."No.");
                        // Message('%1', Rec."No.");
                        rec."ERP No." := cust."No.";
                        //Rec := Cust;//commented
                        Rec."No." := Cust."No.";
                        rec."ERP No." := cust."No.";
                        // rec."No." := Rec."ERP No.";
                        //EXIT;
                        CurrPage.Update();
                    END;


                end;


            }
        }
        modify("No.")
        {
            ApplicationArea = all;
            Visible = false;
        }

        addafter(Name)
        {
            field("Name 2 "; Rec."Name 2")
            {
                ApplicationArea = ALL;
            }
        }
        addafter("Service Zone Code")
        {
            field("PDC Unposted Amount"; "PDC Unposted Amount")
            {
                Editable = CustEdit;
                ApplicationArea = all;
            }
            field("PDC Applied Amount"; "PDC Applied Amount")
            {
                Editable = CustEdit;
                ApplicationArea = all;
            }
            field("PDC Grace Period"; "PDC Grace Period")
            {
                ApplicationArea = all;
                Editable = CustEdit;
            }
            field("Global Dimension 2 Code"; "Global Dimension 2 Code")
            {
                Editable = CustEdit;
                ApplicationArea = all;
            }
            field(Status; Status)
            {
                Caption = 'Approval Status';
                ApplicationArea = all;

                trigger OnValidate()
                begin
                    Check;
                end;
            }
            field("Customer Type"; "Customer Type")
            {
                Editable = CustEdit;
                OptionCaption = ' ,Retail,Corporate,Service';
                ApplicationArea = all;

                trigger OnValidate()
                begin
                    Check;
                end;
            }
            field("Parent Code"; "Parent Code")
            {
                Editable = CustEdit;
                ApplicationArea = all;

                trigger OnValidate()
                begin
                    Check;
                end;
            }
            field("CRM Mobile No."; "CRM Mobile No.")
            {
                Editable = CustEdit;
                ApplicationArea = all;

                trigger OnValidate()
                begin
                    Check;
                end;
            }
            field("Customer Points"; "Customer Points")
            {
                ApplicationArea = all;
            }

        }



        addbefore(Invoicing)
        {

            group("Personal Information")
            {

                Caption = 'Personal Information';
                Editable = CustEdit;


                field(Gender; Gender)
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Marital Status"; "Marital Status")
                {

                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        Check;
                        IF "Marital Status" = "Marital Status"::Married THEN
                            MarriedEnable := TRUE
                        ELSE
                            MarriedEnable := FALSE;
                    end;
                }
                field("Customer Birth Date"; "Customer Birth Date")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Spouse Name"; "Spouse Name")
                {
                    Editable = MarriedEnable;
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Spouse Birth Date"; "Spouse Birth Date")
                {
                    Editable = MarriedEnable;
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Child Name 1"; "Child Name 1")
                {
                    Editable = MarriedEnable;
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Child Name 2"; "Child Name 2")
                {
                    Editable = MarriedEnable;
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Aniversary Date"; "Aniversary Date")
                {
                    Editable = MarriedEnable;
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Child1 Birth  Date"; "Child1 Birth  Date")
                {
                    Editable = MarriedEnable;
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Child2 Birth Date"; "Child2 Birth Date")
                {
                    Editable = MarriedEnable;
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Income Group"; "Income Group")
                {
                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
                field("Age Group"; "Age Group")
                {
                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        Check;
                    end;
                }
            }

            group(Communication)
            {
                Caption = 'Communication';
                field("Phone No.."; "Phone No.")
                {
                    ApplicationArea = all;
                    Importance = Promoted;
                }
                field("Phone No.2."; "Phone No.2")
                {
                    ApplicationArea = all;
                    Caption = 'Phone No.2';
                }


            }
        }






        modify("VAT Registration No.")
        {
            Editable = CustEdit;

            trigger OnAfterValidate()
            begin
                Check;
            end;
        }
        modify(Blocked)
        {
            Visible = false;

            trigger OnAfterValidate()
            begin
                Check;
            end;
        }


        modify(Name)
        {
            Editable = CustEdit;
            ShowMandatory = true;
        }
        modify("Address 2")
        {
            Editable = CustEdit;
            ShowMandatory = true;

            trigger OnAfterValidate()
            begin
                Check;
            end;
        }
        modify("Post Code")
        {
            Editable = CustEdit;
            Importance = Promoted;


            trigger OnAfterValidate()
            begin
                Check;
            end;
        }
        modify(City)
        {
            Editable = CustEdit;


            trigger OnAfterValidate()
            begin
                Check;
            end;
        }
        modify("Country/Region Code")
        {
            Editable = CustEdit;

            trigger OnAfterValidate()
            begin
                Check;
            end;
        }
        modify("State Code")
        {
            Editable = CustEdit;
            trigger OnAfterValidate()
            begin
                Check;
            end;
        }
        modify("Phone No.")
        {
            Editable = true;
            trigger OnAfterValidate()
            begin
                //WIN316++
                CurrPage.UPDATE;
                //WIN316--
            end;
        }
        modify("Phone No.2.")
        {
            Editable = true;

            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                //WIN316++
                CurrPage.UPDATE;
                //WIN316--
            end;
        }
        modify("E-Mail")
        {
            Editable = true;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                //WIN316++
                CurrPage.UPDATE;
                //WIN316--
            end;
        }
        modify("Search Name")
        {
            Editable = CustEdit;

            trigger OnAfterValidate()
            begin
                Check;
            end;
        }
        modify("Balance (LCY)")
        {
            trigger OnDrillDown()
            var
                DtldCustLedgEntry: Record 379;
                CustLedgEntry: Record 21;
            begin
                DtldCustLedgEntry.SETRANGE("Customer No.", "No.");
                COPYFILTER("Global Dimension 1 Filter", DtldCustLedgEntry."Initial Entry Global Dim. 1");
                COPYFILTER("Global Dimension 2 Filter", DtldCustLedgEntry."Initial Entry Global Dim. 2");
                COPYFILTER("Currency Filter", DtldCustLedgEntry."Currency Code");
                CustLedgEntry.DrillDownOnEntries(DtldCustLedgEntry);
            end;

        }
        modify("Credit Limit (LCY)")
        {
            Editable = CustEdit;
            StyleExpr = StyleTxt;

            trigger OnAfterValidate()
            begin
                StyleTxt := SetStyle;
            end;
        }
        modify("Salesperson Code")
        {
            Editable = CustEdit;

            trigger OnAfterValidate()
            begin
                Check;
            end;
        }
        modify("Responsibility Center")
        {
            Editable = CustEdit;

            trigger OnAfterValidate()
            begin
                Check;
            end;
        }
        modify("Service Zone Code")
        {
            Editable = CustEdit;

            trigger OnAssistEdit()
            begin
                Check;
            end;

            trigger OnAfterValidate()
            begin
                Check;
            end;
        }



    }


    actions
    {
        addafter(ApprovalEntries)
        {
            action("Online Map")
            {
                Caption = 'Online Map';
                Image = Map;
                Visible = false;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    DisplayMap;
                end;
            }
            action("e-Commerce Merchant Id")
            {
                Caption = 'e-Commerce Merchant Id';
                ApplicationArea = All;
                // RunObject = Page 16423;
                // RunPageLink = "Customer No."=FIELD("No.");//tk
            }
            action("Send A&pproval Request")
            {
                Caption = 'Send A&pproval Request';
                Image = SendApprovalRequest;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                var
                // ApprovalMgt: Codeunit "439";
                begin
                    // IF Status = Status::"Pending Approval" THEN
                    //   MESSAGE('Customer Already Send for approval')
                    // ELSE
                    // IF Status = Status::Approved THEN
                    //   MESSAGE('Customer is Already Approved')
                    // ELSE
                    // BEGIN
                    //   IF Status = Status::Open THEN BEGIN
                    //     IF ApprovalMgt.PrePostApprovalCheckCustomer(Rec) THEN
                    //       ApprovalMgt.SendCustomerApprovalRequest(Rec);
                    //   END;
                    // END;//tk
                end;
            }
            action("Cancel Approval Re&quest")
            {
                Caption = 'Cancel Approval Re&quest';
                Image = Cancel;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                var
                    ApprovalMgt: Codeunit "Approvals Mgmt.";
                begin
                    IF Status = Status::"Pending Approval" THEN BEGIN
                        // IF ApprovalMgt.CancelCustomerApprovalRequest(Rec,TRUE,TRUE) THEN;
                    END
                    ELSE BEGIN
                        IF Status = Status::Approved THEN
                            MESSAGE('Customer is already Approved, you can not Cancel')
                        ELSE
                            MESSAGE('Customer approval entry not found');
                    END;
                end;
            }

        }
        addbefore(Service)
        {
            group("Credit Card")
            {
                Caption = 'Credit Card';
                Image = CreditCard;
                Visible = false;
                group("Credit Cards")
                {
                    Caption = 'Credit Cards';
                    Image = CreditCard;
                    Visible = false;
                    action("C&redit Cards")
                    {
                        Caption = 'C&redit Cards';
                        Image = CreditCard;
                        ApplicationArea = All;
                        // RunObject = Page "DO Payment Credit Card List";
                        // RunPageLink = "Customer No.=FIELD(No.);
                        // Visible = false;
                    }
                    action("Credit Cards Transaction Lo&g Entries")
                    {
                        Caption = 'Credit Cards Transaction Lo&g Entries';
                        Image = CreditCardLog;
                        ApplicationArea = All;
                        // RunObject = Page 829;
                        //                 RunPageLink = Customer No.=FIELD(No.);
                        // Visible = false;
                    }
                }
            }
        }

    }

    trigger OnOpenPage()
    var
        myInt: Integer;
        MapMgt: codeunit "Online Map Management";
    begin
        ContactEditable := TRUE;
        MapPointVisible := TRUE;
        MarriedEnable := TRUE;
        CustEdit := TRUE;//Win-234 06-03-2019
        ActivateFields;
        IF NOT MapMgt.TestSetup THEN
            MapPointVisible := FALSE;
        IF NOT MapMgt.TestSetup THEN
            MapPointVisible := FALSE;
        If Rec."No." <> '' then begin
            Rec."ERP No." := Rec."No.";
            Rec.Modify();
        End;
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        myInt: Integer;
    begin
        IF CustEdit = TRUE THEN BEGIN
            IF "No." <> '' THEN BEGIN
                TESTFIELD(Name);
                TESTFIELD(Address);
                TESTFIELD("Address 2");
                TESTFIELD("Post Code");
                TESTFIELD("State Code");
                TESTFIELD(City);
                TESTFIELD("Phone No.");
                TESTFIELD("E-Mail");
                TESTFIELD("Gen. Bus. Posting Group");
                IF "GST Customer Type" = "GST Customer Type"::Registered THEN
                    IF STRLEN("GST Registration No.") <> 15 THEN
                        ERROR('GST Registration No must be length of 15');
            END;
        END;
        //WIN316++//CAPILLARY
        IF "Phone No." = '' THEN
            "Not Interested Customer" := TRUE
        ELSE BEGIN
            RecUserSetup.RESET;
            RecUserSetup.SETRANGE(RecUserSetup."User ID", USERID);
            IF RecUserSetup.FINDFIRST THEN BEGIN
                IF RecUserSetup."Location Code" <> '' THEN BEGIN
                    RecLocation.RESET;
                    RecLocation.SETRANGE(Code, RecUserSetup."Location Code");
                    IF RecLocation.FINDFIRST THEN BEGIN
                        IF (RecLocation."Capillary ID" <> '') AND (RecLocation."Capillary Password" <> '') THEN
                            RecCreateTrnXml.Create_customer(Rec."No.");
                    END;
                END;
            END;
        END;
        //WIN316--
        IF "Customer Points" <> 0 THEN BEGIN
            "Customer Points" := 0;
            MODIFY
        END; //Win-234 25-01-2019


    end;


    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        ActivateFields;
        StyleTxt := SetStyle;
        //win344++
        IF "Marital Status" = "Marital Status"::Married THEN
            MarriedEnable := TRUE
        ELSE
            MarriedEnable := FALSE;
        //win344--
        //Win-234+++++++++++++++++++
        //CustEdit:=TRUE;
        //MESSAGE(USERID);

        //RecUserSetup.Get(userId);
        IF NOT (USERID IN ['ACC4EXE', 'ADMIN', 'MAPLEIT', 'ANIKETCHAURASIYA']) THEN BEGIN //kppl-rj
            RecSIH.RESET;
            RecSIH.SETRANGE("Sell-to Customer No.", Rec."No.");
            IF RecSIH.FINDFIRST THEN BEGIN
                CustEdit := FALSE;
            END ELSE
                CustEdit := TRUE;
        END ELSE
            IF USERID IN ['ACC4EXE', 'ADMIN', 'MAPLEIT', 'ANIKETCHAURASIYA'] THEN
                CustEdit := TRUE;

        /*IF (USERID = 'MAPLEIT') OR (USERID='ADMIN') THEN
          CustEdit:=TRUE;*/
        //Win-234-------------------06-03-2019
        If Rec."No." <> '' then BeGIN
            Rec."ERP No." := Rec."No.";
            Rec.Modify();
        End;
    end;




    var
        myInt: Integer;

        MapPointVisible: Boolean;

        ContactEditable: Boolean;

        SocialListeningSetupVisible: Boolean;

        SocialListeningVisible: Boolean;
        // RecCreateTrnXml: Codeunit 50012;
        RecUserSetup: Record 91;
        MarriedEnable: Boolean;
        RecLocation: Record 14;
        RecSIH: Record 112;
        CustEdit: Boolean;
        StyleTxt: Text;
        RecCreateTrnXml: Codeunit "Create Transaction XML";
        CutomerTypeRec: Record "Customer";
        CustomerTypePage: Page "Customer Type Selection";
        SalesSetup: Record "Sales & Receivables Setup";



    local procedure Check()
    var
        RecSIH: Record 112;
    begin
        IF "No." <> '' THEN BEGIN
            // RecUserSetup.Get(UserId);
            IF NOT (USERID IN ['ACC4EXE', 'ADMIN', 'MAPLEIT']) THEN BEGIN
                RecSIH.RESET;
                RecSIH.SETRANGE("Sell-to Customer No.", Rec."No.");
                IF RecSIH.FINDFIRST THEN BEGIN
                    ERROR('Not Allowed to Change');
                END;
            END;
        END;   //Win-234 09-05-2019//tk
    end;

}