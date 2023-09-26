pageextension 50001 "PurchaseOrder Subform" extends "Purchase Order Subform"
{
    layout
    {

        addbefore("IC Partner Code")
        {
            field("UPN Code"; "UPN Code")
            {
                Style = Strong;
                StyleExpr = TRUE;
                ApplicationArea = all;
            }
            field("Vendor Part Code Long"; "Vendor Part Code Long")
            {
                Caption = 'Vendor Part Code';
                ApplicationArea = all;
            }
            field("Vendor Item No."; "Vendor Item No.")
            {
                Visible = false;
                ApplicationArea = all;
            }

            field("Ingram Part Code"; "Ingram Part Code")
            {
                Editable = true;
                ApplicationArea = all;
            }
            field("IMEI No."; "IMEI No.")
            {
                Style = Strong;
                StyleExpr = TRUE;
                Visible = True;
                ApplicationArea = all;
            }
            field("Item Serial No"; "Item Serial No")
            {
                Caption = 'Item Serial Number';
                Style = StrongAccent;
                StyleExpr = TRUE;
                Visible = false;
                ApplicationArea = all;

                trigger OnValidate()
                begin
                    VALIDATE(Quantity, 1);
                    WBU.NextLine();
                end;
            }
            field("MRP Value"; "MRP Value")
            {
                ApplicationArea = all;
            }

        }
        addafter("Planned Receipt Date")
        {
            field("Primary category"; "Primary category")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("Secondary category"; "Secondary category")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("Third category"; "Third category")
            {
                Editable = false;
                ApplicationArea = all;
            }

            field("Ingram Order No."; "Ingram Order No.")
            {
                Editable = false;
                ApplicationArea = all;
            }
            field("Ingram Sub Order No."; "Ingram Sub Order No.")
            {
                Editable = false;
                ApplicationArea = all;
            }

        }
        addafter("Total Amount Excl. VAT")
        {
            field(RefreshTotals; RefreshMessageText)
            {
                DrillDown = true;
                Editable = false;
                Enabled = RefreshMessageEnabled;
                ShowCaption = false;
                ApplicationArea = all;

                trigger OnDrillDown()
                begin
                    DocumentTotals.PurchaseRedistributeInvoiceDiscountAmounts(Rec, VATAmount, TotalPurchaseLine);
                    DocumentTotals.PurchaseUpdateTotalsControls(
                      Rec, TotalPurchaseHeader, TotalPurchaseLine, RefreshMessageEnabled,
                      TotalAmountStyle, RefreshMessageText, InvDiscAmountEditable, VATAmount);
                end;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
        Text000: Label 'Unable to run this function while in View mode.';
        PurchPriceCalcMgt: Codeunit 7010;
        DocumentTotals: Codeunit 57;
        RefreshMessageEnabled: Boolean;
        RefreshMessageText: Text;
        TypeChosen: Boolean;
        UpdateInvDiscountQst: Label 'One or more lines have been invoiced. The discount distributed to invoiced lines will not be taken into account.\\Do you want to update the invoice discount?';
        WBU: Codeunit 50000;
        InvDiscAmountEditable: Boolean;
        TotalAmountStyle: Text;
        UpdateAllowedVar: Boolean;
}