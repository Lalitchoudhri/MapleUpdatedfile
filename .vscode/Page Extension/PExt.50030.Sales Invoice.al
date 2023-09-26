pageextension 50030 "SalesInvoice" extends "Sales Invoice"
{
    layout
    {
        addafter("No.")
        {
            field("Sales Order Type"; "Sales Order Type")
            {
                Visible = false;
                ApplicationArea = all;
            }
        }
        addafter("Document Date")
        {
            field("Total Shield Value"; "Total Shield Value")
            {
                ApplicationArea = all;
            }
            field("Shield Payment Amount"; "Shield Payment Amount")
            {
                ApplicationArea = all;
            }
            field(Shield; Shield)
            {
                ApplicationArea = all;
            }
            field("FA Disposal"; "FA Disposal")
            {
                ApplicationArea = all;
            }
            field("Debit Note"; "Debit Note")
            {
                ApplicationArea = all;
            }
            field("CIN Number"; recComp."CIN no")
            {
                ApplicationArea = all;

            }


        }
        // addafter("VAT Bus. Posting Group")
        // {
        //     field(GetCreditcardNumber; GetCreditcardNumber)
        //     {
        //         Caption = 'Cr. Card Number (Last 4 Digits)';
        //     }
        //     field("Credit Card No."; "Credit Card No.")
        //     {
        //     }
        // }

    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
        recComp: Record "Company Information";
}