// #pragma warning disable AA0005, AA0008, AA0018, AA0021, AA0072, AA0137, AA0201, AA0204, AA0206, AA0218, AA0228, AL0254, AL0424, AS0011, AW0006 // ForNAV settings
// Report 50018 " Daily Cash Flow1"
// {
//     DefaultLayout = RDLC;
//     RDLCLayout = './Layouts/Daily Cash.rdl';
//     ApplicationArea = All;
//     UsageCategory = ReportsAndAnalysis;


//     dataset
//     {
//         dataitem("Company Information"; "Company Information")
//         {
//             DataItemTableView = sorting("Primary Key");
//             column(ReportForNavId_1000000068; 1000000068)
//             {
//             }
//             column(docno; docno)
//             {
//             }
//             column(InvCr; InvCr)
//             {
//             }
//             column(compinfoName; "Company Information".Name)
//             {
//                 IncludeCaption = true;
//             }
//             column(compinfoPicture; "Company Information".Picture)
//             {
//             }
//             column(No; No)
//             {
//             }
//             column(datefilter; datefilter)
//             {
//             }
//             column(startdt; startdt)
//             {
//             }
//             column(enddt; enddt)
//             {
//             }
//             column(Location; usersetup."Location Code" + loc."Name 2")
//             {
//             }
//         }
//         dataitem("Sales Invoice Header"; "Sales Invoice Header")
//         {
//             DataItemTableView = sorting("No.");
//             PrintOnlyIfDetail = false;
//             RequestFilterFields = "Location Code";
//             column(ReportForNavId_4577; 4577)
//             {
//             }
//             column(PostingDate_SalesInvoiceHeader; "Sales Invoice Header"."Posting Date")
//             {
//             }
//             column(ExternalDocumentNo_SalesInvoiceHeader; "Sales Invoice Header"."External Document No.")
//             {
//             }
//             column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
//             {
//             }
//             column(comp_Name; comp.Name)
//             {
//             }
//             column(CurrReport_PAGENO; CurrReport.PageNo)
//             {
//             }
//             column(Srno; Srno)
//             {
//             }
//             column(S_DocNo; "Sales Invoice Header"."No.")
//             {
//             }
//             column(selltocust; "Sales Invoice Header"."Sell-to Customer Name")
//             {
//             }
//             column(amt_to_cust; '')//"Sales Invoice Header"."Amount to Customer")
//             {
//             }
//             column(Cash; "Sales Invoice Header".PayByCashAmt)
//             {
//             }
//             column(Chq_Amt; "Sales Invoice Header".PayByChqAmt)
//             {
//             }
//             column(cardno_1; "Sales Invoice Header".PayByCreditNo1)
//             {
//             }
//             column(cardno_2; "Sales Invoice Header".PayByCreditNo2)
//             {
//             }
//             column(cardno_3; "Sales Invoice Header".PayByCreditNo3)
//             {
//             }
//             column(cardno_4s; "Sales Invoice Header".PayByCreditNo4)
//             {
//             }
//             column(cardno_5; "Sales Invoice Header".PayByDebitNo2)
//             {
//             }
//             column(Cr_Amt1; "Sales Invoice Header".PayByCreditAmt1)
//             {
//             }
//             column(Cr_Amt2; "Sales Invoice Header".PayByCreditAmt2)
//             {
//             }
//             column(Cr_Amt3; "Sales Invoice Header".PayByCreditAmt3)
//             {
//             }
//             column(Cr_Amt4; "Sales Invoice Header".PayByCreditAmt4)
//             {
//             }
//             column(Cr_Amt5; "Sales Invoice Header".PayByDebitAmt2)
//             {
//             }
//             column(RTGS_Amt; RtgsAmt)
//             {
//             }
//             column(RefNo; "Sales Invoice Header"."Ref. Invoice No.")
//             {
//             }
//             column(AppQty; AppQty)
//             {
//             }
//             column(NonAppQty; NonAppQty)
//             {
//             }
//             column(HDFCCardNo; HDFCCardNo)
//             {
//             }
//             column(HSBCCardNo; HSBCCardNo)
//             {
//             }
//             column(AXCardNo; AXCardNo)
//             {
//             }
//             column(AMXCardNo; AMXCardNo)
//             {
//             }
//             column(CITICardNo; CITICardNo)
//             {
//             }
//             column(InnovitiCardNo; InnovitiCardNo)
//             {
//             }
//             column(PineLABSCardNo; PineLABSCardNo)
//             {
//             }
//             column(SaleCashAmt; SaleCashAmt)
//             {
//             }
//             column(SaleChqAmt; SaleChqAmt)
//             {
//             }
//             column(HDFCAMT; HDFCAMT)
//             {
//             }
//             column(HSBCAMT; HSBCAMT)
//             {
//             }
//             column(AXISAMT; AXISAMT)
//             {
//             }
//             column(AMXAMT; AMXAMT)
//             {
//             }
//             column(CITIAMT; CITIAMT)
//             {
//             }
//             column(InnovitiAMT; InnovitiAMT)
//             {
//             }
//             column(PineLABSAMT; PineLABSAMT)
//             {
//             }
//             column(GiftVouchAmt; GiftAmt)
//             {
//             }
//             column(FinAmt; FinAmt)
//             {
//             }
//             column(FinAmt1; FinAmt1)
//             {
//             }
//             column(FinAmt2; FinAmt2)
//             {
//             }
//             column(FinAmt3; FinAmt3)
//             {
//             }
//             column(FinAmt4; FinAmt4)
//             {
//             }
//             column(PinelabApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Pinelab Approval Code")
//             {
//             }
//             column(PaytmApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Paytm Approval Code")
//             {
//             }
//             column(PaytmTransferAmount_SalesInvoiceHeader; paytm_amount)
//             {
//             }
//             column(CashifyApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Cashify Approval Code")
//             {
//             }
//             column(Cashify_Bonus_amount; Cashify_Bonus_amount)
//             {
//             }
//             column(Cashify_amount; Cashify_amount)
//             {
//             }
//             column(InsuranceApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Insurance Approval Code")
//             {
//             }
//             column(insurance_Amount; insurance_Amount)
//             {
//             }
//             column(Pinelab_Amount; Pinelab_amount)
//             {
//             }
//             column(ServifyBonusAmount; ServifyBonusAmount)
//             {
//             }
//             column(Servify_Amount; ServifyAmount)
//             {
//             }
//             column(Servify_App_Code; ServifyAppCode)
//             {
//             }
//             column(Paytm_App_code; PaytmAppCode)
//             {
//             }
//             column(ExApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Amazon Approval Code")
//             {
//             }
//             column(ExTransferAmount_SalesInvoiceHeader; ex_amount)
//             {
//             }
//             column(MapBBAmt; "Sales Invoice Header"."Maple Buyback Amt")
//             {
//             }
//             column(AppBBAmt; "Sales Invoice Header"."Apple Buyback Amt")
//             {
//             }
//             column(BBAmt; BBAmt)
//             {
//             }
//             column(BBAMtTot; BBAMtTot)
//             {
//             }
//             column(Comment; Cmnt)
//             {
//             }
//             column(RTGSRefNo_SalesInvoiceHeader; "Sales Invoice Header"."RTGS Ref. No.")
//             {
//             }
//             column(FinanceComapny_SalesInvoiceHeader; "Sales Invoice Header"."Finance Comapny")
//             {
//             }
//             column(FinanceCompanyName; FinanceCompanyName)
//             {
//             }
//             column(FinanceCompanyName1; FinanceCompanyName1)
//             {
//             }
//             column(RtgNo; RtgNo)
//             {
//             }
//             column(BANKAppCode; BANKAppCode)
//             {
//             }
//             column(BANKAppCode1; BANKAppCode1)
//             {
//             }
//             column(BANKAppCode2; BANKAppCode2)
//             {
//             }
//             column(BANKAppCode4; BANKAppCode4)
//             {
//             }
//             column(ChequeNo_CustLedgerEntry; "Sales Invoice Header".PayByChqNo)
//             {
//             }
//             column(chquamt; "Sales Invoice Header".PayByChqAmt)
//             {
//             }
//             column(LoyaltyRWCardNo; LoyaltyRWCardNo)
//             {
//             }
//             column(LoyaltyRWAMT; LoyaltyRWAMT)
//             {
//             }
//             column(LoyaltyRewardz_amount; LoyaltyRewardz_amount)
//             {
//             }
//             column(LoyaltyRiwardzTrAmount_SalesInvoiceHeader; "Sales Invoice Header"."Loyalty Riwardz Tr.Amount")
//             {
//             }
//             column(LoyaltyRiwardzMethodCode_SalesInvoiceHeader; "Sales Invoice Header"."Loyalty Riwardz Method Code")
//             {
//             }
//             column(LoyaltyRiwardzApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Loyalty Riwardz Approval Code")
//             {
//             }
//             dataitem("Salesperson/Purchaser"; "Salesperson/Purchaser")
//             {
//                 DataItemLink = Code = field("Salesperson Code");
//                 column(ReportForNavId_1000000109; 1000000109)
//                 {
//                 }
//                 column(SP_Code; "Salesperson/Purchaser".Code)
//                 {
//                 }
//                 column(SP_Name; "Salesperson/Purchaser".Name)
//                 {
//                 }
//             }

//             trigger OnAfterGetRecord()
//             begin
//                 AppQty := 0;
//                 NonAppQty := 0;
//                 TotShieldvalue := 0;
//                 InitVarSales;
//                 Srno += 1;

//                 salesinvline.Reset;
//                 salesinvline.SetFilter(salesinvline."Document No.", "Sales Invoice Header"."No.");
//                 if salesinvline.FindFirst then begin
//                     repeat
//                         TotShieldvalue += salesinvline."Shield Value";
//                         if salesinvline."Item Category Code" = 'APPLE' then
//                             AppQty += salesinvline.Quantity
//                         else
//                             if (salesinvline.Type = salesinvline.Type::"G/L Account") then begin
//                                 if (salesinvline."No." = SalesSetup."Shield Sales Account") then
//                                     NonAppQty += salesinvline.Quantity;
//                             end
//                             else
//                                 NonAppQty += salesinvline.Quantity;
//                     until salesinvline.Next = 0;
//                 end;

