page 50056 "F Form Updation"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    Permissions = TableData 5740 = rm;
    SourceTable = 5746;
    SourceTableView = SORTING("No.");

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Transfer Order No."; "Transfer Order No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Transfer-from Code"; "Transfer-from Code")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Transfer-from Name"; "Transfer-from Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Transfer-to Code"; "Transfer-to Code")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Transfer-to Name"; "Transfer-to Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Shipment Date"; "Shipment Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Receipt Date"; "Receipt Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                // field("Form Code"; "Form Code")
                // {
                // }
                // field("F Form No."; "F Form No.")
                // {

                //     trigger OnValidate()
                //     begin
                //         "Form Code" := 'F';
                //     end;
                // }
                field("Vendor Invoice No."; "Vendor Invoice No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

