xmlport 50018 "Item Import"
{
    Direction = Import;
    // Encoding = UTF8; rahul
    Format = VariableText;
    FormatEvaluate = Legacy;
    TextEncoding = WINDOWS;

    schema
    {
        textelement(root)
        {
            tableelement(Item; Item)
            {
                AutoSave = false;
                XmlName = 'Items';
                UseTemporary = true;
                textelement(NewNo)
                {
                }
                textelement(OLDNo)
                {
                }
                textelement(Description)
                {
                }
                textelement(VendorPartCode)
                {
                }
                textelement(Brand)
                {
                }
                textelement(Category)
                {
                }
                textelement(Primarycategory)
                {
                }
                textelement(Secondarycategory)
                {
                }
                textelement(Thirdcategory)
                {
                }
                textelement(HSNSACCode)
                {
                }
                textelement(GSTGroupCode)
                {
                }
                textelement(SubstitutesExist)
                {
                }
                textelement(AssemblyBOM)
                {
                }
                textelement(ProductionBOMNo)
                {
                }
                textelement(BaseUnitofMeasure)
                {
                }
                textelement(Grade)
                {
                }
                textelement(CostisAdjusted)
                {
                }
                textelement(UnitCost)
                {
                }
                textelement(UnitPrice)
                {
                }
                textelement(VendorNo)
                {
                }
                textelement(SearchDescription)
                {
                }
                textelement(ItemTrackingCode)
                {
                }
                textelement(TaxGroupCode)
                {
                }
                textelement(DefaultDeferralTemplate)
                {
                }
                textelement(AssemblyPolicy)
                {
                }
                textelement(Blocked)
                {
                }
                textelement(CostingMethod)
                {
                }
                textelement(CreatedFromNonstockItem)
                {
                }
                textelement(FlushingMethod)
                {
                }
                textelement(GenProdPostingGroup)
                {
                }
                textelement(IndirectCostPer)
                {
                }
                textelement(InventoryPostingGroup)
                {
                }
                textelement(ItemDiscGroup)
                {
                }
                textelement(LastDateModified)
                {
                }
                textelement(LastDirectCost)
                {
                }
                textelement(LeadTimeCalculation)
                {
                }
                textelement(ManufacturingPolicy)
                {
                }
                textelement(OverheadRate)
                {
                }
                textelement(PriceProfitCalculation)
                {
                }
                textelement(Profit)
                {
                }
                textelement(PurchUnitofMeasure)
                {
                }
                textelement(ReplenishmentSystem)
                {
                }
                textelement(SalesUnitofMeasure)
                {

                    trigger OnAfterAssignVariable()
                    begin
                        RecItem.INIT;
                        RecItem."No." := NewNo;
                        RecItem."Old Item No" := OLDNo;
                        RecItem.Description := Description;
                        RecItem."Vendor Part Code Long" := VendorPartCode;
                        RecItem."Item Category Code" := Brand;
                        //   RecItem."Product Group Code" := Category;  rahul
                        RecItem."Primary category" := Primarycategory;
                        RecItem."Secondary category" := Secondarycategory;
                        RecItem."Third category" := Thirdcategory;
                        RecItem."HSN/SAC Code" := HSNSACCode;
                        RecItem."GST Group Code" := GSTGroupCode;
                        ItemUnitofMeasure.INIT;
                        ItemUnitofMeasure."Item No." := NewNo;
                        if BaseUnitofMeasure <> '' then
                            Evaluate(BUOM, BaseUnitofMeasure);
                        ItemUnitofMeasure.Code := BUOM;
                        ItemUnitofMeasure."Qty. per Unit of Measure" := 1;
                        IF NOT ItemUnitofMeasure.INSERT THEN
                            ItemUnitofMeasure.MODIFY;
                        RecItem.VALIDATE("Base Unit of Measure", BUOM);
                        EVALUATE(RecItem."Unit Cost", UnitCost);
                        EVALUATE(RecItem."Unit Price", UnitPrice);
                        RecItem."Vendor No." := VendorNo;
                        RecItem."Search Description" := SearchDescription;
                        RecItem."Item Tracking Code" := ItemTrackingCode;
                        RecItem."Tax Group Code" := TaxGroupCode;
                        EVALUATE(RecItem.Blocked, Blocked);
                        //RecItem."Costing Method" := FIFO;
                        RecItem."Gen. Prod. Posting Group" := GenProdPostingGroup;
                        EVALUATE(RecItem."Indirect Cost %", IndirectCostPer);
                        RecItem."Inventory Posting Group" := InventoryPostingGroup;
                        RecItem."Item Disc. Group" := ItemDiscGroup;
                        EVALUATE(RecItem."Lead Time Calculation", LeadTimeCalculation);
                        IF EVALUATE(RecItem."Overhead Rate", OverheadRate) THEN;
                        EVALUATE(RecItem."Profit %", Profit);
                        RecItem.VALIDATE("Purch. Unit of Measure", PurchUnitofMeasure);
                        RecItem.VALIDATE("Sales Unit of Measure", SalesUnitofMeasure);
                        IF StandardCost <> '' THEN
                            EVALUATE(RecItem."Standard Cost", StandardCost);
                        IF VendorItemNo <> '' THEN
                            RecItem."Vendor Item No." := VendorItemNo;
                        IF NOT RecItem.INSERT THEN
                            RecItem.MODIFY;
                    end;
                }
                textelement(ShelfNo)
                {
                    MinOccurs = Zero;
                }
                textelement(StandardCost)
                {
                    MinOccurs = Zero;
                }
                textelement(StockkeepingUnitExists)
                {
                    MinOccurs = Zero;
                }
                textelement(TariffNo)
                {
                    MinOccurs = Zero;
                }
                textelement(VATProdPostingGroup)
                {
                    MinOccurs = Zero;
                }
                textelement(VendorItemNo)
                {
                    MinOccurs = Zero;
                }
            }
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
        RecItem: Record "Item";
        ItemUnitofMeasure: Record "Item Unit of Measure";
        BUOM: Code[20];
}