//                 Tmpvalue := 0;
//                 PendShieldValue := TotShieldvalue;
//                 SaleCashAmt := "Sales Invoice Header".PayByCashAmt;
//                 if ("Sales Invoice Header".PayByCashAmt <> 0) and (PendShieldValue > 0) then begin
//                     if "Sales Invoice Header".PayByCashAmt > PendShieldValue then begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             SaleCashAmt := Tmpvalue;
//                         end
//                         else begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             SaleCashAmt := "Sales Invoice Header".PayByCashAmt - Tmpvalue;
//                         end;
//                     end
//                     else begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             SaleCashAmt := "Sales Invoice Header".PayByCashAmt;
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header".PayByCashAmt;
//                         end
//                         else begin
//                             SaleCashAmt := 0;
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header".PayByCashAmt;
//                         end;
//                     end;
//                 end;

//                 Tmpvalue := 0;
//                 SaleChqAmt := "Sales Invoice Header".PayByChqAmt;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     SaleChqAmt := 0
//                 else begin
//                     if ("Sales Invoice Header".PayByChqAmt <> 0) and (PendShieldValue > 0) then begin
//                         if "Sales Invoice Header".PayByChqAmt > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 SaleChqAmt := PendShieldValue;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 SaleChqAmt := "Sales Invoice Header".PayByChqAmt - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 Tmpvalue := PendShieldValue;
//                                 SaleChqAmt := "Sales Invoice Header".PayByChqAmt;
//                                 PendShieldValue := PendShieldValue - "Sales Invoice Header".PayByChqAmt;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 SaleChqAmt := 0;
//                                 PendShieldValue := PendShieldValue - "Sales Invoice Header".PayByChqAmt;
//                             end;
//                         end;
//                     end;
//                 end;
//                 if "Sales Invoice Header".PayByCreditNo1 = 'HDFC' then begin
//                     if HDFCCardNo <> '' then
//                         HDFCCardNo += ',';

//                     HDFCCardNo += "Sales Invoice Header".CreditCardNo1;
//                     HDFCAMT += "Sales Invoice Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo2 = 'HDFC' then begin
//                     if HDFCCardNo <> '' then
//                         HDFCCardNo += ',';

//                     HDFCCardNo += "Sales Invoice Header".CreditCardNo2;
//                     HDFCAMT += "Sales Invoice Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo3 = 'HDFC' then begin
//                     if HDFCCardNo <> '' then
//                         HDFCCardNo += ',';

//                     HDFCCardNo += "Sales Invoice Header".CreditCardNo3;
//                     HDFCAMT += "Sales Invoice Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo4 = 'HDFC' then begin
//                     if HDFCCardNo <> '' then
//                         HDFCCardNo += ',';

//                     HDFCCardNo += "Sales Invoice Header".CreditCardNo4;
//                     HDFCAMT += "Sales Invoice Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Invoice Header".PayByDebitCdNo1 = 'HDFC' then begin
//                     if HDFCCardNo <> '' then
//                         HDFCCardNo += ',';

//                     HDFCCardNo += "Sales Invoice Header".DebitCardNo1;
//                     HDFCAMT += "Sales Invoice Header".PayByDebitCdAmt1;
//                 end;


//                 if "Sales Invoice Header".PayByDebitNo2 = 'HDFC' then begin
//                     if HDFCCardNo <> '' then
//                         HDFCCardNo += ',';

//                     HDFCCardNo += "Sales Invoice Header".DebitCardNo2;
//                     HDFCAMT += "Sales Invoice Header".PayByDebitAmt2;
//                 end;
//                 Tmpvalue := 0;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     HDFCAMT := 0
//                 else begin
//                     if (HDFCAMT <> 0) and (PendShieldValue > 0) then begin
//                         if HDFCAMT > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 Tmpvalue := PendShieldValue;
//                                 HDFCAMT := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 HDFCAMT := HDFCAMT - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - HDFCAMT;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := PendShieldValue - HDFCAMT;
//                                 HDFCAMT := 0;
//                             end;
//                         end;
//                     end;
//                 end;

//                 //CCIT_TK
//                 if "Sales Invoice Header".PayByCreditNo1 = 'AXIS' then begin
//                     if AXCardNo <> '' then
//                         AXCardNo += ',';

//                     AXCardNo += "Sales Invoice Header".CreditCardNo1;
//                     AXISAMT += "Sales Invoice Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo2 = 'AXIS' then begin
//                     if AXCardNo <> '' then
//                         HSBCCardNo += ',';

//                     AXCardNo += "Sales Invoice Header".CreditCardNo2;
//                     AXISAMT += "Sales Invoice Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo3 = 'AXIS' then begin
//                     if AXCardNo <> '' then
//                         HSBCCardNo += ',';

//                     AXCardNo += "Sales Invoice Header".CreditCardNo3;
//                     AXISAMT += "Sales Invoice Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo4 = 'AXIS' then begin
//                     if AXCardNo <> '' then
//                         AXCardNo += ',';

//                     AXCardNo += "Sales Invoice Header".CreditCardNo4;
//                     AXISAMT += "Sales Invoice Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Invoice Header".PayByDebitCdNo1 = 'AXIS' then begin
//                     if AXCardNo <> '' then
//                         AXCardNo += ',';

//                     AXCardNo += "Sales Invoice Header".DebitCardNo1;
//                     AXISAMT += "Sales Invoice Header".PayByDebitCdAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByDebitNo2 = 'AXIS' then begin
//                     if AXCardNo <> '' then
//                         AXCardNo += ',';

//                     AXCardNo += "Sales Invoice Header".DebitCardNo2;
//                     AXISAMT += "Sales Invoice Header".PayByDebitAmt2;
//                 end;
//                 Tmpvalue := 0;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     AXISAMT := 0
//                 else begin
//                     if (AXISAMT <> 0) and (PendShieldValue > 0) then begin
//                         if AXISAMT > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 AXISAMT := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 AXISAMT := AXISAMT - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - AXISAMT;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - AXISAMT;
//                                 AXISAMT := 0;
//                             end;
//                         end;
//                     end;
//                 end;


//                 //CCIT_TK
//                 if "Sales Invoice Header".PayByCreditNo1 = 'ICICI' then begin
//                     if HSBCCardNo <> '' then
//                         HSBCCardNo += ',';

//                     HSBCCardNo += "Sales Invoice Header".CreditCardNo1;
//                     HSBCAMT += "Sales Invoice Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo2 = 'ICICI' then begin
//                     if HSBCCardNo <> '' then
//                         HSBCCardNo += ',';

//                     HSBCCardNo += "Sales Invoice Header".CreditCardNo2;
//                     HSBCAMT += "Sales Invoice Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo3 = 'ICICI' then begin
//                     if HSBCCardNo <> '' then
//                         HSBCCardNo += ',';

//                     HSBCCardNo += "Sales Invoice Header".CreditCardNo3;
//                     HSBCAMT += "Sales Invoice Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo4 = 'ICICI' then begin
//                     if HSBCCardNo <> '' then
//                         HSBCCardNo += ',';

//                     HSBCCardNo += "Sales Invoice Header".CreditCardNo4;
//                     HSBCAMT += "Sales Invoice Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Invoice Header".PayByDebitCdNo1 = 'ICICI' then begin
//                     if HSBCCardNo <> '' then
//                         HSBCCardNo += ',';

//                     HSBCCardNo += "Sales Invoice Header".DebitCardNo1;
//                     HSBCAMT += "Sales Invoice Header".PayByDebitCdAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByDebitNo2 = 'ICICI' then begin
//                     if HSBCCardNo <> '' then
//                         HSBCCardNo += ',';

//                     HSBCCardNo += "Sales Invoice Header".DebitCardNo2;
//                     HSBCAMT += "Sales Invoice Header".PayByDebitAmt2;
//                 end;
//                 Tmpvalue := 0;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     HSBCAMT := 0
//                 else begin
//                     if (HSBCAMT <> 0) and (PendShieldValue > 0) then begin
//                         if HSBCAMT > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 HSBCAMT := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 HSBCAMT := HSBCAMT - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - HSBCAMT;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - HSBCAMT;
//                                 HSBCAMT := 0;
//                             end;
//                         end;
//                     end;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo1 = 'AMEX' then begin
//                     if AMXCardNo <> '' then
//                         AMXCardNo += ',';

//                     AMXCardNo += "Sales Invoice Header".CreditCardNo1;
//                     AMXAMT += "Sales Invoice Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo2 = 'AMEX' then begin
//                     if AMXCardNo <> '' then
//                         AMXCardNo += ',';

//                     AMXCardNo += "Sales Invoice Header".CreditCardNo2;
//                     AMXAMT += "Sales Invoice Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo3 = 'AMEX' then begin
//                     if AMXCardNo <> '' then
//                         AMXCardNo += ',';

//                     AMXCardNo += "Sales Invoice Header".CreditCardNo3;
//                     AMXAMT += "Sales Invoice Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo4 = 'AMEX' then begin
//                     if AMXCardNo <> '' then
//                         AMXCardNo += ',';

//                     AMXCardNo += "Sales Invoice Header".CreditCardNo4;
//                     AMXAMT += "Sales Invoice Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Invoice Header".PayByDebitCdNo1 = 'AMEX' then begin
//                     if AMXCardNo <> '' then
//                         AMXCardNo += ',';

//                     AMXCardNo += "Sales Invoice Header".DebitCardNo1;
//                     AMXAMT += "Sales Invoice Header".PayByDebitCdAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByDebitNo2 = 'AMEX' then begin
//                     if AMXCardNo <> '' then
//                         AMXCardNo += ',';

//                     AMXCardNo += "Sales Invoice Header".DebitCardNo2;
//                     AMXAMT += "Sales Invoice Header".PayByDebitAmt2;
//                 end;
//                 Tmpvalue := 0;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     AMXAMT := 0
//                 else begin
//                     if (AMXAMT <> 0) and (PendShieldValue > 0) then begin
//                         if AMXAMT > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 AMXAMT := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 AMXAMT := AMXAMT - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - AMXAMT;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - AMXAMT;
//                                 AMXAMT := 0;
//                             end;
//                         end;
//                     end;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo1 = 'UPI' then begin
//                     if CITICardNo <> '' then
//                         CITICardNo += ',';

//                     CITICardNo += "Sales Invoice Header".CreditCardNo1;
//                     CITIAMT += "Sales Invoice Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo2 = 'UPI' then begin
//                     if CITICardNo <> '' then
//                         CITICardNo += ',';

