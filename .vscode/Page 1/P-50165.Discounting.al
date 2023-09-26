page 50165 "Discounting"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = 50065;

    layout
    {
        area(content)
        {
            repeater(Repeater)
            {
                field("Entry No"; "Entry No")
                {
                    ApplicationArea = all;
                    editable = false;
                    visible = True;
                }
                field("Discount Type"; Rec."Discount Type")
                {
                    ApplicationArea = all;
                }
                field("From Date"; "From Date")
                {
                    ApplicationArea = all;
                }
                field("To Date"; "To Date")
                {
                    ApplicationArea = all;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;

                }
                field("Discount %"; Rec."Discount %")
                {
                    ApplicationArea = all;
                }
                field("Sales Type"; Rec."Sales Type")
                {
                    ApplicationArea = all;
                }
                field("Maximum % Limit"; Rec."Maximum % Limit")
                {
                    ApplicationArea = all;
                }
                field("Item Category Code"; "Item Category Code")
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    Caption = 'BRAND';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        If "Discount Type" <> 'NO DISCOUNT' then begin
                            rec.TestField("Primary category");

                        end;
                    end;

                }
                field("Primary category"; "Primary category")
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        If "Discount Type" <> 'NO DISCOUNT' then begin
                            rec.TestField("Primary category");

                        end;
                    end;
                }
                field("Secondary category"; "Secondary category")
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        If "Discount Type" <> 'NO DISCOUNT' then begin
                            rec.TestField("Primary category");

                        end;
                    end;
                }
                field("Third category"; "Third category")
                {
                    ApplicationArea = all;
                    //ShowMandatory=true;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        If "Discount Type" <> 'NO DISCOUNT' then begin
                            rec.TestField("Primary category");
                            Rec.TestField("Secondary category");
                        end;
                    end;
                }
                field("Product Category"; Rec."Product Category")
                {



                    ApplicationArea = all;
                    Visible = false;

                }
                field("Active/Inactive"; Rec."Active/Inactive")
                {
                    ApplicationArea = all;
                    Caption = 'Block';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }


    }


    trigger OnClosePage()
    var
        myInt: Integer;
    begin
        If "Discount Type" <> 'NO DISCOUNT' then begin
            rec.TestField("Primary category");
            Rec.TestField("Secondary category");
        end;


    end;





    var
        myInt: Integer;
        table: Record "Item Category";
}