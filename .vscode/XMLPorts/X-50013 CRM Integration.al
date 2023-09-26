xmlport 50013 "CRM Integration"
{
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement("CRM Integration"; "CRM Integration")
            {
                AutoReplace = false;
                MinOccurs = Once;
                XmlName = 'CRM_Integration';
                fieldelement("Customer_No."; "CRM Integration"."Customer No.")
                {
                }
                fieldelement(Customer_Name; "CRM Integration"."Customer Name")
                {
                }
                fieldelement(Customer_Address; "CRM Integration"."Customer Address")
                {
                }
                fieldelement(City; "CRM Integration".City)
                {
                }
                fieldelement(State_Code; "CRM Integration"."State Code")
                {
                }
                fieldelement("Mobile_No."; "CRM Integration"."Mobile No.")
                {
                }
                fieldelement(GST_Registration_No; "CRM Integration"."GST Registration No.")
                {
                }
                fieldelement(GST_Registration_Type; "CRM Integration"."GST Registration Type")
                {
                }
                fieldelement(GST_Customer_Type; "CRM Integration"."GST Customer Type")
                {
                }
                fieldelement(Document_Type; "CRM Integration"."Document Type")
                {

                    trigger OnAfterAssignField()
                    begin
                        CreateCustomer("CRM Integration"."Mobile No.");
                    end;
                }
                fieldelement(Posting_Date; "CRM Integration"."Posting Date")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Document_Date; "CRM Integration"."Document Date")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Branch_Code; "CRM Integration"."Shortcut Dimension 1 Code")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Vertical_code; "CRM Integration"."Shortcut Dimension 2 Code")
                {
                    MinOccurs = Zero;
                }
                //fieldelement(Structure; "CRM Integration".Structure)
                fieldelement(GST_Credit; "CRM Integration"."GST Credit") //TK
                {
                    MinOccurs = Zero;
                }
                fieldelement("CRM_Invoice_No."; "CRM Integration"."CRM invoice No")
                {
                    MinOccurs = Zero;
                }
                fieldelement("Invoice_No._toApply"; "CRM Integration"."Invocie No to Apply")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Location_Code; "CRM Integration"."Location Code")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Nature_Of_Supply; "CRM Integration"."Nature of Supply")
                {
                    MinOccurs = Zero;
                }
                fieldelement(GST_Without_Payment_of_Duty; "CRM Integration"."GST Without Payment of Duty")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Type; "CRM Integration".Type)
                {
                    MinOccurs = Zero;
                }
                fieldelement("No."; "CRM Integration"."No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Quantity; "CRM Integration".Quantity)
                {
                    MinOccurs = Zero;
                }
                fieldelement(Unit_Price_With_Tax; "CRM Integration"."Unit Price With Tax")
                {
                    MinOccurs = Zero;
                }
                fieldelement(GST_Group_Code; "CRM Integration"."GST Group Code")
                {
                    MinOccurs = Zero;
                }
                fieldelement(HSN_SAC_Code; "CRM Integration"."HSN/SAC Code")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Invoice_Type; "CRM Integration"."Invoice Type")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Bal_Acc_No; "CRM Integration"."Bal. Account No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Cash_Amount; "CRM Integration"."Cash Amount")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Narration; "CRM Integration".Narration)
                {
                    MinOccurs = Zero;
                }
                fieldelement(Credit_Card_Machine_Name; "CRM Integration"."Credit Card Machine Name")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Credit_Card_Bal_Acc_no; "CRM Integration"."Bal. Account No.CC")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Credit_Card_No; "CRM Integration"."Credit Card No")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Credit_Card_Amount; "CRM Integration"."Credit Card Amount")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Debit_Card_Machine_Name; "CRM Integration"."Debit Card Machine Name")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Debit_Card_Bal_Acc_no; "CRM Integration"."Bal. Account No.DC")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Debit_Card_No; "CRM Integration"."Debit Card No")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Debit_Card_Amount; "CRM Integration"."Debit Card Amount")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Cheque_No; "CRM Integration"."Cheque No")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Cheque_Date; "CRM Integration"."Cheque Date")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Cheque_Bal_Acc_no; "CRM Integration"."Bal. Account No.Cheque")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Cheque_Amount; "CRM Integration"."Cheque Amount")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Cheque_Narration; "CRM Integration"."Narration For Cheque")
                {
                    MinOccurs = Zero;
                }
                fieldelement("NEFT_RTGS_EFT_No."; "CRM Integration"."NEFT/RTGS/EFT No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(NEFT_RTGS_EFT_Date; "CRM Integration"."NEFT/RTGS/EFT  Date")
                {
                    MinOccurs = Zero;
                }
                fieldelement(NEFT_RTGS_EFT_Bal_Acc_no; "CRM Integration"."Bal. Account No.NFFT")
                {
                    MinOccurs = Zero;
                }
                fieldelement(NEFT_RTGS_EFT_Amount; "CRM Integration"."NEFT/RTGS/EFT Amount")
                {
                    MinOccurs = Zero;
                }
                fieldelement(NEFT_RTGS_EFT_Narration; "CRM Integration"."Narration For NFFT")
                {
                    MinOccurs = Zero;
                }
                fieldelement(apptodoctype; "CRM Integration"."Apply to doc. Type")
                {
                    MinOccurs = Zero;
                }
                fieldelement(appdocno; "CRM Integration"."Apply to Doc. No.")
                {
                    MinOccurs = Zero;
                }
            }

            trigger OnAfterAssignVariable()
            begin

                CRMRep.RUN;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    var
        RecCustomer: Record "Customer";
        RecCust: Record "Customer";
        qty: Decimal;
        RecLoc: Record "Location";
        SalesPost: Codeunit 81;
        RecCRMInt: Record "CRM Integration";
        RecGenJnlLine: Record "Gen. Journal Line";
        LineNo1: Integer;
        GenJnlPostLine: Codeunit 12;
        DoucNo: Code[20];
        NoSeriesMgt: Codeunit 396;
        SRsetup: Record "Sales & Receivables Setup";
        CRMRep: Report 50046;
        custno: Code[20];

    //  [Scope('Internal')]
    procedure CreateCustomer("Mobile No.": Code[20])
    begin
        IF NOT "CRM Integration"."Customer Created" THEN BEGIN
            CLEAR(RecCustomer."GST Registration No.");
            RecCustomer.RESET;
            RecCustomer.SETRANGE(RecCustomer."CRM Mobile No.", "CRM Integration"."Mobile No.");
            IF NOT RecCustomer.FINDFIRST THEN BEGIN
                SRsetup.GET;
                custno := NoSeriesMgt.GetNextNo(SRsetup."CRM Customer No.", WORKDATE, TRUE);
                RecCustomer."No." := custno;
                RecCustomer.Name := "CRM Integration"."Customer Name";
                RecCustomer.Address := COPYSTR("CRM Integration"."Customer Address", 1, 50);
                RecCustomer."Address 2" := COPYSTR("CRM Integration"."Customer Address", 51, 100);
                RecCustomer.City := "CRM Integration".City;
                RecCustomer.VALIDATE("State Code", "CRM Integration"."State Code");

                RecCustomer."CRM Mobile No." := "CRM Integration"."Mobile No.";
                //RecCustomer.VALIDATE("GST Registration No.","CRM Integration"."GST Registration No.");
                RecCustomer.VALIDATE("GST Registration No.", "CRM Integration"."GST Registration No.");
                RecCustomer."GST Registration Type" := "CRM Integration"."GST Registration Type";
                RecCustomer."GST Customer Type" := "CRM Integration"."GST Customer Type";

                RecCustomer.VALIDATE("Customer Posting Group", 'SERVICE');
                RecCustomer.VALIDATE("Gen. Bus. Posting Group", 'SERVICE');
                RecCustomer.INSERT;
                COMMIT;
                "CRM Integration"."Customer Created" := TRUE;
                //   MESSAGE('Customer Created');
            END;
        END;
    end;
}