//                     CITICardNo += "Sales Invoice Header".CreditCardNo2;
//                     CITIAMT += "Sales Invoice Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo3 = 'UPI' then begin
//                     if CITICardNo <> '' then
//                         CITICardNo += ',';

//                     CITICardNo += "Sales Invoice Header".CreditCardNo3;
//                     CITIAMT += "Sales Invoice Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo4 = 'UPI' then begin
//                     if CITICardNo <> '' then
//                         CITICardNo += ',';

//                     CITICardNo += "Sales Invoice Header".CreditCardNo4;
//                     CITIAMT += "Sales Invoice Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Invoice Header".PayByDebitCdNo1 = 'UPI' then begin
//                     if CITICardNo <> '' then
//                         CITICardNo += ',';

//                     CITICardNo += "Sales Invoice Header".DebitCardNo1;
//                     CITIAMT += "Sales Invoice Header".PayByDebitCdAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByDebitNo2 = 'UPI' then begin
//                     if CITICardNo <> '' then
//                         CITICardNo += ',';

//                     CITICardNo += "Sales Invoice Header".DebitCardNo2;
//                     CITIAMT += "Sales Invoice Header".PayByDebitAmt2;
//                 end;
//                 Tmpvalue := 0;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     CITIAMT := 0
//                 else begin
//                     if (CITIAMT <> 0) and (PendShieldValue > 0) then begin
//                         if CITIAMT > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 CITIAMT := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 CITIAMT := CITIAMT - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - CITIAMT;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - CITIAMT;
//                                 CITIAMT := 0;
//                             end;
//                         end;
//                     end;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo1 = 'Innoviti' then begin
//                     if InnovitiCardNo <> '' then
//                         InnovitiCardNo += ',';
//                     InnovitiCardNo += "Sales Invoice Header".CreditCardNo1;
//                     InnovitiAMT += "Sales Invoice Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo2 = 'Innoviti' then begin
//                     if InnovitiCardNo <> '' then
//                         InnovitiCardNo += ',';

//                     InnovitiCardNo += "Sales Invoice Header".CreditCardNo2;
//                     InnovitiAMT += "Sales Invoice Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo3 = 'Innoviti' then begin
//                     InnovitiCardNo += "Sales Invoice Header".CreditCardNo3;
//                     InnovitiAMT += "Sales Invoice Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo4 = 'Innoviti' then begin
//                     if InnovitiCardNo <> '' then
//                         InnovitiCardNo += ',';

//                     InnovitiCardNo += "Sales Invoice Header".CreditCardNo4;
//                     InnovitiAMT += "Sales Invoice Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Invoice Header".PayByDebitCdNo1 = 'Innoviti' then begin
//                     if InnovitiCardNo <> '' then
//                         InnovitiCardNo += ',';

//                     InnovitiCardNo += "Sales Invoice Header".DebitCardNo1;
//                     InnovitiAMT += "Sales Invoice Header".PayByDebitCdAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByDebitNo2 = 'Innoviti' then begin
//                     if InnovitiCardNo <> '' then
//                         InnovitiCardNo += ',';

//                     InnovitiCardNo += "Sales Invoice Header".DebitCardNo2;
//                     InnovitiAMT += "Sales Invoice Header".PayByDebitAmt2;
//                 end;
//                 Tmpvalue := 0;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     InnovitiAMT := 0
//                 else begin
//                     if (InnovitiAMT <> 0) and (PendShieldValue > 0) then begin
//                         if InnovitiAMT > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 InnovitiAMT := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 InnovitiAMT := InnovitiAMT - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - InnovitiAMT;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - InnovitiAMT;
//                                 InnovitiAMT := 0;
//                             end;
//                         end;
//                     end;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo1 = 'Pine Labs' then begin
//                     if PineLABSCardNo <> '' then
//                         PineLABSCardNo += ',';

//                     PineLABSCardNo += "Sales Invoice Header".CreditCardNo1;
//                     PineLABSAMT += "Sales Invoice Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo2 = 'Pine Labs' then begin
//                     if PineLABSCardNo <> '' then
//                         PineLABSCardNo += ',';

//                     PineLABSCardNo += "Sales Invoice Header".CreditCardNo2;
//                     PineLABSAMT += "Sales Invoice Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo3 = 'Pine Labs' then begin
//                     if PineLABSCardNo <> '' then
//                         PineLABSCardNo += ',';
//                     PineLABSCardNo += "Sales Invoice Header".CreditCardNo3;
//                     PineLABSAMT += "Sales Invoice Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo4 = 'Pine Labs ' then begin
//                     if PineLABSCardNo <> '' then
//                         PineLABSCardNo += ',';

//                     PineLABSCardNo += "Sales Invoice Header".CreditCardNo4;
//                     PineLABSAMT += "Sales Invoice Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Invoice Header".PayByDebitCdNo1 = 'Pine Labs' then begin
//                     if PineLABSCardNo <> '' then
//                         PineLABSCardNo += ',';

//                     PineLABSCardNo += "Sales Invoice Header".DebitCardNo1;
//                     PineLABSAMT += "Sales Invoice Header".PayByDebitCdAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByDebitNo2 = 'Pine Labs' then begin
//                     if PineLABSCardNo <> '' then
//                         PineLABSCardNo += ',';

//                     PineLABSCardNo := "Sales Invoice Header".DebitCardNo2;
//                     PineLABSAMT += "Sales Invoice Header".PayByDebitAmt2;
//                 end;
//                 Tmpvalue := 0;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     PineLABSAMT := 0
//                 else begin
//                     if (PineLABSAMT <> 0) and (PendShieldValue > 0) then begin
//                         if PineLABSAMT > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PineLABSAMT := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 PineLABSAMT := PineLABSAMT - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - PineLABSAMT;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - PineLABSAMT;
//                                 PineLABSAMT := 0;
//                             end;
//                         end;
//                     end;
//                 end;
//                 //Win-234++ Loyalty Rewardz
//                 if "Sales Invoice Header".PayByCreditNo1 = 'LOYALITY RW' then begin
//                     if LoyaltyRWCardNo <> '' then
//                         LoyaltyRWCardNo += ',';

//                     LoyaltyRWCardNo += "Sales Invoice Header".CreditCardNo1;
//                     LoyaltyRWAMT += "Sales Invoice Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo2 = 'LOYALITY RW' then begin
//                     if LoyaltyRWCardNo <> '' then
//                         LoyaltyRWCardNo += ',';

//                     LoyaltyRWCardNo += "Sales Invoice Header".CreditCardNo2;
//                     LoyaltyRWAMT += "Sales Invoice Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo3 = 'LOYALITY RW' then begin
//                     if LoyaltyRWCardNo <> '' then
//                         LoyaltyRWCardNo += ',';
//                     LoyaltyRWCardNo += "Sales Invoice Header".CreditCardNo3;
//                     LoyaltyRWAMT += "Sales Invoice Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Invoice Header".PayByCreditNo4 = 'LOYALITY RW' then begin
//                     if LoyaltyRWCardNo <> '' then
//                         LoyaltyRWCardNo += ',';

//                     LoyaltyRWCardNo += "Sales Invoice Header".CreditCardNo4;
//                     LoyaltyRWAMT += "Sales Invoice Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Invoice Header".PayByDebitCdNo1 = 'LOYALITY RW' then begin
//                     if LoyaltyRWCardNo <> '' then
//                         LoyaltyRWCardNo += ',';

//                     LoyaltyRWCardNo += "Sales Invoice Header".DebitCardNo1;
//                     LoyaltyRewardz_amount += "Sales Invoice Header".PayByDebitCdAmt1;
//                 end;

//                 if "Sales Invoice Header".PayByDebitNo2 = 'LOYALITY RW' then begin
//                     if LoyaltyRWCardNo <> '' then
//                         LoyaltyRWCardNo += ',';

//                     LoyaltyRWCardNo := "Sales Invoice Header".DebitCardNo2;
//                     LoyaltyRWAMT += "Sales Invoice Header".PayByDebitAmt2;
//                 end;
//                 Tmpvalue := 0;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     LoyaltyRWAMT := 0
//                 else begin
//                     if (LoyaltyRWAMT <> 0) and (PendShieldValue > 0) then begin
//                         if LoyaltyRWAMT > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 LoyaltyRWAMT := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 LoyaltyRWAMT := LoyaltyRWAMT - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - LoyaltyRWAMT;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - LoyaltyRWAMT;
//                                 LoyaltyRWAMT := 0;
//                             end;
//                         end;
//                     end;
//                 end;

//                 //Win=234-- Loyalty Rewardz
//                 GiftAmt := "Sales Invoice Header".GiftVoucherAmt;
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     GiftAmt := 0
//                 else begin
//                     if (GiftAmt <> 0) and (PendShieldValue > 0) then begin
//                         if GiftAmt > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 GiftAmt := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 GiftAmt := GiftAmt - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - GiftAmt;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - GiftAmt;
//                                 GiftAmt := 0;
//                             end;
//                         end;
//                     end;
//                 end;


//                 //FinAmt := "Sales Invoice Header"."Finance Amount";
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     FinAmt := 0
//                 else begin
//                     if (FinAmt <> 0) and (PendShieldValue > 0) then begin
//                         if FinAmt > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 FinAmt := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 FinAmt := FinAmt - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - FinAmt;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - FinAmt;
//                                 FinAmt := 0;
//                             end;
//                         end;
//                     end;
//                 end;



//                 RtgsAmt := "Sales Invoice Header"."RTGS Amount";
//                 if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                     RtgsAmt := 0
//                 else begin
//                     if (RtgsAmt <> 0) and (PendShieldValue > 0) then begin
//                         if RtgsAmt > PendShieldValue then begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 RtgsAmt := PendShieldValue;
//                                 PendShieldValue := 0;
//                             end
//                             else begin
//                                 Tmpvalue := PendShieldValue;
//                                 PendShieldValue := 0;
//                                 RtgsAmt := RtgsAmt - Tmpvalue;
//                             end;
//                         end
//                         else begin
//                             if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                 PendShieldValue := PendShieldValue - RtgsAmt;
//                             end
//                             else begin
//                                 PendShieldValue := PendShieldValue - RtgsAmt;
//                                 RtgsAmt := 0;
//                             end;
//                         end;
//                     end;
//                 end;



