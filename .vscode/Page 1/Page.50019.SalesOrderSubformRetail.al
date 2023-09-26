page 50019 "Sales Order Subform Retail"
{
    AutoSplitKey = true;
    Caption = 'Lines';
    DelayedInsert = false;
    Editable = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    UsageCategory = Lists;
    ApplicationArea = all;
    PageType = ListPart;
    SaveValues = true;
    SourceTable = 37;
    SourceTableView = WHERE("Document Type" = FILTER(Order));

    layout
    {

        area(content)
        {
            repeater(Repeater)
            {

                field(Type; Type)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        // TypeOnAfterValidate;//tk
                        // NoOnAfterValidate;//tk
                    end;
                }
                // field("Excise Accounting Type";"Excise Accounting Type")
                // {
                //     Visible = false;
                // }//tk
                field("UPN Code"; "UPN Code")
                {
                    Style = Strong;
                    StyleExpr = TRUE;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        IF "UPN Code" <> '' THEN
                            QtyEditable := TRUE
                        ELSE
                            QtyEditable := FALSE;
                        CurrPage.UPDATE;
                    end;
                }
                field("Eleva Product Serial No."; Rec."Eleva Product Serial No.")
                {
                    ApplicationArea = all;
                    Editable = true;
                }
                field("Salesperson Code"; "Salesperson Code")
                {
                    ApplicationArea = All;
                }
                field("Item Serial No."; "Item Serial No.")
                {
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        ReservationEntry1: Record 337;
                    begin
                        /*
                        IF "Item Serial No." <> '' THEN
                        BEGIN
                          ILE.RESET;
                          ILE.SETCURRENTKEY("Serial No.");
                          ILE.SETFILTER("Serial No.","Item Serial No.");
                          ILE.SETFILTER(Open,'=%1',TRUE);
                          IF ILE.FINDFIRST THEN BEGIN
                            //Type := Type::Item;
                            VALIDATE("No.",ILE."Item No.");
                            VALIDATE(Quantity,1);
                            UpdateSerialNo;
                          END
                          ELSE
                            MESSAGE('Invalid Serial Number');
                        END;
                        */
                        //HR-
                        IF "Item Serial No." = '' THEN BEGIN
                            ReservationEntry1.SETRANGE("Source Type", 37);
                            ReservationEntry1.SETRANGE("Source Subtype", 1);
                            ReservationEntry1.SETRANGE("Source ID", "Document No.");
                            ReservationEntry1.SETRANGE("Source Ref. No.", "Line No.");
                            IF ReservationEntry1.FINDFIRST THEN
                                ReservationEntry1.DELETEALL;
                            EXIT;
                        END;
                        //HR+
                        IF "Item Serial No." <> '' THEN BEGIN
                            QtyEditable := FALSE;
                            IF GUIALLOWED THEN
                                WBU.NextLine();
                        END
                        ELSE
                            QtyEditable := TRUE;
                        // IF Rec."Unit Price Incl. of Tax" <> 0 THEN BEGIN
                        //     Rec.Validate("Price Inclusive of Tax", true);
                        //     rec.modify;
                        // END;
                        CurrPage.UPDATE;

                    end;
                }
                field("IMEI No."; "IMEI No.")
                {
                    Editable = false;
                    Style = Strong;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("MRP Value"; "MRP Value")
                {
                    Editable = false;
                    Style = Strong;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        // ShowShortcutDimCode(ShortcutDimCode);
                        // NoOnAfterValidate;//tk
                    end;
                }
                field("Primary category"; "Primary category")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Secondary category"; "Secondary category")
                {
                    ApplicationArea = all;
                    Editable = false;

                }
                field("Third category"; "Third category")
                {
                    ApplicationArea = all;
                    Editable = false;

                }
                field(SKU1; SKU1)
                {
                    ApplicationArea = all;
                }
                field("Product Category"; "Product Category")
                {
                    ApplicationArea = all;
                }
                field("Entry No"; "Entry No")
                {
                    Caption = 'Discount Entry No';
                    ApplicationArea = all;
                    Visible = true;
                    Editable = true;
                }
                field("Discount Type"; Rec."Discount Type")
                {
                    ApplicationArea = all;
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    BlankZero = true;
                    Caption = 'Maple Disc. %';
                    Editable = EditableDiscount;
                    //Editable = NotFreeItem;
                    Visible = true;
                    Width = 6;
                    ApplicationArea = all;
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    Caption = 'Maple Disc. Amt';
                    Editable = EditableDiscount;
                    //Editable = NotFreeItem;
                    Visible = True;
                    Width = 10;
                    ApplicationArea = all;

                }
                field("Discount %"; "Discount %")
                {
                    //ApplicationArea = all;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Discount Amount"; "Discount Amount")
                {
                    // ApplicationArea = all;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Net Amount"; "Net Amount")
                {
                    ApplicationArea = all;
                    Editable = false;

                }
                field("Free Item"; "Free Item")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        NotFreeItem := NOT "Free Item";
                        IF GUIALLOWED THEN BEGIN
                            WBU.RefreshStatistics();
                            WBU.RefreshPage();
                        END;
                    end;
                }
                field("Scheme Code"; "Scheme Code")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                // field("Cross-Reference No."; "Cross-Reference No.")
                // {
                //     Visible = false;

                //     trigger OnLookup(var Text: Text): Boolean
                //     begin
                //         CrossReferenceNoLookUp;
                //         InsertExtendedText(FALSE);
                //         NoOnAfterValidate;
                //     end;

                //     trigger OnValidate()
                //     begin
                //         CrossReferenceNoOnAfterValidat;
                //         NoOnAfterValidate;
                //     end;
                // }
                field("IC Partner Code"; "IC Partner Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                // field("Claim Deferred Excise"; "Claim Deferred Excise")
                // {
                //     Visible = false;
                // }
                // field("Direct Debit To PLA / RG"; "Direct Debit To PLA / RG")
                // {
                //     Visible = false;
                // }
                // field("Service Tax Registration No."; "Service Tax Registration No.")
                // {
                //     Visible = false;
                // }
                field("IC Partner Ref. Type"; "IC Partner Ref. Type")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("IC Partner Reference"; "IC Partner Reference")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Variant Code"; "Variant Code")
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        VariantCodeOnAfterValidate;
                    end;
                }
                field("Substitution Available"; "Substitution Available")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Purchasing Code"; "Purchasing Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Nonstock; Nonstock)
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    QuickEntry = false;
                    ApplicationArea = All;
                }
                field("Location Code"; "Location Code")
                {
                    Editable = True;
                    ApplicationArea = All;
                    //QuickEntry = false;
                    //Visible = false;

                    trigger OnValidate()
                    begin
                        LocationCodeOnAfterValidate;
                    end;
                }
                field(Quantity; Quantity)
                {
                    BlankZero = true;
                    Caption = 'Qty';
                    Editable = true;
                    Width = 6;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        QuantityOnAfterValidate;
                    end;
                }
                field("Drop Shipment"; "Drop Shipment")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                // field(MRP; MRP)
                // {
                //     Visible = false;
                // }
                // field("MRP Price"; "MRP Price")
                // {
                //     Visible = false;
                // }
                // field("Abatement %"; "Abatement %")
                // {
                //     Visible = false;
                // }
                // field("PIT Structure"; "PIT Structure")
                // {
                //     Editable = false;
                //     Visible = false;
                // }
                field("Price Inclusive of Tax"; "Price Inclusive of Tax")
                {
                    Editable = False;
                    ApplicationArea = All;
                    //Editable = True;
                    //Visible = false;
                }
                field("Unit of Measure Code"; "Unit of Measure Code")
                {
                    QuickEntry = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        UnitofMeasureCodeOnAfterValida;
                    end;
                }
                field("Unit Price Incl. of Tax"; "Unit Price Incl. of Tax")
                {
                    Editable = false;
                    Visible = true;
                    Width = 10;
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        SalesHeader: Record 36;
                    begin
                        //SalesHeader.GET("Document Type","Document No.");
                        //CalculateStructures(SalesHeader);
                        //WBU.RefreshStatistics
                    end;
                }
                field("Special Order"; "Special Order")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Return Reason Code"; "Return Reason Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Bin Code"; "Bin Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(Shield; Shield)
                {
                    Editable = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shield Type"; "Shield Type")
                {
                    Editable = NotFreeItem;
                    ApplicationArea = All;
                }
                field("Shield Cost"; "Shield Cost")
                {
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shield Value"; "Shield Value")
                {
                    Editable = NotFreeItem;
                    Width = 10;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        // CurrPage.UPDATE(TRUE);
                    end;
                }
                field("GST Place of Supply"; "GST Place of Supply")
                {
                    ApplicationArea = All;
                }
                field("GST Group Code"; "GST Group Code")
                {
                    ApplicationArea = All;
                }
                field("GST Group Type"; "GST Group Type")
                {
                    ApplicationArea = All;
                }
                // field("GST Base Amount"; "GST Base Amount")
                // {
                // }
                // field("GST %"; "GST %")
                // {
                // }
                // field("Total GST Amount"; "Total GST Amount")
                // {
                // }
                field("HSN/SAC Code"; "HSN/SAC Code")
                {
                    ApplicationArea = All;
                }
                field("GST Jurisdiction Type"; "GST Jurisdiction Type")
                {
                    ApplicationArea = All;
                }
                // field("TCS Nature of Collection"; "TCS Nature of Collection")
                // {
                //     Visible = false;
                // }
                field(Reserve; Reserve)
                {
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        ReserveOnAfterValidate;
                    end;
                }
                field("Qty. to Assemble to Order"; "Qty. to Assemble to Order")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        ShowAsmToOrderLines;
                    end;

                    trigger OnValidate()
                    begin
                        QtyToAsmToOrderOnAfterValidate;
                    end;
                }
                field("Purchase Order No."; "Purchase Order No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Reserved Quantity"; "Reserved Quantity")
                {
                    BlankZero = true;
                    QuickEntry = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit of Measure"; "Unit of Measure")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit Cost (LCY)"; "Unit Cost (LCY)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field(SalesPriceExist; PriceExists)
                {
                    Caption = 'Sales Price Exists';
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit Price"; "Unit Price")
                {
                    BlankZero = true;
                    Editable = true;
                    Width = 10;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        TESTFIELD("Price Inclusive of Tax", FALSE);
                    end;
                }
                field("Line Amount"; "Line Amount")
                {
                    BlankZero = true;
                    Editable = PriceEditable;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        TESTFIELD("Price Inclusive of Tax", FALSE);
                    end;
                }
                field(SalesLineDiscExists; LineDiscExists)
                {
                    Caption = 'Sales Line Disc. Exists';
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Scheme %"; "Scheme %")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Scheme Amount"; "Scheme Amount")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Scheme Vendor"; "Scheme Vendor")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Claim %"; "Claim %")
                {
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Claim Amount"; "Claim Amount")
                {
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("MRP Discount %"; "MRP Discount %")
                {
                    Caption = 'Maple Discount %';
                    Visible = false;
                    ApplicationArea = All;
                }
                field("MRP Discount Amount"; "MRP Discount Amount")
                {
                    Caption = 'Maple Discount Amount';
                    Visible = false;
                    ApplicationArea = All;
                }

                field("Prepayment %"; "Prepayment %")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Prepmt. Line Amount"; "Prepmt. Line Amount")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Prepmt. Amt. Inv."; "Prepmt. Amt. Inv.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("shield Due Date"; "shield Due Date")
                {
                    Caption = 'Shield Due Date';
                    ApplicationArea = All;
                }
                // field("Service Tax Group"; "Service Tax Group")
                // {
                //     Visible = true;
                // }
                field(AMC; AMC)
                {
                    Caption = 'APP';
                    Visible = false;
                    ApplicationArea = All;
                }
                field("AMC Due Date"; "AMC Due Date")
                {
                    Caption = 'App Due Date';
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Warranty Exp. Dt"; "Warranty Exp. Dt")
                {
                    ApplicationArea = All;
                }
                // field("CIF Amount"; "CIF Amount")
                // {
                //     Visible = false;
                // }
                // field("BCD Amount"; "BCD Amount")
                // {
                //     Visible = false;
                // }
                // field("BED Amount"; "BED Amount")
                // {
                //     Visible = false;
                // }
                // field("AED(GSI) Amount"; "AED(GSI) Amount")
                // {
                //     Visible = false;
                // }
                // field("AED(TTA) Amount"; "AED(TTA) Amount")
                // {
                //     Visible = false;
                // }
                // field("SED Amount"; "SED Amount")
                // {
                //     Visible = false;
                // }
                // field("SAED Amount"; "SAED Amount")
                // {
                //     Visible = false;
                // }
                // field("CESS Amount"; "CESS Amount")
                // {
                //     Visible = false;
                // }
                // field("NCCD Amount"; "NCCD Amount")
                // {
                //     Visible = false;
                // }
                // field("ADE Amount"; "ADE Amount")
                // {
                //     Visible = false;
                // }
                // field("ADET Amount"; "ADET Amount")
                // {
                //     Visible = false;
                // }
                // field("eCess Amount"; "eCess Amount")
                // {
                //     Visible = false;
                // }
                // field("SHE Cess Amount"; "SHE Cess Amount")
                // {
                //     Visible = false;
                // }
                // field("ADC VAT Amount"; "ADC VAT Amount")
                // {
                //     Visible = false;
                // }
                // field(Supplementary; Supplementary)
                // {
                //     Visible = false;
                // }
                // field("Source Document Type"; "Source Document Type")
                // {
                //     Visible = false;
                // }
                // field("Source Document No."; "Source Document No.")
                // {
                //     Visible = false;
                // }
                field("Allow Invoice Disc."; "Allow Invoice Disc.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Inv. Discount Amount"; "Inv. Discount Amount")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Qty. to Ship"; "Qty. to Ship")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        IF "Qty. to Asm. to Order (Base)" <> 0 THEN BEGIN
                            CurrPage.SAVERECORD;
                            CurrPage.UPDATE(FALSE);
                        END;
                    end;
                }
                field("Quantity Shipped"; "Quantity Shipped")
                {
                    BlankZero = true;
                    QuickEntry = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Qty. to Invoice"; "Qty. to Invoice")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Quantity Invoiced"; "Quantity Invoiced")
                {
                    BlankZero = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Prepmt Amt to Deduct"; "Prepmt Amt to Deduct")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Prepmt Amt Deducted"; "Prepmt Amt Deducted")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Allow Item Charge Assignment"; "Allow Item Charge Assignment")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Qty. to Assign"; "Qty. to Assign")
                {
                    BlankZero = true;
                    QuickEntry = false;
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        CurrPage.SAVERECORD;
                        ShowItemChargeAssgnt;
                        UpdateForm(FALSE);
                    end;
                }
                field("Qty. Assigned"; "Qty. Assigned")
                {
                    BlankZero = true;
                    QuickEntry = false;
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        CurrPage.SAVERECORD;
                        ShowItemChargeAssgnt;
                        CurrPage.UPDATE(FALSE);
                    end;
                }
                field("Requested Delivery Date"; "Requested Delivery Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Promised Delivery Date"; "Promised Delivery Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Planned Delivery Date"; "Planned Delivery Date")
                {
                    QuickEntry = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Planned Shipment Date"; "Planned Shipment Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shipment Date"; "Shipment Date")
                {
                    QuickEntry = false;
                    Visible = false;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        // ShipmentDateOnAfterValidate;//tk
                    end;
                }
                field("Shipping Agent Code"; "Shipping Agent Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shipping Time"; "Shipping Time")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Work Type Code"; "Work Type Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shipping Agent Service Code"; "Shipping Agent Service Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Whse. Outstanding Qty."; "Whse. Outstanding Qty.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Whse. Outstanding Qty. (Base)"; "Whse. Outstanding Qty. (Base)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ATO Whse. Outstanding Qty."; "ATO Whse. Outstanding Qty.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("ATO Whse. Outstd. Qty. (Base)"; "ATO Whse. Outstd. Qty. (Base)")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Outbound Whse. Handling Time"; "Outbound Whse. Handling Time")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Blanket Order No."; "Blanket Order No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Blanket Order Line No."; "Blanket Order Line No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("FA Posting Date"; "FA Posting Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Depr. until FA Posting Date"; "Depr. until FA Posting Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Depreciation Book Code"; "Depreciation Book Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Use Duplication List"; "Use Duplication List")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Duplicate in Depreciation Book"; "Duplicate in Depreciation Book")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Appl.-from Item Entry"; "Appl.-from Item Entry")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Appl.-to Item Entry"; "Appl.-to Item Entry")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                // field("Process Carried Out";"Process Carried Out")
                // {
                //     Enabled = false;
                //     Visible = false;
                // }//tk standard field not in bc
                field("Shortcut Dimension 2 Code"; rec."Shortcut Dimension 2 Code")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                // field("ShortcutDimCode[3]" ; Rec.ShortcutDimCode[3])
                // {
                //     CaptionClass = '1,2,3';
                //     Visible = false;

                //     trigger OnLookup(var Text: Text): Boolean
                //     begin
                //         LookupShortcutDimCode(3,ShortcutDimCode[3]);
                //     end;

                //     trigger OnValidate()
                //     begin
                //         ValidateShortcutDimCode(3,ShortcutDimCode[3]);
                //     end;
                // }
                // field(ShortcutDimCode[4];ShortcutDimCode[4])
                // {
                //     CaptionClass = '1,2,4';
                //     Visible = false;

                //     trigger OnLookup(var Text: Text): Boolean
                //     begin
                //         LookupShortcutDimCode(4,ShortcutDimCode[4]);
                //     end;

                //     trigger OnValidate()
                //     begin
                //         ValidateShortcutDimCode(4,ShortcutDimCode[4]);
                //     end;
                // }
                // field(ShortcutDimCode[5];ShortcutDimCode[5])
                // {
                //     CaptionClass = '1,2,5';
                //     Visible = false;

                //     trigger OnLookup(var Text: Text): Boolean
                //     begin
                //         LookupShortcutDimCode(5,ShortcutDimCode[5]);
                //     end;

                //     trigger OnValidate()
                //     begin
                //         ValidateShortcutDimCode(5,ShortcutDimCode[5]);
                //     end;
                // }
                // field(ShortcutDimCode[6];ShortcutDimCode[6])
                // {
                //     CaptionClass = '1,2,6';
                //     Visible = false;

                //     trigger OnLookup(var Text: Text): Boolean
                //     begin
                //         LookupShortcutDimCode(6,ShortcutDimCode[6]);
                //     end;

                //     trigger OnValidate()
                //     begin
                //         ValidateShortcutDimCode(6,ShortcutDimCode[6]);
                //     end;
                // }
                // field(ShortcutDimCode[7];ShortcutDimCode[7])
                // {
                //     CaptionClass = '1,2,7';
                //     Visible = false;

                //     trigger OnLookup(var Text: Text): Boolean
                //     begin
                //         LookupShortcutDimCode(7,ShortcutDimCode[7]);
                //     end;

                //     trigger OnValidate()
                //     begin
                //         ValidateShortcutDimCode(7,ShortcutDimCode[7]);
                //     end;
                // }
                // field(ShortcutDimCode[8];ShortcutDimCode[8])
                // {
                //     CaptionClass = '1,2,8';
                //     Visible = false;

                //     trigger OnLookup(var Text: Text): Boolean
                //     begin
                //         LookupShortcutDimCode(8,ShortcutDimCode[8]);
                //     end;

                //     trigger OnValidate()
                //     begin
                //         ValidateShortcutDimCode(8,ShortcutDimCode[8]);
                //     end;
                // }
                field("Tax Area Code"; "Tax Area Code")
                {
                    ApplicationArea = All;
                }
                field("Tax Liable"; "Tax Liable")
                {
                    ApplicationArea = All;
                }
                field("Document No."; "Document No.")
                {
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Line No."; "Line No.")
                {
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Discount Hold"; "Discount Hold")
                {
                    ApplicationArea = All;
                }
                // field("Service Tax Amount";"Service Tax Amount")
                // {
                // }
                field("Capillary Line Discount Amount"; "Capillary Line Discount Amount")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("CRT Coupon Code"; "CRT Coupon Code")
                {
                    Editable = false;
                    ApplicationArea = All;
                }

            }


        }




    }

    actions
    {
        area(processing)
        {
            group("&Line")
            {
                Caption = '&Line';
                Image = Line;
                group("Item Availability by")
                {
                    Caption = 'Item Availability by';
                    Image = ItemAvailability;
                    action("<Action3>")
                    {
                        Caption = 'Event';
                        Image = "Event";
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            ItemAvailFormsMgt.ShowItemAvailFromSalesLine(Rec, ItemAvailFormsMgt.ByEvent)
                        end;
                    }
                    action(Period)
                    {
                        Caption = 'Period';
                        Image = Period;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            ItemAvailFormsMgt.ShowItemAvailFromSalesLine(Rec, ItemAvailFormsMgt.ByPeriod)
                        end;
                    }
                    action(Variant)
                    {
                        Caption = 'Variant';
                        Image = ItemVariant;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            ItemAvailFormsMgt.ShowItemAvailFromSalesLine(Rec, ItemAvailFormsMgt.ByVariant)
                        end;
                    }
                    action(Location)
                    {
                        Caption = 'Location';
                        Image = Warehouse;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            ItemAvailFormsMgt.ShowItemAvailFromSalesLine(Rec, ItemAvailFormsMgt.ByLocation)
                        end;
                    }
                    action("BOM Level")
                    {
                        Caption = 'BOM Level';
                        Image = BOMLevel;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            ItemAvailFormsMgt.ShowItemAvailFromSalesLine(Rec, ItemAvailFormsMgt.ByBOM)
                        end;
                    }
                }
                action("Reservation Entries")
                {
                    Caption = 'Reservation Entries';
                    Image = ReservationLedger;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowReservationEntries(TRUE);
                    end;
                }
                action(ItemTrackingLines)
                {
                    Caption = 'Item &Tracking Lines';
                    Image = ItemTrackingLines;
                    ShortCutKey = 'Shift+Ctrl+I';
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ReservationEntry: Record 337;
                    begin
                        OpenItemTrackingLines;
                        //HR-
                        ReservationEntry.SETRANGE("Source Type", 37);
                        ReservationEntry.SETRANGE("Source Subtype", 1);
                        ReservationEntry.SETRANGE("Source ID", Rec."Document No.");
                        ReservationEntry.SETRANGE("Source Ref. No.", Rec."Line No.");
                        IF ReservationEntry.FINDFIRST THEN BEGIN
                            Rec.validate(Rec."Item Serial No.", ReservationEntry."Serial No.");
                            ////Rec."IMEI No." := ReservationEntry."IMEI No.";
                            // Rec."Unit Price Incl. of Tax" := ReservationEntry."MRP Value"; //ccit_kj
                            Rec.Validate("Price Inclusive of Tax", true);
                            Rec.MODIFY;
                        END ELSE BEGIN
                            Rec."Item Serial No." := '';
                            // Rec."IMEI No." := '';
                            Rec.MODIFY;
                        END;
                        //HR+
                    end;
                }
                action("Select Item Substitution")
                {
                    Caption = 'Select Item Substitution';
                    Image = SelectItemSubstitution;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowItemSub;
                    end;
                }
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowDimensions;
                    end;
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowLineComments;
                    end;
                }
                action("Item Charge &Assignment")
                {
                    Caption = 'Item Charge &Assignment';
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ItemChargeAssgnt;
                    end;
                }
                action(OrderPromising)
                {
                    Caption = 'Order &Promising';
                    Image = OrderPromising;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        OrderPromisingLine;
                    end;
                }
                group("Assemble to Order")
                {
                    Caption = 'Assemble to Order';
                    Image = AssemblyBOM;
                    action(AssembleToOrderLines)
                    {
                        Caption = 'Assemble-to-Order Lines';
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            ShowAsmToOrderLines;
                        end;
                    }
                    action("Roll Up &Price")
                    {
                        Caption = 'Roll Up &Price';
                        Ellipsis = true;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            RollupAsmPrice;
                        end;
                    }
                    action("Roll Up &Cost")
                    {
                        Caption = 'Roll Up &Cost';
                        Ellipsis = true;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            RollUpAsmCost;
                        end;
                    }
                }
                action("Str&ucture Details")
                {
                    Caption = 'Str&ucture Details';
                    Image = Hierarchy;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowStrDetailsForm;
                    end;
                }
                action(Structure)
                {
                    Caption = 'Structure';
                    Image = Hierarchy;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowStrOrderDetailsPITForm;
                    end;
                }
                action("Excise Detail")
                {
                    Caption = 'Excise Detail';
                    Image = Excise;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowExcisePostingSetup;
                    end;
                }
                action("Detailed Tax")
                {
                    Caption = 'Detailed Tax';
                    Image = TaxDetail;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowDetailedTaxEntryBuffer;
                    end;
                }
            }
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action(GetPrice)
                {
                    Caption = 'Get Price';
                    Ellipsis = true;
                    Image = Price;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowPrices;
                    end;
                }
                action("Get Li&ne Discount")
                {
                    Caption = 'Get Li&ne Discount';
                    Ellipsis = true;
                    Image = LineDiscount;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowLineDisc
                    end;
                }
                action(ExplodeBOM_Functions)
                {
                    Caption = 'E&xplode BOM';
                    Image = ExplodeBOM;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ExplodeBOM;
                    end;
                }
                action("Insert Ext. Texts")
                {
                    Caption = 'Insert &Ext. Text';
                    Image = Text;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        InsertExtendedText(TRUE);
                    end;
                }
                action(Reserve1)
                {
                    Caption = '&Reserve';
                    Ellipsis = true;
                    Image = Reserve;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        FIND;
                        ShowReservation;
                    end;
                }
                action(OrderTracking)
                {
                    Caption = 'Order &Tracking';
                    Image = OrderTracking;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowTracking;
                    end;
                }
                action("Nonstoc&k Items")
                {
                    Caption = 'Nonstoc&k Items';
                    Image = NonStockItem;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ShowNonstockItems;
                    end;
                }
            }
            group("O&rder")
            {
                Caption = 'O&rder';
                Image = "Order";
                group("Dr&op Shipment")
                {
                    Caption = 'Dr&op Shipment';
                    Image = Delivery;
                    action("Purchase &Order")
                    {
                        Caption = 'Purchase &Order';
                        Image = Document;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            OpenPurchOrderForm;
                        end;
                    }
                }
                group("Speci&al Order")
                {
                    Caption = 'Speci&al Order';
                    Image = SpecialOrder;
                    action(OpenSpecialPurchaseOrder)
                    {
                        Caption = 'Purchase &Order';
                        Image = Document;
                        ApplicationArea = All;

                        trigger OnAction()
                        begin
                            OpenSpecialPurchOrderForm;
                        end;
                    }
                }
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        IF Rec."Discount Type" <> 'NO DISCOUNT' THEN
            EditableDiscount := TRUE
        ELSE
            EditableDiscount := FALSE;
    end;


    trigger OnAfterGetRecord()
    var
        RECSL: Record "Sales Line";
    begin
        ShowShortcutDimCode(ShortcutDimCode);
        //PriceEditable := NOT "Free Item";   //Win127 10.06.14
        IF "Item Serial No." = '' THEN
            QtyEditable := TRUE
        ELSE
            QtyEditable := FALSE;

        NotFreeItem := NOT "Free Item";

        IF Rec."Discount Type" <> 'NO DISCOUNT' THEN
            EditableDiscount := TRUE
        ELSE
            EditableDiscount := FALSE;
        /*
    //CCIT_TK
    RECSL.Reset();
    RECSL.SetRange(RECSL."Document Type", rec."Document Type");
    RECSL.SetRange(RECSL."Document No.", Rec."Document No.");
    RECSL.SetRange(RECSL."No.", Rec."No.");
    RECSL.SetRange(RECSL."Line No.", Rec."Line No.");
    //RECSL.SetRange(RECSL."Item Serial No.", rec."Item Serial No.");
    if RECSL.FindFirst() then begin
        RECSL.Validate("Price Inclusive of Tax", True);
        RECSL.Modify();
        //Message('%1', RECSL."No.");
        //CCIT_TK
    end;
*/
        //COMMENTED
        // IF Rec."Unit Price Incl. of Tax" <> 0 THEN
        //     Rec.Validate("Price Inclusive of Tax", true);
    end;

    trigger OnDeleteRecord(): Boolean
    var
        ReserveSalesLine: Codeunit 99000832;
    begin
        IF (Quantity <> 0) AND ItemExists("No.") THEN BEGIN
            COMMIT;
            IF NOT ReserveSalesLine.DeleteLineConfirm(Rec) THEN
                EXIT(FALSE);
            ReserveSalesLine.DeleteLine(Rec);
        END;
    end;

    trigger OnInit()
    begin
        "Process Carried OutVisible" := TRUE;
        QtyEditable := TRUE;
        NotFreeItem := TRUE;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        InitType;
        Type := Type::Item;
        CLEAR(ShortcutDimCode);
        QtyEditable := TRUE;
        NotFreeItem := TRUE;
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        IF (("No." <> '') AND ("No." <> '512040') AND ("No." <> '401004') AND ("No." <> '403012') AND ("No." <> '512073')) THEN BEGIN
            TESTFIELD(Description);
            TESTFIELD("Location Code");
            TESTFIELD(Quantity);
            TESTFIELD("Unit Price");
            TESTFIELD("Unit of Measure Code");
            TESTFIELD("HSN/SAC Code");
        END; //kppl-rj
    end;

    var
        SalesHeader: Record 36;
        SalesPriceCalcMgt: Codeunit 7000;
        TransferExtendedText: Codeunit 378;
        ItemAvailFormsMgt: Codeunit 353;
        ShortcutDimCode: array[8] of Code[20];
        Text001: Label 'You cannot use the Explode BOM function because a prepayment of the sales order has been invoiced.';

        ItemPanelVisible: Boolean;

        "Process Carried OutVisible": Boolean;

        PriceEditable: Boolean;
        ILE: Record 32;
        WBU: Codeunit 50000;
        EditableDiscount: Boolean;//tk

        QtyEditable: Boolean;

        NotFreeItem: Boolean;


    procedure ApproveCalcInvDisc()
    begin
        CODEUNIT.RUN(CODEUNIT::"Sales-Disc. (Yes/No)", Rec);
    end;


    procedure CalcInvDisc()
    begin
        CODEUNIT.RUN(CODEUNIT::"Sales-Calc. Discount", Rec);
    end;


    procedure ExplodeBOM()
    begin
        IF "Prepmt. Amt. Inv." <> 0 THEN
            ERROR(Text001);
        CODEUNIT.RUN(CODEUNIT::"Sales-Explode BOM", Rec);
    end;


    procedure OpenPurchOrderForm()
    var
        PurchHeader: Record 38;
        PurchOrder: Page 50;
    begin
        TESTFIELD("Purchase Order No.");
        PurchHeader.SETRANGE("No.", "Purchase Order No.");
        PurchOrder.SETTABLEVIEW(PurchHeader);
        PurchOrder.EDITABLE := FALSE;
        PurchOrder.RUN;
    end;


    procedure OpenSpecialPurchOrderForm()
    var
        PurchHeader: Record 38;
        PurchRcptHeader: Record 120;
        PurchOrder: Page 50;
    begin
        TESTFIELD("Special Order Purchase No.");
        PurchHeader.SETRANGE("No.", "Special Order Purchase No.");
        IF NOT PurchHeader.ISEMPTY THEN BEGIN
            PurchOrder.SETTABLEVIEW(PurchHeader);
            PurchOrder.EDITABLE := FALSE;
            PurchOrder.RUN;
        END ELSE BEGIN
            PurchRcptHeader.SETRANGE("Order No.", "Special Order Purchase No.");
            IF PurchRcptHeader.COUNT = 1 THEN
                PAGE.RUN(PAGE::"Posted Purchase Receipt", PurchRcptHeader)
            ELSE
                PAGE.RUN(PAGE::"Posted Purchase Receipts", PurchRcptHeader);
        END;
    end;


    procedure InsertExtendedText(Unconditionally: Boolean)
    begin
        IF TransferExtendedText.SalesCheckIfAnyExtText(Rec, Unconditionally) THEN BEGIN
            CurrPage.SAVERECORD;
            COMMIT;
            TransferExtendedText.InsertSalesExtText(Rec);
        END;
        IF TransferExtendedText.MakeUpdate THEN
            UpdateForm(TRUE);
    end;


    procedure ShowNonstockItems()
    begin
        ShowNonstock;
    end;


    procedure ShowTracking()
    var
        TrackingForm: Page 99000822;
    begin
        TrackingForm.SetSalesLine(Rec);
        TrackingForm.RUNMODAL;
    end;


    procedure ItemChargeAssgnt()
    begin
        ShowItemChargeAssgnt;
    end;


    procedure UpdateForm(SetSaveRecord: Boolean)
    begin
        CurrPage.UPDATE(SetSaveRecord);
    end;


    procedure ShowPrices()
    begin
        SalesHeader.GET(Rec."Document Type", Rec."Document No.");
        CLEAR(SalesPriceCalcMgt);
        SalesPriceCalcMgt.GetSalesLinePrice(SalesHeader, Rec);
    end;


    procedure ShowLineDisc()
    begin
        SalesHeader.GET(Rec."Document Type", Rec."Document No.");
        CLEAR(SalesPriceCalcMgt);
        SalesPriceCalcMgt.GetSalesLineLineDisc(SalesHeader, Rec);
    end;


    procedure OrderPromisingLine()
    var
        OrderPromisingLine: Record 99000880 temporary;
        OrderPromisingLines: Page 99000959;
    begin
        OrderPromisingLine.SETRANGE("Source Type", Rec."Document Type");
        OrderPromisingLine.SETRANGE("Source ID", Rec."Document No.");
        OrderPromisingLine.SETRANGE("Source Line No.", Rec."Line No.");

        OrderPromisingLines.SetSourceType(OrderPromisingLine."Source Type"::Sales);
        OrderPromisingLines.SETTABLEVIEW(OrderPromisingLine);
        OrderPromisingLines.RUNMODAL;
    end;

    local procedure TypeOnAfterValidate()
    begin
        ItemPanelVisible := Type = Type::Item;
    end;

    local procedure NoOnAfterValidate()
    begin
        InsertExtendedText(FALSE);
        IF (Type = Type::"Charge (Item)") AND ("No." <> xRec."No.") AND
           (xRec."No." <> '')
        THEN
            CurrPage.SAVERECORD;

        SaveAndAutoAsmToOrder;

        IF (Reserve = Reserve::Always) AND
           ("Outstanding Qty. (Base)" <> 0) AND
           ("No." <> xRec."No.")
        THEN BEGIN
            CurrPage.SAVERECORD;
            AutoReserve;
            CurrPage.UPDATE(FALSE);
        END;
    end;

    local procedure CrossReferenceNoOnAfterValidat()
    begin
        InsertExtendedText(FALSE);
    end;

    local procedure VariantCodeOnAfterValidate()
    begin
        SaveAndAutoAsmToOrder;
    end;

    local procedure LocationCodeOnAfterValidate()
    begin
        SaveAndAutoAsmToOrder;

        IF (Reserve = Reserve::Always) AND
           ("Outstanding Qty. (Base)" <> 0) AND
           ("Location Code" <> xRec."Location Code")
        THEN BEGIN
            CurrPage.SAVERECORD;
            AutoReserve;
            CurrPage.UPDATE(FALSE);
        END;
    end;

    local procedure ReserveOnAfterValidate()
    begin
        IF (Reserve = Reserve::Always) AND ("Outstanding Qty. (Base)" <> 0) THEN BEGIN
            CurrPage.SAVERECORD;
            AutoReserve;
            CurrPage.UPDATE(FALSE);
        END;
    end;

    local procedure QuantityOnAfterValidate()
    var
        UpdateIsDone: Boolean;
    begin
        IF Type = Type::Item THEN
            CASE Reserve OF
                Reserve::Always:
                    BEGIN
                        CurrPage.SAVERECORD;
                        AutoReserve;
                        CurrPage.UPDATE(FALSE);
                        UpdateIsDone := TRUE;
                    END;
                Reserve::Optional:
                    IF (Quantity < xRec.Quantity) AND (xRec.Quantity > 0) THEN BEGIN
                        CurrPage.SAVERECORD;
                        CurrPage.UPDATE(FALSE);
                        UpdateIsDone := TRUE;
                    END;
            END;

        IF (Type = Type::Item) AND
           (Quantity <> xRec.Quantity) AND
           NOT UpdateIsDone
        THEN
            CurrPage.UPDATE(TRUE);
    end;

    local procedure QtyToAsmToOrderOnAfterValidate()
    begin
        CurrPage.SAVERECORD;
        IF Reserve = Reserve::Always THEN
            AutoReserve;
        CurrPage.UPDATE(TRUE);
    end;

    local procedure UnitofMeasureCodeOnAfterValida()
    begin
        IF Reserve = Reserve::Always THEN BEGIN
            CurrPage.SAVERECORD;
            AutoReserve;
            CurrPage.UPDATE(FALSE);
        END;
    end;

    local procedure ShipmentDateOnAfterValidate()
    begin
        IF (Reserve = Reserve::Always) AND
           ("Outstanding Qty. (Base)" <> 0) AND
           ("Shipment Date" <> xRec."Shipment Date")
        THEN BEGIN
            CurrPage.SAVERECORD;
            AutoReserve;
            CurrPage.UPDATE(FALSE);
        END;
    end;

    local procedure SaveAndAutoAsmToOrder()
    begin
        IF (Type = Type::Item) AND IsAsmToOrderRequired THEN BEGIN
            CurrPage.SAVERECORD;
            AutoAsmToOrder;
            CurrPage.UPDATE(FALSE);
        END;
    end;


    procedure ShowStrDetailsForm()
    var
    // StrOrderLineDetails: Record "13795";
    // StrOrderLineDetailsForm: Page "16306";
    begin
        // StrOrderLineDetails.RESET;
        // StrOrderLineDetails.SETCURRENTKEY("Document Type","Document No.",Type);
        // StrOrderLineDetails.SETRANGE("Document Type","Document Type");
        // StrOrderLineDetails.SETRANGE("Document No.","Document No.");
        // StrOrderLineDetails.SETRANGE(Type,StrOrderLineDetails.Type::Sale);
        // StrOrderLineDetails.SETRANGE("Item No.","No.");
        // StrOrderLineDetails.SETRANGE("Line No.","Line No.");
        // StrOrderLineDetailsForm.SETTABLEVIEW(StrOrderLineDetails);
        // StrOrderLineDetailsForm.RUNMODAL;
    end;


    procedure ShowStrOrderDetailsPITForm()
    begin
        // ShowStrOrderDetailsPIT;
    end;


    procedure ShowExcisePostingSetup()
    begin
        // GetExcisePostingSetup;
    end;


    procedure MakeVisibleLineControl()
    begin
        "Process Carried OutVisible" := TRUE;
    end;


    procedure MakeInvisibleLineControl()
    begin
        "Process Carried OutVisible" := FALSE;
    end;


    procedure ShowDetailedTaxEntryBuffer()
    var
    // DetailedTaxEntryBuffer: Record 16480;
    begin
        // DetailedTaxEntryBuffer.RESET;
        // DetailedTaxEntryBuffer.SETCURRENTKEY("Transaction Type","Document Type","Document No.","Line No.");
        // DetailedTaxEntryBuffer.SETRANGE("Transaction Type",DetailedTaxEntryBuffer."Transaction Type"::Sale);
        // DetailedTaxEntryBuffer.SETRANGE("Document Type","Document Type");
        // DetailedTaxEntryBuffer.SETRANGE("Document No.","Document No.");
        // DetailedTaxEntryBuffer.SETRANGE("Line No.","Line No.");
        // PAGE.RUNMODAL(PAGE::"Sale Detailed Tax",DetailedTaxEntryBuffer);
    end;
}

