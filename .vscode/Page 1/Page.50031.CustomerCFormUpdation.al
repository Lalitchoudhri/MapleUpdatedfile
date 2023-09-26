page 50031 "Customer  C Form Updation"
{
    Caption = 'Customer  C Form Updation';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    Permissions = TableData 112 = rimd;
    RefreshOnActivate = true;
    SourceTable = 112;
    SourceTableView = WHERE(State = FILTER(<> 'MH'));//,
                                                     // Form Code=FILTER(<>' '));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Sell-to Customer No."; "Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Location Code"; "Location Code")
                {
                    ApplicationArea = All;
                }
                field("Document Date"; "Document Date")
                {
                    Caption = 'Document Date';
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Sell-to Customer Name"; "Sell-to Customer Name")
                {
                    ApplicationArea = All;
                }
                field(State; State)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                // field("Form Code";"Form Code")
                // {
                // }
                // field("Form No.";"Form No.")
                // {
                // }
                // field("Amount to Customer";"Amount to Customer")
                // {
                // }
                // field(RecCust."C.S.T. No.";RecCust."C.S.T. No.")
                // {
                //     Caption = 'C.S.T. No.';
                //     Editable = false;
                // }
                // field(RecCust."T.I.N. No.";RecCust."T.I.N. No.")
                // {
                //     Caption = 'T.I.N. No.';
                //     Editable = false;
                // }//tk
                field(TaxAmount; TaxAmount)
                {
                    Caption = 'Tax Amount';
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Form- C Used List ")
            {
                Enabled = false;
                Promoted = true;
                ApplicationArea = All;
                // RunObject = Report 33020853;
            }
            action("Form- C Pending List")
            {
                Enabled = false;
                Promoted = true;
                ApplicationArea = All;
                //RunObject = Report 33020854;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        RecCust.GET("Sell-to Customer No.");
        TaxAmount := 0;
        SalesInvLine.SETRANGE("Document No.", "No.");
        IF SalesInvLine.FIND('-') THEN
            REPEAT
                TaxAmount := TaxAmount;// + SalesInvLine."Tax Amount";//tk
            UNTIL SalesInvLine.NEXT = 0;
    end;

    var
        RecCust: Record 18;
        SalesInvLine: Record 113;
        TaxAmount: Decimal;
}