//                 BBAmt := 0;
//                 //IF "Sales Invoice Header"."Apple Buyback Amt">0 THEN
//                 //BBAmt:="Sales Invoice Header"."Apple Buyback Amt";
//                 if "Sales Invoice Header"."Ref. Invoice No." = '' then begin
//                     if "Sales Invoice Header"."Maple Buyback Amt" > 0 then
//                         BBAmt := "Sales Invoice Header"."Maple Buyback Amt";

//                     BBAMtTot += BBAmt;
//                 end;

//                 Cmnt := '';
//                 RecComment.SetFilter(RecComment."No.", "Sales Invoice Header"."No.");
//                 if RecComment.FindFirst then
//                     Cmnt := RecComment.Comment;
//                 //WIN316++
//                 Clear(RtgNo);
//                 Clear(POS);
//                 Clear(FinanceCompanyName);
//                 Clear(FinAmt2);
//                 Clear(BANKAppCode);
//                 Clear(POS1);
//                 Clear(FinanceCompanyName1);
//                 Clear(FinAmt1);
//                 Clear(BANKAppCode1);
//                 Clear(FinAmt3);
//                 Clear(BANKAppCode2);
//                 Clear(FinAmt4);
//                 Clear(BANKAppCode4);
//                 if "Sales Invoice Header"."Ref. Invoice No." = '' then begin
//                     if "Sales Invoice Header"."RTGS Ref. No." <> '' then
//                         RtgNo := "Sales Invoice Header"."RTGS Ref. No.";

//                     if "Sales Invoice Header"."Finance Comapny" <> '' then begin
//                         POS := StrPos("Sales Invoice Header"."Finance Comapny", 'BAJAJ');
//                         if POS > 0 then begin
//                             FinanceCompanyName := "Sales Invoice Header"."Finance Comapny";
//                             FinAmt2 := "Sales Invoice Header"."Finance Amount";
//                             if "Sales Invoice Header"."Bank Approval Code" <> '' then
//                                 BANKAppCode := "Sales Invoice Header"."Bank Approval Code";
//                         end
//                         else begin
//                             FinanceCompanyName1 := "Sales Invoice Header"."Finance Comapny";
//                             FinAmt1 := "Sales Invoice Header"."Finance Amount";
//                             if "Sales Invoice Header"."Bank Approval Code" <> '' then
//                                 BANKAppCode1 := "Sales Invoice Header"."Bank Approval Code";
//                         end;
//                     end;
//                     POS1 := 0;
//                     if "Sales Invoice Header"."Finance Comapny new" <> "Sales Invoice Header"."finance comapny new"::" " then begin
//                         POS1 := StrPos(Format("Sales Invoice Header"."Finance Comapny new"), 'BAJAJ FINANCE');
//                         if POS1 > 0 then begin
//                             FinanceCompanyName := Format("Sales Invoice Header"."Finance Comapny new");
//                             //     FinAmt2 := "Sales Invoice Header"."Finance Amount";
//                             if "Sales Invoice Header"."Bank Approval Code" <> '' then
//                                 BANKAppCode := "Sales Invoice Header"."Bank Approval Code";
//                             //test++
//                             Tmpvalue := 0;
//                             FinAmt2 := "Sales Invoice Header"."Finance Amount";
//                             if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                                 FinAmt2 := 0
//                             else begin
//                                 if ("Sales Invoice Header"."Finance Amount" <> 0) and (PendShieldValue > 0) then begin
//                                     if "Sales Invoice Header"."Finance Amount" > PendShieldValue then begin
//                                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             FinAmt2 := PendShieldValue;
//                                         end
//                                         else begin
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             FinAmt2 := "Sales Invoice Header"."Finance Amount" - Tmpvalue;
//                                         end;
//                                     end
//                                     else begin
//                                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                             Tmpvalue := PendShieldValue;
//                                             FinAmt2 := "Sales Invoice Header"."Finance Amount";
//                                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
//                                         end
//                                         else begin
//                                             Tmpvalue := PendShieldValue;
//                                             FinAmt2 := 0;
//                                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
//                                         end;
//                                     end;
//                                 end;
//                             end;
//                             //test--
//                         end
//                         else
//                             POS1 := 0;
//                         POS1 := StrPos(Format("Sales Invoice Header"."Finance Comapny new"), 'HDFC');
//                         if POS1 > 0 then begin
//                             FinanceCompanyName1 := Format("Sales Invoice Header"."Finance Comapny new");
//                             // FinAmt1 := "Sales Invoice Header"."Finance Amount";
//                             if "Sales Invoice Header"."Bank Approval Code" <> '' then
//                                 BANKAppCode1 := "Sales Invoice Header"."Bank Approval Code";
//                             //test++
//                             Tmpvalue := 0;
//                             FinAmt1 := "Sales Invoice Header"."Finance Amount";
//                             if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                                 FinAmt1 := 0
//                             else begin
//                                 if ("Sales Invoice Header"."Finance Amount" <> 0) and (PendShieldValue > 0) then begin
//                                     if "Sales Invoice Header"."Finance Amount" > PendShieldValue then begin
//                                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             FinAmt1 := PendShieldValue;
//                                         end
//                                         else begin
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             FinAmt1 := "Sales Invoice Header"."Finance Amount" - Tmpvalue;
//                                         end;
//                                     end
//                                     else begin
//                                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                             Tmpvalue := PendShieldValue;
//                                             FinAmt1 := "Sales Invoice Header"."Finance Amount";
//                                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
//                                         end
//                                         else begin
//                                             Tmpvalue := PendShieldValue;
//                                             FinAmt1 := 0;
//                                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
//                                         end;
//                                     end;
//                                 end;
//                             end;
//                             //test-
//                         end
//                         else
//                             POS1 := 0;
//                         POS1 := StrPos(Format("Sales Invoice Header"."Finance Comapny new"), 'CITI FINANCE');
//                         if POS1 > 0 then begin
//                             FinanceCompanyName1 := Format("Sales Invoice Header"."Finance Comapny new");
//                             //    FinAmt3 := "Sales Invoice Header"."Finance Amount";
//                             if "Sales Invoice Header"."Bank Approval Code" <> '' then
//                                 BANKAppCode2 := "Sales Invoice Header"."Bank Approval Code";
//                             //test++
//                             Tmpvalue := 0;
//                             FinAmt3 := "Sales Invoice Header"."Finance Amount";
//                             if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                                 FinAmt3 := 0
//                             else begin
//                                 if ("Sales Invoice Header"."Finance Amount" <> 0) and (PendShieldValue > 0) then begin
//                                     if "Sales Invoice Header"."Finance Amount" > PendShieldValue then begin
//                                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             FinAmt3 := PendShieldValue;
//                                         end
//                                         else begin
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             FinAmt3 := "Sales Invoice Header"."Finance Amount" - Tmpvalue;
//                                         end;
//                                     end
//                                     else begin
//                                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                             Tmpvalue := PendShieldValue;
//                                             FinAmt3 := "Sales Invoice Header"."Finance Amount";
//                                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
//                                         end
//                                         else begin
//                                             Tmpvalue := PendShieldValue;
//                                             FinAmt3 := 0;
//                                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
//                                         end;
//                                     end;
//                                 end;
//                             end;
//                             //test--

//                         end
//                         else
//                             POS1 := 0;
//                         POS1 := StrPos(Format("Sales Invoice Header"."Finance Comapny new"), 'DCEMI');
//                         if POS1 > 0 then begin
//                             FinanceCompanyName1 := Format("Sales Invoice Header"."Finance Comapny new");
//                             //  FinAmt4 := "Sales Invoice Header"."Finance Amount";
//                             if "Sales Invoice Header"."Bank Approval Code" <> '' then
//                                 BANKAppCode4 := "Sales Invoice Header"."Bank Approval Code";
//                             //test++
//                             Tmpvalue := 0;
//                             FinAmt4 := "Sales Invoice Header"."Finance Amount";
//                             if ("Sales Invoice Header"."Ref. Invoice No." <> '') and (PendShieldValue = 0) then
//                                 FinAmt4 := 0
//                             else begin
//                                 if ("Sales Invoice Header"."Finance Amount" <> 0) and (PendShieldValue > 0) then begin
//                                     if "Sales Invoice Header"."Finance Amount" > PendShieldValue then begin
//                                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             FinAmt4 := PendShieldValue;
//                                         end
//                                         else begin
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             FinAmt4 := "Sales Invoice Header"."Finance Amount" - Tmpvalue;
//                                         end;
//                                     end
//                                     else begin
//                                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                                             Tmpvalue := PendShieldValue;
//                                             FinAmt4 := "Sales Invoice Header"."Finance Amount";
//                                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
//                                         end
//                                         else begin
//                                             Tmpvalue := PendShieldValue;
//                                             FinAmt4 := 0;
//                                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
//                                         end;
//                                     end;
//                                 end;
//                             end;
//                             //test--
//                         end;
//                     end;
//                 end;
//                 //FOR PAYTM AND EX

//                 /*
//                 IF "Sales Invoice Header"."Ref. Invoice No."='' THEN
//                 BEGIN

//                 //paytm++
//                                   Tmpvalue := 0;
//                                   paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount";
//                                   IF ( "Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
//                                   paytm_amount := 0
//                                   ELSE
//                                   BEGIN
//                                     IF ( "Sales Invoice Header"."Paytm Transfer Amount" <> 0 ) AND (PendShieldValue >0) THEN BEGIN
//                                       IF "Sales Invoice Header"."Paytm Transfer Amount" > PendShieldValue THEN BEGIN
//                                           IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             paytm_amount := PendShieldValue;
//                                           END
//                                           ELSE BEGIN
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount" - Tmpvalue;
//                                           END;
//                                       END
//                                       ELSE BEGIN
//                                         IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
//                                           Tmpvalue := PendShieldValue;
//                                           paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount";
//                                           PendShieldValue := PendShieldValue - "Sales Invoice Header"."Paytm Transfer Amount";
//                                          END
//                                          ELSE BEGIN
//                                           Tmpvalue := PendShieldValue;
//                                           paytm_amount := 0;
//                                           PendShieldValue := PendShieldValue - "Sales Invoice Header"."Paytm Transfer Amount";
//                                          END;
//                                       END;
//                                     END;
//                                   END;

