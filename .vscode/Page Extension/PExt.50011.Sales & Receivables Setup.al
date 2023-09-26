#pragma implicitwith disable
pageextension 50011 "Sales & Receivables Setup" extends "Sales & Receivables Setup"
{
    layout
    {
        modify("Allow Document Deletion Before")
        {
            Visible = false;
        }
        addafter("Invoice Rounding")
        {



            field("Credit Limit Hold Active"; Rec."Credit Limit Hold Active")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Credit Limit Hold Active field.';
            }
            field("Overdue Hold Active"; Rec."Overdue Hold Active")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Overdue Hold Active field.';
            }
            field("Discount Hold Active"; Rec."Discount Hold Active")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Discount Hold Active field.';
            }
            field("Price Hold Active"; Rec."Price Hold Active")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Price Hold Active field.';
            }
            field("PDC Hold Active"; Rec."PDC Hold Active")
            {
                Visible = false;
                ToolTip = 'Specifies the value of the PDC Hold Active field.';
                ApplicationArea = All;
            }
            field("Credit Days Hold Active"; Rec."Credit Days Hold Active")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Credit Days Hold Active field.';
            }
            field("Insurance Declaration"; Rec."Insurance Declaration")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Insurance Declaration field.';
            }
            field("PIT Structure"; Rec."PIT Structure")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the PIT Structure field.';
            }
            field("Max. Retail Line Discount %"; Rec."Max. Retail Line Discount %")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Max. Retail Line Discount % field.';
            }
            field("Group Credit Limit Hold Active"; Rec."Group Credit Limit Hold Active")
            {
                Caption = 'Group Credit Limit Hold Active';
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Group Credit Limit Hold Active field.';
            }
            field("Incentive & Claim A/C"; Rec."Incentive & Claim A/C")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Incentive & Claim A/C field.';
            }
            field("Scheme Template"; Rec."Scheme Template")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Scheme Template field.';
            }
            field("Scheme Batch"; Rec."Scheme Batch")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Scheme Batch field.';
            }
            field("24 hrs CR Memo"; Rec."24 hrs CR Memo")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the 24 hrs CR Memo field.';
            }
            // field("GST Dependency Type"; "GST Dependency Type")
            // {
            //     ApplicationArea = all;
            // }
            group("CRT Coupon")
            {
                Caption = 'CRT Coupon';
                field("CRT Approval Code"; Rec."CRT Approval Code")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the CRT Approval Code field.';
                }
                field("CRT Coupon Discount %"; Rec."CRT Coupon Discount %")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the CRT Coupon Discount % field.';
                }
                field("CRT Coupon Validity Days"; Rec."CRT Coupon Validity Days")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the CRT Coupon Validity Days field.';
                }
            }

        }
        addlast(General)
        {
            field("Order Status API URL"; Rec."Order Status API URL")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Order Status API URL field.';
            }
            field(UserName; Rec.UserName)
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the UserName field.';
            }
            field(Passward; Rec.Password)
            {
                ApplicationArea = all;
                ExtendedDatatype = Masked;
                ToolTip = 'Specifies the value of the Password field.';
            }

            // Mapple NG 1.0 START 30062023 - Customer ERP Mapping After Customer Create
            group(ERPCustomerAPI)
            {
                Caption = 'ERP Customer API';

                field("Cust ERP Url"; Rec."Cust ERP Url")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Specifies the value of the Customer ERP API URL field.';
                }
                field("Cust Parm ID"; Rec."Cust Parm ID")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Specifies the value of the Customer Params ID field.';
                }

                field("Auth. User Name"; Rec."Auth. User Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Auth. User Name field.';
                }
                field("Auth. Password"; Rec."Auth. Password")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Auth. User Password field.';
                }
                field("Display JSON"; Rec."Display JSON")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Display JSON field.';
                }

            }
            group("Clock-Me")
            {

                field("Clock-me Vendor ID"; Rec."Clock-me Vendor ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Clock-me Vendor ID field.';
                }
                field("Clock-me Password"; Rec."Clock-me Password")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Clock-me Password field.';
                    ExtendedDatatype = Masked;
                }
                field("Clock-me URL"; Rec."Clock-me URL")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Clock-me URL field.';
                }

                field("Clock-me Show Json"; Rec."Clock-me Show Json")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Clock-me Show Json field.';
                }
            }
            group(Logistic)
            {

                field("Logistic User Name"; Rec."Logistic User Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Logistic User Name field.';
                }
                field("Logistic Password"; Rec."Logistic Password")
                {
                    ApplicationArea = All;
                    ExtendedDatatype = Masked;
                    ToolTip = 'Specifies the value of the Logistic Password field.';
                }
                field("Logistic Token URL"; Rec."Logistic Token URL")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Logistic Token URL field.';
                }
                field("Logistic URL"; Rec."Logistic URL")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Logistic URL field.';
                }
                field("Logistic Invoice URL"; Rec."Logistic Invoice URL")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Logistic Invoice URL field.';
                }
                field("Logistic Show Json"; Rec."Logistic Show Json")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Logistic Show Json field.';
                }
            }
            // Mapple NG 1.0 END 30062023 - Customer ERP Mapping After Customer Create
        }
        addafter(Dimensions)
        {
            group(Shield)
            {
                Caption = 'Shield';
                field("Shield Sales Account"; Rec."Shield Sales Account")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the Shield Sales Account field.';
                }
                field("Cost of Goods Sold- Shield"; Rec."Cost of Goods Sold- Shield")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the Cost of Goods Sold- Shield field.';
                }
                field("Purchase Shield"; Rec."Purchase Shield")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the Purchase Shield field.';
                }
            }
        }
        addafter("Quote Nos.")
        {
            // field("Customer Nos."; "Customer Nos.")
            // {
            //     ApplicationArea = all;
            // }
            field("CRM Customer No."; Rec."CRM Customer No.")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the CRM Customer No. field.';
            }
            field("CRM Payment No."; Rec."CRM Payment No.")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the CRM Payment No. field.';
            }
            field("Retail Customer Nos."; Rec."Retail Customer Nos.")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Retail Customer Nos. field.';
            }
            field("E COM Customer No."; Rec."E COM Customer No.")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the E COM Customer No. field.';
            }
            field("ECOM Payment No."; Rec."ECOM Payment No.")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the ECOM Payment No. field.';
            }
            field("Corporate Customer Nos."; Rec."Corporate Customer Nos.")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Corporate Customer Nos. field.';
            }
            field("B2C Customer No."; Rec."B2C Customer No.")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the B2C Customer No. field.';
            }

        }
        addafter("Post with Job Queue")
        {



            field("Job Queue Priority for Post"; Rec."Job Queue Priority for Post")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Job Queue Priority for Post field.';
            }


        }
        addafter("Post & Print with Job Queue")
        {
            field("Job Q. Prio. for Post & Print"; Rec."Job Q. Prio. for Post & Print")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Job Q. Prio. for Post & Print field.';
            }
        }
        addafter("Background Posting")
        {

            group("VAT Declaration")
            {
                Caption = 'VAT Declaration';
                field("VAT Declaration1"; Rec."VAT Declaration1")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the VAT Declaration1 field.';
                }
                field("VAT Declaration2"; Rec."VAT Declaration2")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the VAT Declaration2 field.';
                }
                field("VAT Declaration3"; Rec."VAT Declaration3")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the VAT Declaration3 field.';
                }
            }
        }

    }

    actions
    {

    }

    var
        myInt: Integer;
}
#pragma implicitwith restore
