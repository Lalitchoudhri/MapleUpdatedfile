page 50044 "Credit Card Payment List"
{
    CardPageID = "Credit Card Payment Entry";
    PageType = List;
    SourceTable = 50007;
    SourceTableView = WHERE(TransType = CONST(CreditCard),
                            LineNo = CONST(10000));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(DenominationNo; DenominationNo)
                {
                    ApplicationArea = All;
                }
                field("Dinomination Date"; "Dinomination Date")
                {
                    ApplicationArea = All;
                }
                field(Branch; Branch)
                {
                    ApplicationArea = All;
                }
                field("Machine Name"; "Machine Name")
                {
                    DrillDown = false;
                    Lookup = false;
                    TableRelation = "Standard Text"."Credit Cd Machine Code" WHERE("Credit Card Machine" = CONST(true));
                    Visible = false;
                    ApplicationArea = All;
                }
                field("TID No"; "TID No")
                {
                    DrillDown = false;
                    Lookup = true;
                    LookupPageID = "Standard Text Codes";
                    TableRelation = "Standard Text"."TID NO" WHERE(TID = CONST(true));
                    Visible = false;
                    ApplicationArea = All;
                }
                field(TotalCreditAmt; TotalCreditAmt)
                {
                    ApplicationArea = All;
                }
                field("Credit CD Bank AC"; "Credit CD Bank AC")
                {
                    ApplicationArea = All;
                }
                field(Remarks; Remarks)
                {
                    ApplicationArea = All;
                }
                field("Document Posted"; "Document Posted")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