//                 //paytm--
//                 //ex_amount++
//                                   Tmpvalue := 0;
//                                   ex_amount := "Sales Invoice Header"."Amazon Transfer Amount";
//                                   IF ( "Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
//                                   ex_amount := 0
//                                   ELSE
//                                   BEGIN
//                                     IF ( "Sales Invoice Header"."Amazon Transfer Amount" <> 0 ) AND (PendShieldValue >0) THEN BEGIN
//                                       IF "Sales Invoice Header"."Amazon Transfer Amount" > PendShieldValue THEN BEGIN
//                                           IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             ex_amount := PendShieldValue;
//                                           END
//                                           ELSE BEGIN
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             ex_amount := "Sales Invoice Header"."Amazon Transfer Amount" - Tmpvalue;
//                                           END;
//                                       END
//                                       ELSE BEGIN
//                                         IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
//                                           Tmpvalue := PendShieldValue;
//                                           ex_amount := "Sales Invoice Header"."Amazon Transfer Amount";
//                                           PendShieldValue := PendShieldValue - "Sales Invoice Header"."Amazon Transfer Amount";
//                                          END
//                                          ELSE BEGIN
//                                           Tmpvalue := PendShieldValue;
//                                           ex_amount := 0;
//                                           PendShieldValue := PendShieldValue - "Sales Invoice Header"."Amazon Transfer Amount";
//                                          END;
//                                       END;
//                                     END;
//                                   END;

//                 //ex_amount--
//                 //insurance_amount++
//                                   Tmpvalue := 0;
//                                   insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount";
//                                   IF ( "Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
//                                   insurance_Amount := 0
//                                   ELSE
//                                   BEGIN
//                                     IF ( "Sales Invoice Header"."Insurance Transfer Amount" <> 0 ) AND (PendShieldValue >0) THEN BEGIN
//                                       IF "Sales Invoice Header"."Insurance Transfer Amount" > PendShieldValue THEN BEGIN
//                                           IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             insurance_Amount := PendShieldValue;
//                                           END
//                                           ELSE BEGIN
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount" - Tmpvalue;
//                                           END;
//                                       END
//                                       ELSE BEGIN
//                                         IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
//                                           Tmpvalue := PendShieldValue;
//                                           insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount";
//                                           PendShieldValue := PendShieldValue - "Sales Invoice Header"."Insurance Transfer Amount";
//                                          END
//                                          ELSE BEGIN
//                                           Tmpvalue := PendShieldValue;
//                                           insurance_Amount := 0;
//                                           PendShieldValue := PendShieldValue - "Sales Invoice Header"."Insurance Transfer Amount";
//                                          END;
//                                       END;
//                                     END;
//                                   END;

//                 //insurance_amount--
//                 //Cashify_amount++
//                                   Tmpvalue := 0;
//                                   Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount";
//                                   IF ( "Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
//                                   Cashify_amount := 0
//                                   ELSE
//                                   BEGIN
//                                     IF ( "Sales Invoice Header"."Cashify Transfer Amount" <> 0 ) AND (PendShieldValue >0) THEN BEGIN
//                                       IF "Sales Invoice Header"."Cashify Transfer Amount" > PendShieldValue THEN BEGIN
//                                           IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             Cashify_amount := PendShieldValue;
//                                           END
//                                           ELSE BEGIN
//                                             Tmpvalue := PendShieldValue;
//                                             PendShieldValue := 0;
//                                             Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount" - Tmpvalue;
//                                           END;
//                                       END
//                                       ELSE BEGIN
//                                         IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
//                                           Tmpvalue := PendShieldValue;
//                                           Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount";
//                                           PendShieldValue := PendShieldValue - "Sales Invoice Header"."Cashify Transfer Amount";
//                                          END
//                                          ELSE BEGIN
//                                           Tmpvalue := PendShieldValue;
//                                           Cashify_amount := 0;
//                                           PendShieldValue := PendShieldValue - "Sales Invoice Header"."Cashify Transfer Amount";
//                                          END;
//                                       END;
//                                     END;
//                                   END;

//                 //cashify_amount--
//                 END;
//                 */
//                 //Win316--
//                 Clear(paytm_amount);
//                 Clear(ex_amount);
//                 Clear(insurance_Amount);
//                 Clear(Cashify_amount);
//                 Clear(Cashify_Bonus_amount);
//                 Clear(Pinelab_amount);
//                 Clear(LoyaltyRewardz_amount);
//                 //paytm++
//                 Tmpvalue := 0;
//                 PendShieldValue := TotShieldvalue;
//                 paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount";
//                 if ("Sales Invoice Header"."Paytm Transfer Amount" <> 0) and (PendShieldValue > 0) then begin
//                     if "Sales Invoice Header"."Paytm Transfer Amount" > PendShieldValue then begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             paytm_amount := Tmpvalue;
//                         end
//                         else begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount" - Tmpvalue;
//                         end;
//                     end
//                     else begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount";
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Paytm Transfer Amount";
//                         end
//                         else begin
//                             paytm_amount := 0;
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Paytm Transfer Amount";
//                         end;
//                     end;
//                 end;

//                 // New Logic for Paytm Amount
//                 Clear(paytm_amount);
//                 GLEntry.Reset;
//                 GLEntry.SetRange("G/L Account No.", '298046');
//                 GLEntry.SetRange("Document No.", "Sales Invoice Header"."No." + '-P');
//                 if GLEntry.FindFirst then begin
//                     paytm_amount := GLEntry.Amount;
//                 end;

//                 // New Logic for Servify Amount
//                 Clear(ServifyAmount);
//                 GLEntry.Reset;
//                 GLEntry.SetRange("G/L Account No.", '298039');
//                 GLEntry.SetRange("Document No.", "Sales Invoice Header"."No." + '-P');
//                 if GLEntry.FindFirst then begin
//                     ServifyAmount := GLEntry.Amount;
//                 end;


//                 // New Logic for Paytm AppCode
//                 Clear(ServifyAppCode);
//                 Clear(PaytmAppCode);
//                 SalesOrderExtension.Reset;
//                 SalesOrderExtension.SetRange("No.", "Sales Invoice Header"."No.");
//                 if SalesOrderExtension.FindFirst then begin
//                     ServifyAppCode := SalesOrderExtension."Servify Approval Code";
//                     PaytmAppCode := SalesOrderExtension."Paytm Approval Code"
//                 end;
//                 //TK  // New Logic for Servify Bonus Amount
//                 Clear(ServifyBonusAmount);
//                 GLEntry.Reset;
//                 GLEntry.SetRange("G/L Account No.", '272204');
//                 GLEntry.SetRange("Document No.", "Sales Invoice Header"."No." + '-P');
//                 if GLEntry.FindFirst then begin
//                     ServifyBonusAmount := GLEntry.Amount;
//                 end;

//                 //paytm--
//                 //ex++
//                 Tmpvalue := 0;
//                 PendShieldValue := TotShieldvalue;
//                 ex_amount := "Sales Invoice Header"."Amazon Transfer Amount";
//                 if ("Sales Invoice Header"."Amazon Transfer Amount" <> 0) and (PendShieldValue > 0) then begin
//                     if "Sales Invoice Header"."Amazon Transfer Amount" > PendShieldValue then begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             ex_amount := Tmpvalue;
//                         end
//                         else begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             ex_amount := "Sales Invoice Header"."Amazon Transfer Amount" - Tmpvalue;
//                         end;
//                     end
//                     else begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             ex_amount := "Sales Invoice Header"."Amazon Transfer Amount";
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Amazon Transfer Amount";
//                         end
//                         else begin
//                             ex_amount := 0;
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Amazon Transfer Amount";
//                         end;
//                     end;
//                 end;

//                 //ex--
//                 //insurance++
//                 Tmpvalue := 0;
//                 PendShieldValue := TotShieldvalue;
//                 insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount";
//                 if ("Sales Invoice Header"."Insurance Transfer Amount" <> 0) and (PendShieldValue > 0) then begin
//                     if "Sales Invoice Header"."Insurance Transfer Amount" > PendShieldValue then begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             insurance_Amount := Tmpvalue;
//                         end
//                         else begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount" - Tmpvalue;
//                         end;
//                     end
//                     else begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount";
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Insurance Transfer Amount";
//                         end
//                         else begin
//                             insurance_Amount := 0;
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Insurance Transfer Amount";
//                         end;
//                     end;
//                 end;

//                 //insurance--
//                 //cashify++
//                 Tmpvalue := 0;
//                 PendShieldValue := TotShieldvalue;
//                 Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount";
//                 Cashify_Bonus_amount := "Sales Invoice Header"."Amount Including VAT";//"Casify Bonus Amount";
//                 if ("Sales Invoice Header"."Cashify Transfer Amount" <> 0) and (PendShieldValue > 0) then begin
//                     if "Sales Invoice Header"."Cashify Transfer Amount" > PendShieldValue then begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             Cashify_amount := Tmpvalue;
//                         end
//                         else begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount" - Tmpvalue;
//                         end;
//                     end
//                     else begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount";
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Cashify Transfer Amount";
//                         end
//                         else begin
//                             Cashify_amount := 0;
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Cashify Transfer Amount";
//                         end;
//                     end;
//                 end;

//                 //cashify--
//                 //Pinelab++
//                 Tmpvalue := 0;
//                 PendShieldValue := TotShieldvalue;
//                 Pinelab_amount := "Sales Invoice Header"."Pinelab Transfer Amount";
//                 if ("Sales Invoice Header"."Pinelab Transfer Amount" <> 0) and (PendShieldValue > 0) then begin
//                     if "Sales Invoice Header"."Pinelab Transfer Amount" > PendShieldValue then begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             Pinelab_amount := Tmpvalue;
//                         end
//                         else begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             Pinelab_amount := "Sales Invoice Header"."Pinelab Transfer Amount" - Tmpvalue;
//                         end;
//                     end
//                     else begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             Pinelab_amount := "Sales Invoice Header"."Pinelab Transfer Amount";
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Pinelab Transfer Amount";
//                         end
//                         else begin
//                             Pinelab_amount := 0;
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Pinelab Transfer Amount";
//                         end;
//                     end;
//                 end;

//                 //pinelab--
//                 //Loyalty Rewardz++
//                 Tmpvalue := 0;
//                 PendShieldValue := TotShieldvalue;
//                 LoyaltyRewardz_amount := "Sales Invoice Header"."Loyalty Riwardz Tr.Amount";
//                 if ("Sales Invoice Header"."Loyalty Riwardz Tr.Amount" <> 0) and (PendShieldValue > 0) then begin
//                     if "Sales Invoice Header"."Loyalty Riwardz Tr.Amount" > PendShieldValue then begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             LoyaltyRewardz_amount := Tmpvalue;
//                         end
//                         else begin
//                             Tmpvalue := PendShieldValue;
//                             PendShieldValue := 0;
//                             LoyaltyRewardz_amount := "Sales Invoice Header"."Loyalty Riwardz Tr.Amount" - Tmpvalue;
//                         end;
//                     end
//                     else begin
//                         if "Sales Invoice Header"."Ref. Invoice No." <> '' then begin
//                             Tmpvalue := PendShieldValue;
//                             LoyaltyRewardz_amount := "Sales Invoice Header"."Loyalty Riwardz Tr.Amount";
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Loyalty Riwardz Tr.Amount";
//                         end
//                         else begin
//                             Pinelab_amount := 0;
//                             PendShieldValue := PendShieldValue - "Sales Invoice Header"."Loyalty Riwardz Tr.Amount";
//                         end;
//                     end;
//                 end;

//                 //Loyalty Rewardz--

//             end;

//             trigger OnPreDataItem()
//             begin
//                 Srno := 0;
//                 if usersetup."Location Code" <> '' then
//                     "Sales Invoice Header".SetFilter("Sales Invoice Header"."Location Code", '%1', usersetup."Location Code");
//                 BBAMtTot := 0;
//                 if "Sales Invoice Header".FindFirst then
//                     Branchcode1 := "Sales Invoice Header"."Shortcut Dimension 1 Code";
//                 "Sales Invoice Header".SetRange("Sales Invoice Header"."Posting Date", startdt, enddt);
//                 if "Sales Invoice Header".FindSet then;
//             end;
//         }
//         dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
//         {
//             DataItemTableView = sorting("No.");
//             PrintOnlyIfDetail = false;
//             RequestFilterFields = "Location Code";
//             column(ReportForNavId_9869; 9869)
//             {
//             }
//             column(PostingDate_SalesCrMemoHeader; "Sales Cr.Memo Header"."Posting Date")
//             {
//             }
//             column(ExternalDocumentNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."External Document No.")
//             {
//             }
//             column(SCR_DocNo; "Sales Cr.Memo Header"."No.")
//             {
//             }
//             column(Srno1; Srno1)
//             {
//             }
//             column(custnm; "Sales Cr.Memo Header"."Sell-to Customer Name")
//             {
//             }
//             column(amt_2_cust; '') //"Sales Cr.Memo Header"."Amount to Customer")
//             {
//             }
//             column(Cash1; "Sales Cr.Memo Header".PayByCashAmt)
//             {
//             }
//             column(chqamt; "Sales Cr.Memo Header".PayByChqAmt)
//             {
//             }
//             column(RTGSAmt; "Sales Cr.Memo Header"."RTGS Amount")
//             {
//             }
//             column(cr_no1; "Sales Cr.Memo Header".PayByCreditNo1)
//             {
//             }
//             column(cr_no2; "Sales Cr.Memo Header".PayByCreditNo2)
//             {
//             }
//             column(cr_no3; "Sales Cr.Memo Header".PayByCreditNo3)
//             {
//             }
//             column(cr_no4; "Sales Cr.Memo Header".PayByCreditNo4)
//             {
//             }
//             column(crmt1; "Sales Cr.Memo Header".PayByCreditAmt1)
//             {
//             }
//             column(crmt2; "Sales Cr.Memo Header".PayByCreditAmt2)
//             {
//             }
//             column(crmt3; "Sales Cr.Memo Header".PayByCreditAmt3)
//             {
//             }
//             column(crmt4; "Sales Cr.Memo Header".PayByCreditAmt4)
//             {
//             }
//             column(GiftVouchCrAmt; "Sales Cr.Memo Header".GiftVoucherAmt)
//             {
//             }
//             column(FinanceCrAmt; "Sales Cr.Memo Header"."Finance Amount")
//             {
//             }
//             column(AppQty1; AppQty1)
//             {
//             }
//             column(NonAppQty1; NonAppQty1)
//             {
//             }
//             column(HDFCCardNo1; HDFCCardNo1)
//             {
//             }
//             column(HSBCCardNo1; HSBCCardNo1)
//             {
//             }
//             column(AMXCardNo1; AMXCardNo1)
//             {
//             }
//             column(AXCardNo1; AXCardNo1)
//             {
//             }
//             column(CITICardNo1; CITICardNo1)
//             {
//             }
//             column(InnovitiCardNo1; InnovitiCardNo1)
//             {
//             }
//             column(PineLABSCardNo1; PineLABSCardNo1)
//             {
//             }
//             column(HDFCAMT1; HDFCAMT1)
//             {
//             }
//             column(AXISAMT1; AXISAMT1)
//             {
//             }
//             column(HSBCAMT1; HSBCAMT1)
//             {
//             }
//             column(AMXAMT1; AMXAMT1)
//             {
//             }
//             column(CITIAMT1; CITIAMT1)
//             {
//             }
//             column(InnovitiAMT1; InnovitiAMT1)
//             {
//             }
//             column(PineLABSAMT1; PineLABSAMT1)
//             {
//             }
//             column(AppBBCrAmt; "Sales Cr.Memo Header"."Apple Buyback Amt")
//             {
//             }
//             column(MapBBCrAmt; "Sales Cr.Memo Header"."Maple Buyback Amt")
//             {
//             }
//             column(BBCrAmt; BBCrAmt)
//             {
//             }
//             column(BBCrAMtTot; BBCrAMtTot)
//             {
//             }
//             column(CommentCr; CmntCr)
//             {
//             }
//             column(Cr_SalesName; SalesName)
//             {
//             }
//             column(LoyalityRWCardNo1; LoyalityRWCardNo1)
//             {
//             }
//             column(LoyaltyRWAMT1; LoyaltyRWAMT1)
//             {
//             }

//             trigger OnAfterGetRecord()
//             begin
//                 Srno1 += 1;
//                 AppQty1 := 0;
//                 NonAppQty1 := 0;
//                 InitVarCrMemo;
//                 salesCrMemoLn.Reset;
//                 salesCrMemoLn.SetFilter(salesCrMemoLn."Document No.", "Sales Cr.Memo Header"."No.");
//                 if salesCrMemoLn.FindFirst then begin
//                     repeat
//                         if salesCrMemoLn."Item Category Code" = 'APPLE' then
//                             AppQty1 += salesCrMemoLn.Quantity
//                         else
//                             NonAppQty1 += salesCrMemoLn.Quantity;
//                     until salesCrMemoLn.Next = 0;
//                 end;


//                 if "Sales Cr.Memo Header".PayByCreditNo1 = 'HDFC' then begin
//                     HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
//                     HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo2 = 'HDFC' then begin
//                     HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
//                     HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo3 = 'HDFC' then begin
//                     HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
//                     HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo4 = 'HDFC' then begin
//                     HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
//                     HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo5 = 'HDFC' then begin
//                     HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
//                     HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
//                 end;

//                 /*
//                 if "Sales Cr.Memo Header".PayByCreditNo1='HSBC' then
//                 begin
//                 HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo1;
//                 HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo2='HSBC' then
//                 begin
//                 HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo2;
//                 HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo3='HSBC' then
//                 begin
//                 HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo3;
//                 HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo4='HSBC' then
//                 begin
//                 HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo4;
//                 HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo5='HSBC' then
//                 begin
//                 HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo5;
//                 HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt5;
//                 end;
//                 */

//                 if "Sales Cr.Memo Header".PayByCreditNo1 = 'ICICI' then begin
//                     HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
//                     HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo2 = 'ICICI' then begin
//                     HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
//                     HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo3 = 'ICICI' then begin
//                     HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
//                     HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo4 = 'ICICI' then begin
//                     HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
//                     HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo5 = 'ICICI' then begin
//                     HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
//                     HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
//                 end;
//                 //CCIT_TK
//                 if "Sales Cr.Memo Header".PayByCreditNo1 = 'AXIS' then begin
//                     AXCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
//                     AXISAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo2 = 'AXIS' then begin
//                     AXCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
//                     AXISAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo3 = 'AXIS' then begin
//                     AXCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
//                     AXISAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo4 = 'AXIS' then begin
//                     AXCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
//                     AXISAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo5 = 'AXIS' then begin
//                     AXCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
//                     AXISAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
//                 end;

//                 //CCIT_TK


//                 if "Sales Cr.Memo Header".PayByCreditNo1 = 'AMEX' then begin
//                     AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
//                     AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo2 = 'AMEX' then begin
//                     AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
//                     AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo3 = 'AMEX' then begin
//                     AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
//                     AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo4 = 'AMEX' then begin
//                     AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
//                     AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo5 = 'AMEX' then begin
//                     AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
//                     AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo1 = 'UPI' then begin
//                     CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
//                     CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo2 = 'UPI' then begin
//                     CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
//                     CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo3 = 'UPI' then begin
//                     CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
//                     CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo4 = 'UPI' then begin
//                     CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
//                     CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo5 = 'UPI' then begin
//                     CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
//                     CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo1 = 'Innoviti' then begin
//                     InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
//                     InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo2 = 'Innoviti' then begin
//                     InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
//                     InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo3 = 'Innoviti' then begin
//                     InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
//                     InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo4 = 'Innoviti' then begin
//                     InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
//                     InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo5 = 'Innoviti' then begin
//                     InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
//                     InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo1 = 'Pine Labs' then begin
//                     PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
//                     PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo2 = 'Pine Labs' then begin
//                     PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
//                     PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo3 = 'Pine Labs' then begin
//                     PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
//                     PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo4 = 'Pine Labs ' then begin
//                     PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
//                     PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo5 = 'Pine Labs' then begin
//                     PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
//                     PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
//                 end;
//                 //Win-234 Loyality RW++
//                 if "Sales Cr.Memo Header".PayByCreditNo1 = 'LOYALTY RW' then begin
//                     LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
//                     LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo2 = 'LOYALTY RW' then begin
//                     LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
//                     LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo3 = 'LOYALTY RW' then begin
//                     LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
//                     LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo4 = 'LOYALTY RW' then begin
//                     LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
//                     LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
//                 end;

//                 if "Sales Cr.Memo Header".PayByCreditNo5 = 'LOYALTY RW' then begin
//                     LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
//                     LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
//                 end;

//                 //Win-234 Loyality RW--


//                 BBCrAmt := 0;
//                 if "Sales Cr.Memo Header"."Maple Buyback Amt" > 0 then
//                     BBCrAmt := "Sales Cr.Memo Header"."Maple Buyback Amt";
//                 //IF "Sales Cr.Memo Header"."Apple Buyback Amt">0 THEN
//                 //BBCrAmt:="Sales Cr.Memo Header"."Apple Buyback Amt";

//                 BBCrAMtTot += BBCrAmt;

//                 CmntCr := '';
//                 RecCommentCr.SetFilter(RecCommentCr."No.", "Sales Cr.Memo Header"."No.");
//                 if RecCommentCr.FindFirst then
//                     CmntCr := RecCommentCr.Comment;

//                 RecSalesPerson.Reset;
//                 RecSalesPerson.SetRange(RecSalesPerson.Code, "Sales Cr.Memo Header"."Salesperson Code");
//                 if RecSalesPerson.FindFirst then
//                     SalesName := RecSalesPerson.Name;

//             end;

//             trigger OnPreDataItem()
//             begin
//                 Srno1 := 0;
//                 BBCrAMtTot := 0;

//                 //IF usersetup.GET("Sales Cr.Memo Header"."User ID") THEN
//                 //IF "Sales Cr.Memo Header".GETFILTER("Sales Cr.Memo Header"."Location Code")='' THEN
//                 if usersetup."Location Code" <> '' then
//                     "Sales Cr.Memo Header".SetFilter("Sales Cr.Memo Header"."Location Code", usersetup."Location Code");


//                 "Sales Cr.Memo Header".SetRange("Sales Cr.Memo Header"."Posting Date", startdt, enddt);
//                 if "Sales Cr.Memo Header".FindFirst then;
//             end;
//         }
//         dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
//         {
//             DataItemTableView = sorting("Customer No.", "Posting Date") order(ascending) where("Document Type" = filter(Payment | Refund));
//             column(ReportForNavId_1000000065; 1000000065)
//             {
//             }
//             column(CustDocNo; "Cust. Ledger Entry"."Document No.")
//             {
//             }
//             column(cust_cramt; "Cust. Ledger Entry".Amount)
//             {
//             }
//             column(cust_custnm; custnm)
//             {
//             }
//             column(cust_amt; cust_amt)
//             {
//             }
//             column(cashamt; cashamt)
//             {
//             }
//             column(Srno2; Srno2)
//             {
//             }
//             column(HDFCAMT2; HDFCAMT2)
//             {
//             }
//             column(HSBCAMT2; HSBCAMT2)
//             {
//             }
//             column(AXISAMT2; AXISAMT2)
//             {
//             }
//             column(AMXAMT2; AMXAMT2)
//             {
//             }
//             column(CITIAMT2; CITIAMT2)
//             {
//             }
//             column(InnovitiAMT2; InnovitiAMT2)
//             {
//             }
//             column(PineLABSAMT2; PineLABSAMT2)
//             {
//             }
//             column(LoyaltyRWAMT2; LoyaltyRWAMT2)
//             {
//             }

//             trigger OnAfterGetRecord()
//             begin
//                 custnm := '';
//                 cust_amt := 0;
//                 cashamt := 0;
//                 chquamt := 0;
//                 HDFCAMT2 := 0;
//                 HSBCAMT2 := 0;
//                 AMXAMT2 := 0;
//                 AXISAMT2 := 0;
//                 CITIAMT2 := 0;
//                 InnovitiAMT2 := 0;
//                 PineLABSAMT2 := 0;
//                 "Cust. Ledger Entry".CalcFields("Cust. Ledger Entry"."Credit Amount");

//                 Srno2 += 1;
//                 cust.Reset;
//                 cust.SetFilter(cust."No.", "Cust. Ledger Entry"."Customer No.");
//                 if cust.FindFirst then
//                     custnm := cust.Name;

//                 cust_amt := "Cust. Ledger Entry".Amount;
//                 if ("Cust. Ledger Entry"."Reason Code" = 'CASH') then
//                     cashamt := "Cust. Ledger Entry"."Credit Amount";


//                 if ("Cust. Ledger Entry"."Reason Code" = 'HDFC') then
//                     HDFCAMT2 := "Cust. Ledger Entry"."Credit Amount";

//                 if ("Cust. Ledger Entry"."Reason Code" = 'ICICI') then
//                     HSBCAMT2 := "Cust. Ledger Entry"."Credit Amount";
//                 //CCIT_TK
//                 if ("Cust. Ledger Entry"."Reason Code" = 'AXIS') then
//                     AXISAMT2 := "Cust. Ledger Entry"."Credit Amount";
//                 //CCIT_TK

//                 if ("Cust. Ledger Entry"."Reason Code" = 'AMEX') then
//                     AMXAMT2 := "Cust. Ledger Entry"."Credit Amount";

//                 if ("Cust. Ledger Entry"."Reason Code" = 'UPI') then
//                     CITIAMT2 := "Cust. Ledger Entry"."Credit Amount";

//                 if ("Cust. Ledger Entry"."Reason Code" = 'Innoviti') then
//                     InnovitiAMT2 := "Cust. Ledger Entry"."Credit Amount";

//                 if ("Cust. Ledger Entry"."Reason Code" = 'PineLABS') then
//                     PineLABSAMT2 := "Cust. Ledger Entry"."Credit Amount";

//                 if "Cust. Ledger Entry"."Reason Code" = 'LOYALITY RW' then
//                     LoyaltyRWAMT2 := "Cust. Ledger Entry"."Credit Amount";
//             end;

//             trigger OnPreDataItem()
//             begin
//                 Srno2 := 0;
//                 "Cust. Ledger Entry".SetRange("Cust. Ledger Entry"."Posting Date", startdt, enddt);
//                 //"Cust. Ledger Entry".SETFILTER( "Location Code",'%1',usersetup."Location Code");

//                 "Cust. Ledger Entry".SetFilter("Cust. Ledger Entry"."Global Dimension 1 Code", '%1', Branchcode1);
//                 //"Cust. Ledger Entry".SETFILTER("Cust. Ledger Entry"."Reason Code",'<>%1','');
//                 "Cust. Ledger Entry".SetFilter("Cust. Ledger Entry"."Document No.", '%1|%2', 'JV*', 'CR*');

//                 //IF "Cust. Ledger Entry".FINDSET THEN;
//             end;
//         }
//     }

//     requestpage
//     {

//         layout
//         {
//             area(content)
//             {
//                 group(Options)
//                 {
//                     field("Start Date"; startdt)
//                     {
//                         ApplicationArea = Basic;
//                     }
//                     field("End Date"; enddt)
//                     {
//                         ApplicationArea = Basic;
//                     }
//                     field(Location; loc.Code)
//                     {
//                         ApplicationArea = Basic;
//                         Visible = false;
//                     }
//                 }
//             }
//         }

//         actions
//         {
//         }
//     }

//     labels
//     {
//     }

//     trigger OnPreReport()
//     begin
//         if usersetup.Get(UserId) then
//             if loc.Get(usersetup."Location Code") then
//                 SalesSetup.Get;
//     end;

//     var
//         Cashify_Bonus_amount: Decimal;
//         ServifyBonusAmount: Decimal;
//         LastFieldNo: Integer;
//         FooterPrinted: Boolean;
//         GLAcc: Record "G/L Account";
//         Srno: Integer;
//         PurchRctHeader: Record "Purch. Rcpt. Header";
//         Vend: Record Vendor;
//         Item: Record Item;
//         InvepostingSetup: Record "Inventory Posting Setup";
//         Gl: Record "G/L Account";
//         Desc: Text[250];
//         PurchInvHeader: Record "Purch. Inv. Header";
//         cstgroup: Code[10];
//         TaxName: Text[30];
//         PurchINVLine: Record "Purch. Inv. Line";
//         cstcheck: Boolean;
//         comp: Record "Company Information";
//         datefilter: Text[50];
//         locfilter55: Text[50];
//         loc: Record Location;
//         taxgrp: Record "Tax Group";
//         taxdesc: Text[30];
//         txt1: label 'give location';
//         loc_txt: Code[10];
//         k: Text[30];
//         l: Text[30];
//         xl: Boolean;
//         TD: Record "Tax Detail";
//         TJ: Record "Tax Jurisdiction";
//         taxperc: Decimal;
//         typ: Text[30];
//         cform: Code[30];
//         statecode: Code[10];
//         recstate: Record State;
//         locat: Record Location;
//         site: Text[30];
//         RecPurHead: Record "Purchase Header";
//         i: Text[30];
//         RecGPPG: Record "General Posting Setup";
//         CurrReport_PAGENOCaptionLbl: label 'Page';
//         PURCHASE_REGISTER_FOR_THE_PERIOD_CaptionLbl: label 'PURCHASE REGISTER FOR THE PERIOD ';
//         Voucher_No_CaptionLbl: label 'Voucher No.';
//         Vendor_CodeCaptionLbl: label 'Vendor Code';
//         Vendor_NameCaptionLbl: label 'Vendor Name';
//         Bill_No_CaptionLbl: label 'Bill No.';
//         Bill_DateCaptionLbl: label 'Bill Date';
//         GRN_No_CaptionLbl: label 'GRN No.';
//         GRN_DateCaptionLbl: label 'GRN Date';
//         State_T_I_N_No_CaptionLbl: label 'State T.I.N No.';
//         CST_T_I_N_No_CaptionLbl: label 'CST T.I.N No.';
//         Voucher_DateCaptionLbl: label 'Voucher Date';
//         Item___G_L_DescriptionCaptionLbl: label 'Item / G/L Description';
//         Total_Bill__Invoice_Amt_CaptionLbl: label 'Total Bill/ Invoice Amt.';
//         Discount__Amt_CaptionLbl: label 'Discount  Amt.';
//         Item_CodeCaptionLbl: label 'Item Code';
//         Net_Amt_CaptionLbl: label 'Net Amt.';
//         Cenvat_Amt_CaptionLbl: label 'Cenvat Amt.';
//         G_L_CodeCaptionLbl: label 'G/L Code';
//         G_L_DescriptionCaptionLbl: label 'G/L Description';
//         Other_AmtCaptionLbl: label 'Other Amt';
//         Tax_CaptionLbl: label ' Tax%';
//         Tax_DescriptionCaptionLbl: label 'Tax Description';
//         Tax__Amt_CaptionLbl: label 'Tax  Amt.';
//         RecPurHead__Order_Date_CaptionLbl: label 'Label1102159009';
//         Grand_TotalCaptionLbl: label 'Grand Total';
//         Group_TotalCaptionLbl: label 'Group Total';
//         InvCr: Integer;
//         sbucode: Text[30];
//         sbu: Record "Dimension Value";
//         sbufiltername: Text[30];
//         sbuname: Text[30];
//         sbuname1: Text[30];
//         taxdesc1: Text[30];
//         datefilter1: Text[50];
//         locfilter551: Text[50];
//         loc_txt1: Code[10];
//         docno: Code[30];
//         No: Boolean;
//         "SBU String": Text[100];
//         AppQty: Integer;
//         NonAppQty: Integer;
//         HDFCCardNo: Code[30];
//         HSBCCardNo: Code[30];
//         AMXCardNo: Code[30];
//         AXCardNo2: Code[30];
//         AXCardNo1: Code[30];
//         AXCardNo: Code[30];
//         CITICardNo: Code[30];
//         InnovitiCardNo: Code[30];
//         PineLABSCardNo: Code[30];
//         LoyaltyRWCardNo: Code[30];
//         HDFCAMT: Decimal;
//         AXISAMT2: Decimal;
//         AXISAMT1: Decimal;
//         AXISAMT: Decimal;
//         HSBCAMT: Decimal;
//         AMXAMT: Decimal;
//         CITIAMT: Decimal;
//         InnovitiAMT: Decimal;
//         PineLABSAMT: Decimal;
//         LoyaltyRWAMT: Integer;
//         salesinvline: Record "Sales Invoice Line";
//         salesCrMemoLn: Record "Sales Cr.Memo Line";
//         AppQty1: Integer;
//         NonAppQty1: Integer;
//         HDFCCardNo1: Code[30];
//         HSBCCardNo1: Code[30];
//         AMXCardNo1: Code[30];
//         CITICardNo1: Code[30];
//         InnovitiCardNo1: Code[30];
//         PineLABSCardNo1: Code[30];
//         LoyalityRWCardNo1: Code[30];
//         HDFCAMT1: Decimal;
//         HSBCAMT1: Decimal;
//         AMXAMT1: Decimal;
//         CITIAMT1: Decimal;
//         InnovitiAMT1: Decimal;
//         PineLABSAMT1: Decimal;
//         LoyaltyRWAMT1: Decimal;
//         startdt: Date;
//         enddt: Date;
//         cust: Record Customer;
//         custnm: Text[250];
//         cust_amt: Decimal;
//         cashamt: Decimal;
//         chquamt: Decimal;
//         Srno2: Integer;
//         Srno1: Integer;
//         HDFCAMT2: Decimal;
//         HSBCAMT2: Decimal;
//         AMXAMT2: Decimal;
//         CITIAMT2: Decimal;
//         InnovitiAMT2: Decimal;
//         PineLABSAMT2: Decimal;
//         LoyaltyRWAMT2: Decimal;
//         usersetup: Record "User Setup";
//         BBAmt: Decimal;
//         BBAMtTot: Decimal;
//         BBCrAmt: Decimal;
//         BBCrAMtTot: Decimal;
//         PendShieldValue: Decimal;
//         SaleCashAmt: Decimal;
//         SaleChqAmt: Decimal;
//         TotShieldvalue: Decimal;
//         Tmpvalue: Decimal;
//         Rtgsamt1: Decimal;
//         RtgsAmt: Decimal;
//         FinAmt: Decimal;
//         FinAmt1: Decimal;
//         GiftAmt: Decimal;
//         SalesSetup: Record "Sales & Receivables Setup";
//         RecComment: Record "Sales Comment Line";
//         Cmnt: Text[80];
//         CmntCr: Text[80];
//         RecCommentCr: Record "Sales Comment Line";
//         RecSalesPerson: Record "Salesperson/Purchaser";
//         SalesName: Text[50];
//         ResCenter: Record "Responsibility Center New 1";
//         Branchcode1: Code[100];
//         RtgNo: Code[20];
//         FinanceCompanyName: Text[30];
//         FinanceCompanyName1: Text[30];
//         POS: Integer;
//         BANKAppCode: Code[20];
//         BANKAppCode1: Code[20];
//         POS1: Integer;
//         FinAmt2: Decimal;
//         FinAmt3: Decimal;
//         FinAmt4: Decimal;
//         BANKAppCode2: Code[20];
//         BANKAppCode4: Code[20];
//         paytm_amount: Decimal;
//         ex_amount: Decimal;
//         insurance_Amount: Decimal;
//         Cashify_amount: Decimal;
//         Pinelab_amount: Decimal;
//         LoyaltyRewardz_amount: Decimal;
//         GLEntry: Record "G/L Entry";
//         SalesOrderExtension: Record "Sales Order Extension";
//         ServifyAmount: Decimal;
//         ServifyAppCode: Code[20];
//         PaytmAppCode: Code[20];
//         PinelabAppCode: Code[20];


//     procedure InitVarSales()
//     begin
//         HDFCCardNo := '';
//         HDFCAMT := 0;
//         AXCardNo := '';
//         AXISAMT := 0;
//         HDFCCardNo := '';
//         HDFCAMT := 0;
//         HDFCCardNo := '';
//         HDFCAMT := 0;
//         HDFCCardNo := '';
//         HDFCAMT := 0;
//         HDFCCardNo := '';
//         HDFCAMT := 0;
//         HSBCCardNo := '';
//         HSBCAMT := 0;
//         HSBCCardNo := '';
//         HSBCAMT := 0;
//         HSBCCardNo := '';
//         HSBCAMT := 0;
//         HSBCCardNo := '';
//         HSBCAMT := 0;
//         HSBCCardNo := '';
//         HSBCAMT := 0;
//         AMXCardNo := '';
//         AMXAMT := 0;
//         AMXCardNo := '';
//         AMXAMT := 0;
//         AMXCardNo := '';
//         AMXAMT := 0;
//         AMXCardNo := '';
//         AMXAMT := 0;
//         AMXCardNo := '';
//         AMXAMT := 0;
//         CITICardNo := '';
//         CITIAMT := 0;
//         CITICardNo := '';
//         CITIAMT := 0;
//         CITICardNo := '';
//         CITIAMT := 0;
//         CITICardNo := '';
//         CITIAMT := 0;
//         CITICardNo := '';
//         CITIAMT := 0;
//         InnovitiCardNo := '';
//         InnovitiAMT := 0;
//         InnovitiCardNo := '';
//         InnovitiAMT := 0;
//         InnovitiCardNo := '';
//         InnovitiAMT := 0;
//         InnovitiCardNo := '';
//         InnovitiAMT := 0;
//         InnovitiCardNo := '';
//         InnovitiAMT := 0;
//         PineLABSCardNo := '';
//         PineLABSAMT := 0;
//         PineLABSCardNo := '';
//         PineLABSAMT := 0;
//         PineLABSCardNo := '';
//         PineLABSAMT := 0;
//         PineLABSCardNo := '';
//         PineLABSAMT := 0;
//         PineLABSCardNo := '';
//         PineLABSAMT := 0;
//         BBAmt := 0;
//         LoyaltyRWCardNo := '';
//         LoyaltyRWAMT := 0;
//     end;


//     procedure InitVarCrMemo()
//     begin
//         HDFCCardNo1 := '';
//         HDFCAMT1 := 0;
//         AXCardNo1 := '';
//         AXISAMT1 := 0;
//         HDFCCardNo1 := '';
//         HDFCAMT1 := 0;
//         HDFCCardNo1 := '';
//         HDFCAMT1 := 0;
//         HDFCCardNo1 := '';
//         HDFCAMT1 := 0;
//         HDFCCardNo1 := '';
//         HDFCAMT1 := 0;
//         HSBCCardNo1 := '';
//         HSBCAMT1 := 0;
//         HSBCCardNo1 := '';
//         HSBCAMT1 := 0;
//         HSBCCardNo1 := '';
//         HSBCAMT1 := 0;
//         HSBCCardNo1 := '';
//         HSBCAMT1 := 0;
//         HSBCCardNo1 := '';
//         HSBCAMT1 := 0;
//         AMXCardNo1 := '';
//         AMXAMT1 := 0;
//         AMXCardNo1 := '';
//         AMXAMT1 := 0;
//         AMXCardNo1 := '';
//         AMXAMT1 := 0;
//         AMXCardNo1 := '';
//         AMXAMT1 := 0;
//         AMXCardNo1 := '';
//         AMXAMT1 := 0;
//         CITICardNo1 := '';
//         CITIAMT1 := 0;
//         CITICardNo1 := '';
//         CITIAMT1 := 0;
//         CITICardNo1 := '';
//         CITIAMT1 := 0;
//         CITICardNo1 := '';
//         CITIAMT1 := 0;
//         CITICardNo1 := '';
//         CITIAMT1 := 0;
//         InnovitiCardNo1 := '';
//         InnovitiAMT1 := 0;
//         InnovitiCardNo1 := '';
//         InnovitiAMT1 := 0;
//         InnovitiCardNo1 := '';
//         InnovitiAMT1 := 0;
//         InnovitiCardNo1 := '';
//         InnovitiAMT1 := 0;
//         InnovitiCardNo1 := '';
//         InnovitiAMT1 := 0;
//         PineLABSCardNo1 := '';
//         PineLABSAMT1 := 0;
//         PineLABSCardNo1 := '';
//         PineLABSAMT1 := 0;
//         PineLABSCardNo1 := '';
//         PineLABSAMT1 := 0;
//         PineLABSCardNo1 := '';
//         PineLABSAMT1 := 0;
//         PineLABSCardNo1 := '';
//         PineLABSAMT1 := 0;
//         LoyalityRWCardNo1 := '';
//         LoyaltyRWAMT1 := 0;
//     end;


//     procedure InitVarCustLedg()
//     begin
//     end;
// }

