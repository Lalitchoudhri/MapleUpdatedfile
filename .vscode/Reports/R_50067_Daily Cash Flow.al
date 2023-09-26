report 50067 "Daily Cash Flow"
{
    DefaultLayout = RDLC;
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './Daily Cash Flow.rdl';

    dataset
    {
        dataitem("Company Information"; "Company Information")
        {
            DataItemTableView = SORTING("Primary Key");
            column(docno; docno)
            {
            }
            column(InvCr; InvCr)
            {
            }
            column(compinfoName; "Company Information".Name)
            {
                IncludeCaption = true;
            }
            column(compinfoPicture; "Company Information".Picture)
            {
            }
            column(No; No)
            {
            }
            column(datefilter; datefilter)
            {
            }
            column(startdt; startdt)
            {
            }
            column(enddt; enddt)
            {
            }
            column(Location; usersetup."Location Code" + loc."Name 2")
            {
            }
        }
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = false;
            RequestFilterFields = "Location Code";
            column(PostingDate_SalesInvoiceHeader; "Sales Invoice Header"."Posting Date")
            {
            }
            column(ExternalDocumentNo_SalesInvoiceHeader; "Sales Invoice Header"."External Document No.")
            {
            }
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(comp_Name; comp.Name)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(CashBackAmt; CashBackAmt)
            {
            }
            column(CashBackCard; CashBackCard)
            {
            }
            column(Srno; Srno)
            {
            }
            column(S_DocNo; "Sales Invoice Header"."No.")
            {
            }
            column(selltocust; "Sales Invoice Header"."Sell-to Customer Name")
            {
            }
            column(amt_to_cust; AmtTOCust)//"Sales Invoice Header"."Amount to Customer"
            {
            }
            column(Cash; "Sales Invoice Header".PayByCashAmt)
            {
            }
            column(Chq_Amt; "Sales Invoice Header".PayByChqAmt)
            {
            }
            column(cardno_1; "Sales Invoice Header".PayByCreditNo1)
            {
            }
            column(cardno_2; "Sales Invoice Header".PayByCreditNo2)
            {
            }
            column(cardno_3; "Sales Invoice Header".PayByCreditNo3)
            {
            }
            column(cardno_4s; "Sales Invoice Header".PayByCreditNo4)
            {
            }
            column(cardno_5; "Sales Invoice Header".PayByDebitNo2)
            {
            }
            column(Cr_Amt1; "Sales Invoice Header".PayByCreditAmt1)
            {
            }
            column(Cr_Amt2; "Sales Invoice Header".PayByCreditAmt2)
            {
            }
            column(Cr_Amt3; "Sales Invoice Header".PayByCreditAmt3)
            {
            }
            column(Cr_Amt4; "Sales Invoice Header".PayByCreditAmt4)
            {
            }
            column(Cr_Amt5; "Sales Invoice Header".PayByDebitAmt2)
            {
            }
            column(RTGS_Amt; RtgsAmt)
            {
            }
            column(RefNo; "Sales Invoice Header"."Ref. Invoice No.")
            {
            }
            column(AppQty; AppQty)
            {
            }
            column(NonAppQty; NonAppQty)
            {
            }
            column(HDFCCardNo; HDFCCardNo)
            {
            }
            column(HSBCCardNo; HSBCCardNo)
            {
            }
            column(AMXCardNo; AMXCardNo)
            {
            }
            column(CITICardNo; CITICardNo)
            {
            }
            column(UPIAMT; UPIAMT)
            { }
            column(RazorPayAmt; RazorPayAmt)
            { }
            column(ICICIAmt; ICICIAmt)
            {

            }
            column(InnovitiCardNo; InnovitiCardNo)
            {
            }
            column(PineLABSCardNo; PineLABSCardNo)
            {
            }
            column(SaleCashAmt; SaleCashAmt)
            {
            }
            column(SaleChqAmt; SaleChqAmt)
            {
            }
            column(HDFCAMT; HDFCAMT)
            {
            }
            column(HSBCAMT; HSBCAMT)
            {
            }
            column(AMXAMT; AMXAMT)
            {
            }
            column(CITIAMT; CITIAMT)
            {
            }
            column(InnovitiAMT; InnovitiAMT)
            {
            }
            column(PineLABSAMT; PineLABSAMT)
            {
            }
            column(GiftVouchAmt; GiftAmt)
            {
            }
            column(FinAmt; FinAmt)
            {
            }
            column(FinAmt1; FinAmt1)
            {
            }
            column(FinAmt2; FinAmt2)
            {
            }
            column(FinAmt3; FinAmt3)
            {
            }
            column(FinAmt4; FinAmt4)
            {
            }
            column(PinelabApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Pinelab Approval Code")
            {
            }
            column(PaytmApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Paytm Approval Code")
            {
            }
            column(PaytmTransferAmount_SalesInvoiceHeader; paytm_amount)
            {
            }
            column(paytm_amount2; paytm_amount2)
            { }
            column(CashifyApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Cashify Approval Code")
            {
            }
            column(Cashify_amount; Cashify_amount)
            {
            }
            column(InsuranceApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Insurance Approval Code")
            {
            }
            column(insurance_Amount; insurance_Amount)
            {
            }
            column(PayByPointsamount; PayByPointsamount)
            { }
            column(EdenredAmount; EdenredAmount)
            {

            }
            column(NBFCAmount; NBFCAmount)
            { }
            column(Pinelab_Amount; Pinelab_amount)
            {
            }
            column(Servify_Amount; ServifyAmount)
            {
            }
            column(ServifyBonusAmount; ServifyBonusAmount)
            {

            }
            column(CashifyBonusAmount; CashifyBonusAmount)
            {

            }
            column(Servify_App_Code; ServifyAppCode)
            {
            }
            column(Paytm_App_code; PaytmAppCode)
            {
            }
            column(ExApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Amazon Approval Code")
            {
            }
            column(ExTransferAmount_SalesInvoiceHeader; ex_amount)
            {
            }
            column(MapBBAmt; "Sales Invoice Header"."Maple Buyback Amt")
            {
            }
            column(AppBBAmt; "Sales Invoice Header"."Apple Buyback Amt")
            {
            }
            column(BBAmt; BBAmt)
            {
            }
            column(BBAMtTot; BBAMtTot)
            {
            }
            column(Comment; Cmnt)
            {
            }
            column(RTGSRefNo_SalesInvoiceHeader; "Sales Invoice Header"."RTGS Ref. No.")
            {
            }
            column(FinanceComapny_SalesInvoiceHeader; "Sales Invoice Header"."Finance Comapny")
            {
            }
            column(FinanceCompanyName; FinanceCompanyName)
            {
            }
            column(FinanceCompanyName1; FinanceCompanyName1)
            {
            }
            column(RtgNo; RtgNo)
            {
            }
            column(BANKAppCode; BANKAppCode)
            {
            }
            column(BANKAppCode1; BANKAppCode1)
            {
            }
            column(BANKAppCode2; BANKAppCode2)
            {
            }
            column(BANKAppCode4; BANKAppCode4)
            {
            }
            column(ChequeNo_CustLedgerEntry; "Sales Invoice Header".PayByChqNo)
            {
            }
            column(chquamt; "Sales Invoice Header".PayByChqAmt)
            {
            }
            column(LoyaltyRWCardNo; LoyaltyRWCardNo)
            {
            }
            column(LoyaltyRWAMT; LoyaltyRWAMT)
            {
            }
            column(LoyaltyRewardz_amount; LoyaltyRewardz_amount)
            {
            }
            column(LoyaltyRiwardzTrAmount_SalesInvoiceHeader; "Sales Invoice Header"."Loyalty Riwardz Tr.Amount")
            {
            }
            column(LoyaltyRiwardzMethodCode_SalesInvoiceHeader; "Sales Invoice Header"."Loyalty Riwardz Method Code")
            {
            }
            column(LoyaltyRiwardzApprovalCode_SalesInvoiceHeader; "Sales Invoice Header"."Loyalty Riwardz Approval Code")
            {
            }
            dataitem("Salesperson/Purchaser"; "Salesperson/Purchaser")
            {
                DataItemLink = Code = FIELD("Salesperson Code");
                column(SP_Code; "Salesperson/Purchaser".Code)
                {
                }
                column(SP_Name; "Salesperson/Purchaser".Name)
                {
                }
            }

            trigger OnAfterGetRecord()
            var
                CLE_L: Record "Cust. Ledger Entry";
            begin
                AmtTOCust := 0;
                IF CLE_L.Get("Sales Invoice Header"."Cust. Ledger Entry No.") then begin
                    CLE_L.CALCFIELDS(Amount);
                    AmtTOCust := Abs(CLE_L.Amount);
                end;

                AppQty := 0;
                NonAppQty := 0;
                TotShieldvalue := 0;
                InitVarSales;
                Srno += 1;

                //HR--
                Clear(CashBackCard);
                Clear(CashBackAmt);
                FIndCBCardAndAmt("Sales Invoice Header", CashBackAmt, CashBackCard);
                //HR++

                salesinvline.RESET;
                salesinvline.SETFILTER(salesinvline."Document No.", "Sales Invoice Header"."No.");
                IF salesinvline.FINDFIRST THEN BEGIN
                    REPEAT
                        TotShieldvalue += salesinvline."Shield Value";
                        IF salesinvline."Item Category Code" = 'APPLE' THEN
                            AppQty += salesinvline.Quantity
                        ELSE
                            IF (salesinvline.Type = salesinvline.Type::"G/L Account") THEN BEGIN
                                IF (salesinvline."No." = SalesSetup."Shield Sales Account") THEN
                                    NonAppQty += salesinvline.Quantity;
                            END
                            ELSE
                                NonAppQty += salesinvline.Quantity;
                    UNTIL salesinvline.NEXT = 0;
                END;

                Tmpvalue := 0;
                PendShieldValue := TotShieldvalue;
                SaleCashAmt := "Sales Invoice Header".PayByCashAmt;
                IF ("Sales Invoice Header".PayByCashAmt <> 0) AND (PendShieldValue > 0) THEN BEGIN
                    IF "Sales Invoice Header".PayByCashAmt > PendShieldValue THEN BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            SaleCashAmt := Tmpvalue;
                        END
                        ELSE BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            SaleCashAmt := "Sales Invoice Header".PayByCashAmt - Tmpvalue;
                        END;
                    END
                    ELSE BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            SaleCashAmt := "Sales Invoice Header".PayByCashAmt;
                            PendShieldValue := PendShieldValue - "Sales Invoice Header".PayByCashAmt;
                        END
                        ELSE BEGIN
                            SaleCashAmt := 0;
                            PendShieldValue := PendShieldValue - "Sales Invoice Header".PayByCashAmt;
                        END;
                    END;
                END;

                Tmpvalue := 0;
                SaleChqAmt := "Sales Invoice Header".PayByChqAmt;
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    SaleChqAmt := 0
                ELSE BEGIN
                    IF ("Sales Invoice Header".PayByChqAmt <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF "Sales Invoice Header".PayByChqAmt > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                SaleChqAmt := PendShieldValue;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                SaleChqAmt := "Sales Invoice Header".PayByChqAmt - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                Tmpvalue := PendShieldValue;
                                SaleChqAmt := "Sales Invoice Header".PayByChqAmt;
                                PendShieldValue := PendShieldValue - "Sales Invoice Header".PayByChqAmt;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                SaleChqAmt := 0;
                                PendShieldValue := PendShieldValue - "Sales Invoice Header".PayByChqAmt;
                            END;
                        END;
                    END;
                END;
                IF "Sales Invoice Header".PayByCreditNo1 = 'HDFC_CR' THEN BEGIN
                    IF HDFCCardNo <> '' THEN
                        HDFCCardNo += ',';

                    HDFCCardNo := "Sales Invoice Header".CreditCardNo1;
                    HDFCAMT += "Sales Invoice Header".PayByCreditAmt1;
                END;

                IF "Sales Invoice Header".PayByCreditNo2 = 'HDFC_CR' THEN BEGIN
                    IF HDFCCardNo <> '' THEN
                        HDFCCardNo += ',';

                    HDFCCardNo := "Sales Invoice Header".CreditCardNo2;
                    HDFCAMT += "Sales Invoice Header".PayByCreditAmt2;
                END;

                IF "Sales Invoice Header".PayByCreditNo3 = 'HDFC_CR' THEN BEGIN
                    IF HDFCCardNo <> '' THEN
                        HDFCCardNo += ',';

                    HDFCCardNo := "Sales Invoice Header".CreditCardNo3;
                    HDFCAMT += "Sales Invoice Header".PayByCreditAmt3;
                END;

                IF "Sales Invoice Header".PayByCreditNo4 = 'HDFC_CR' THEN BEGIN
                    IF HDFCCardNo <> '' THEN
                        HDFCCardNo += ',';

                    HDFCCardNo := "Sales Invoice Header".CreditCardNo4;
                    HDFCAMT += "Sales Invoice Header".PayByCreditAmt4;
                END;

                IF "Sales Invoice Header".PayByDebitCdNo1 = 'HDFC_CR' THEN BEGIN
                    IF HDFCCardNo <> '' THEN
                        HDFCCardNo += ',';


                    HDFCCardNo := "Sales Invoice Header".DebitCardNo1;
                    HDFCAMT += "Sales Invoice Header".PayByDebitCdAmt1;
                END;


                IF "Sales Invoice Header".PayByDebitNo2 = 'HDFC_CR' THEN BEGIN
                    IF HDFCCardNo <> '' THEN
                        HDFCCardNo += ',';

                    HDFCCardNo := "Sales Invoice Header".DebitCardNo2;
                    HDFCAMT += "Sales Invoice Header".PayByDebitAmt2;
                END;
                Tmpvalue := 0;
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    HDFCAMT := 0
                ELSE BEGIN
                    IF (HDFCAMT <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF HDFCAMT > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                Tmpvalue := PendShieldValue;
                                HDFCAMT := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                HDFCAMT := HDFCAMT - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - HDFCAMT;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := PendShieldValue - HDFCAMT;
                                HDFCAMT := 0;
                            END;
                        END;
                    END;
                END;

                Clear(HSBCAMT);
                IF "Sales Invoice Header".PayByCreditNo1 = 'AXIS_CR' THEN BEGIN
                    IF HSBCCardNo <> '' THEN
                        HSBCCardNo += ',';

                    HSBCCardNo += "Sales Invoice Header".CreditCardNo1;
                    HSBCAMT += "Sales Invoice Header".PayByCreditAmt1;
                END;

                IF "Sales Invoice Header".PayByCreditNo2 = 'AXIS_CR' THEN BEGIN
                    IF HSBCCardNo <> '' THEN
                        HSBCCardNo += ',';

                    HSBCCardNo += "Sales Invoice Header".CreditCardNo2;
                    HSBCAMT += "Sales Invoice Header".PayByCreditAmt2;
                END;

                IF "Sales Invoice Header".PayByCreditNo3 = 'AXIS_CR' THEN BEGIN
                    IF HSBCCardNo <> '' THEN
                        HSBCCardNo += ',';

                    HSBCCardNo += "Sales Invoice Header".CreditCardNo3;
                    HSBCAMT += "Sales Invoice Header".PayByCreditAmt3;
                END;

                IF "Sales Invoice Header".PayByCreditNo4 = 'AXIS_CR' THEN BEGIN
                    IF HSBCCardNo <> '' THEN
                        HSBCCardNo += ',';

                    HSBCCardNo += "Sales Invoice Header".CreditCardNo4;
                    HSBCAMT += "Sales Invoice Header".PayByCreditAmt4;
                END;

                IF "Sales Invoice Header".PayByDebitCdNo1 = 'AXIS_CR' THEN BEGIN
                    IF HSBCCardNo <> '' THEN
                        HSBCCardNo += ',';

                    HSBCCardNo += "Sales Invoice Header".DebitCardNo1;
                    HSBCAMT += "Sales Invoice Header".PayByDebitCdAmt1;
                END;

                IF "Sales Invoice Header".PayByDebitNo2 = 'AXIS_CR' THEN BEGIN
                    IF HSBCCardNo <> '' THEN
                        HSBCCardNo += ',';

                    HSBCCardNo += "Sales Invoice Header".DebitCardNo2;
                    HSBCAMT += "Sales Invoice Header".PayByDebitAmt2;
                END;
                Tmpvalue := 0;
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    HSBCAMT := 0
                ELSE BEGIN
                    IF (HSBCAMT <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF HSBCAMT > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                HSBCAMT := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                HSBCAMT := HSBCAMT - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - HSBCAMT;
                            END
                            ELSE BEGIN
                                PendShieldValue := PendShieldValue - HSBCAMT;
                                HSBCAMT := 0;
                            END;
                        END;
                    END;
                END;

                IF "Sales Invoice Header".PayByCreditNo1 = 'AMEX_CR' THEN BEGIN
                    IF AMXCardNo <> '' THEN
                        AMXCardNo += ',';

                    AMXCardNo += "Sales Invoice Header".CreditCardNo1;
                    //LP
                    AMXAMT += "Sales Invoice Header".PayByCreditAmt1;
                    //LP
                END;

                IF "Sales Invoice Header".PayByCreditNo2 = 'AMEX_CR' THEN BEGIN
                    IF AMXCardNo <> '' THEN
                        AMXCardNo += ',';

                    AMXCardNo += "Sales Invoice Header".CreditCardNo2;
                    AMXAMT += "Sales Invoice Header".PayByCreditAmt2;
                END;

                IF "Sales Invoice Header".PayByCreditNo3 = 'AMEX_CR' THEN BEGIN
                    IF AMXCardNo <> '' THEN
                        AMXCardNo += ',';

                    AMXCardNo += "Sales Invoice Header".CreditCardNo3;
                    AMXAMT += "Sales Invoice Header".PayByCreditAmt3;
                END;

                IF "Sales Invoice Header".PayByCreditNo4 = 'AMEX_CR' THEN BEGIN
                    IF AMXCardNo <> '' THEN
                        AMXCardNo += ',';

                    AMXCardNo += "Sales Invoice Header".CreditCardNo4;
                    AMXAMT += "Sales Invoice Header".PayByCreditAmt4;
                END;

                IF "Sales Invoice Header".PayByDebitCdNo1 = 'AMEX_CR' THEN BEGIN
                    IF AMXCardNo <> '' THEN
                        AMXCardNo += ',';

                    AMXCardNo += "Sales Invoice Header".DebitCardNo1;
                    AMXAMT += "Sales Invoice Header".PayByDebitCdAmt1;
                END;

                IF "Sales Invoice Header".PayByDebitNo2 = 'AMEX_CR' THEN BEGIN
                    IF AMXCardNo <> '' THEN
                        AMXCardNo += ',';

                    AMXCardNo += "Sales Invoice Header".DebitCardNo2;
                    AMXAMT += "Sales Invoice Header".PayByDebitAmt2;
                END;
                Tmpvalue := 0;
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    AMXAMT := 0
                ELSE BEGIN
                    IF (AMXAMT <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF AMXAMT > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                AMXAMT := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                AMXAMT := AMXAMT - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - AMXAMT;
                            END
                            ELSE BEGIN
                                PendShieldValue := PendShieldValue - AMXAMT;
                                AMXAMT := 0;
                            END;
                        END;
                    END;
                END;

                IF "Sales Invoice Header".PayByCreditNo1 = 'UPI' THEN BEGIN
                    IF CITICardNo <> '' THEN
                        CITICardNo += ',';

                    CITICardNo += "Sales Invoice Header".CreditCardNo1;
                    CITIAMT += "Sales Invoice Header".PayByCreditAmt1;
                END;

                IF "Sales Invoice Header".PayByCreditNo2 = 'UPI' THEN BEGIN
                    IF CITICardNo <> '' THEN
                        CITICardNo += ',';

                    CITICardNo += "Sales Invoice Header".CreditCardNo2;
                    CITIAMT += "Sales Invoice Header".PayByCreditAmt2;
                END;

                IF "Sales Invoice Header".PayByCreditNo3 = 'UPI' THEN BEGIN
                    IF CITICardNo <> '' THEN
                        CITICardNo += ',';

                    CITICardNo += "Sales Invoice Header".CreditCardNo3;
                    CITIAMT += "Sales Invoice Header".PayByCreditAmt3;
                END;

                IF "Sales Invoice Header".PayByCreditNo4 = 'UPI' THEN BEGIN
                    IF CITICardNo <> '' THEN
                        CITICardNo += ',';

                    CITICardNo += "Sales Invoice Header".CreditCardNo4;
                    CITIAMT += "Sales Invoice Header".PayByCreditAmt4;
                END;

                IF "Sales Invoice Header".PayByDebitCdNo1 = 'UPI' THEN BEGIN
                    IF CITICardNo <> '' THEN
                        CITICardNo += ',';

                    CITICardNo += "Sales Invoice Header".DebitCardNo1;
                    CITIAMT += "Sales Invoice Header".PayByDebitCdAmt1;
                END;

                IF "Sales Invoice Header".PayByDebitNo2 = 'UPI' THEN BEGIN
                    IF CITICardNo <> '' THEN
                        CITICardNo += ',';

                    CITICardNo += "Sales Invoice Header".DebitCardNo2;
                    CITIAMT += "Sales Invoice Header".PayByDebitAmt2;
                END;
                Tmpvalue := 0;
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    CITIAMT := 0
                ELSE BEGIN
                    IF (CITIAMT <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF CITIAMT > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                CITIAMT := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                CITIAMT := CITIAMT - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - CITIAMT;
                            END
                            ELSE BEGIN
                                PendShieldValue := PendShieldValue - CITIAMT;
                                CITIAMT := 0;
                            END;
                        END;
                    END;
                END;

                IF "Sales Invoice Header".PayByCreditNo1 = 'Innoviti' THEN BEGIN
                    IF InnovitiCardNo <> '' THEN
                        InnovitiCardNo += ',';
                    InnovitiCardNo += "Sales Invoice Header".CreditCardNo1;
                    InnovitiAMT += "Sales Invoice Header".PayByCreditAmt1;
                END;

                IF "Sales Invoice Header".PayByCreditNo2 = 'Innoviti' THEN BEGIN
                    IF InnovitiCardNo <> '' THEN
                        InnovitiCardNo += ',';

                    InnovitiCardNo += "Sales Invoice Header".CreditCardNo2;
                    InnovitiAMT += "Sales Invoice Header".PayByCreditAmt2;
                END;

                IF "Sales Invoice Header".PayByCreditNo3 = 'Innoviti' THEN BEGIN
                    InnovitiCardNo += "Sales Invoice Header".CreditCardNo3;
                    InnovitiAMT += "Sales Invoice Header".PayByCreditAmt3;
                END;

                IF "Sales Invoice Header".PayByCreditNo4 = 'Innoviti' THEN BEGIN
                    IF InnovitiCardNo <> '' THEN
                        InnovitiCardNo += ',';

                    InnovitiCardNo += "Sales Invoice Header".CreditCardNo4;
                    InnovitiAMT += "Sales Invoice Header".PayByCreditAmt4;
                END;

                IF "Sales Invoice Header".PayByDebitCdNo1 = 'Innoviti' THEN BEGIN
                    IF InnovitiCardNo <> '' THEN
                        InnovitiCardNo += ',';

                    InnovitiCardNo += "Sales Invoice Header".DebitCardNo1;
                    InnovitiAMT += "Sales Invoice Header".PayByDebitCdAmt1;
                END;

                IF "Sales Invoice Header".PayByDebitNo2 = 'Innoviti' THEN BEGIN
                    IF InnovitiCardNo <> '' THEN
                        InnovitiCardNo += ',';

                    InnovitiCardNo += "Sales Invoice Header".DebitCardNo2;
                    InnovitiAMT += "Sales Invoice Header".PayByDebitAmt2;
                END;
                Tmpvalue := 0;
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    InnovitiAMT := 0
                ELSE BEGIN
                    IF (InnovitiAMT <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF InnovitiAMT > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                InnovitiAMT := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                InnovitiAMT := InnovitiAMT - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - InnovitiAMT;
                            END
                            ELSE BEGIN
                                PendShieldValue := PendShieldValue - InnovitiAMT;
                                InnovitiAMT := 0;
                            END;
                        END;
                    END;
                END;

                IF "Sales Invoice Header".PayByCreditNo1 = 'Pine Labs' THEN BEGIN
                    IF PineLABSCardNo <> '' THEN
                        PineLABSCardNo += ',';

                    PineLABSCardNo += "Sales Invoice Header".CreditCardNo1;
                    PineLABSAMT += "Sales Invoice Header".PayByCreditAmt1;
                END;

                IF "Sales Invoice Header".PayByCreditNo2 = 'Pine Labs' THEN BEGIN
                    IF PineLABSCardNo <> '' THEN
                        PineLABSCardNo += ',';

                    PineLABSCardNo += "Sales Invoice Header".CreditCardNo2;
                    PineLABSAMT += "Sales Invoice Header".PayByCreditAmt2;
                END;

                IF "Sales Invoice Header".PayByCreditNo3 = 'Pine Labs' THEN BEGIN
                    IF PineLABSCardNo <> '' THEN
                        PineLABSCardNo += ',';
                    PineLABSCardNo += "Sales Invoice Header".CreditCardNo3;
                    PineLABSAMT += "Sales Invoice Header".PayByCreditAmt3;
                END;

                IF "Sales Invoice Header".PayByCreditNo4 = 'Pine Labs ' THEN BEGIN
                    IF PineLABSCardNo <> '' THEN
                        PineLABSCardNo += ',';

                    PineLABSCardNo += "Sales Invoice Header".CreditCardNo4;
                    PineLABSAMT += "Sales Invoice Header".PayByCreditAmt4;
                END;

                IF "Sales Invoice Header".PayByDebitCdNo1 = 'Pine Labs' THEN BEGIN
                    IF PineLABSCardNo <> '' THEN
                        PineLABSCardNo += ',';

                    PineLABSCardNo += "Sales Invoice Header".DebitCardNo1;
                    PineLABSAMT += "Sales Invoice Header".PayByDebitCdAmt1;
                END;

                IF "Sales Invoice Header".PayByDebitNo2 = 'Pine Labs' THEN BEGIN
                    IF PineLABSCardNo <> '' THEN
                        PineLABSCardNo += ',';

                    PineLABSCardNo := "Sales Invoice Header".DebitCardNo2;
                    PineLABSAMT += "Sales Invoice Header".PayByDebitAmt2;
                END;
                Tmpvalue := 0;
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    PineLABSAMT := 0
                ELSE BEGIN
                    IF (PineLABSAMT <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF PineLABSAMT > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PineLABSAMT := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                PineLABSAMT := PineLABSAMT - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - PineLABSAMT;
                            END
                            ELSE BEGIN
                                PendShieldValue := PendShieldValue - PineLABSAMT;
                                PineLABSAMT := 0;
                            END;
                        END;
                    END;
                END;
                //Win-234++ Loyalty Rewardz
                IF "Sales Invoice Header".PayByCreditNo1 = 'LOYALITY RW' THEN BEGIN
                    IF LoyaltyRWCardNo <> '' THEN
                        LoyaltyRWCardNo += ',';

                    LoyaltyRWCardNo += "Sales Invoice Header".CreditCardNo1;
                    LoyaltyRWAMT += "Sales Invoice Header".PayByCreditAmt1;
                END;

                IF "Sales Invoice Header".PayByCreditNo2 = 'LOYALITY RW' THEN BEGIN
                    IF LoyaltyRWCardNo <> '' THEN
                        LoyaltyRWCardNo += ',';

                    LoyaltyRWCardNo += "Sales Invoice Header".CreditCardNo2;
                    LoyaltyRWAMT += "Sales Invoice Header".PayByCreditAmt2;
                END;

                IF "Sales Invoice Header".PayByCreditNo3 = 'LOYALITY RW' THEN BEGIN
                    IF LoyaltyRWCardNo <> '' THEN
                        LoyaltyRWCardNo += ',';
                    LoyaltyRWCardNo += "Sales Invoice Header".CreditCardNo3;
                    LoyaltyRWAMT += "Sales Invoice Header".PayByCreditAmt3;
                END;

                IF "Sales Invoice Header".PayByCreditNo4 = 'LOYALITY RW' THEN BEGIN
                    IF LoyaltyRWCardNo <> '' THEN
                        LoyaltyRWCardNo += ',';

                    LoyaltyRWCardNo += "Sales Invoice Header".CreditCardNo4;
                    LoyaltyRWAMT += "Sales Invoice Header".PayByCreditAmt4;
                END;

                IF "Sales Invoice Header".PayByDebitCdNo1 = 'LOYALITY RW' THEN BEGIN
                    IF LoyaltyRWCardNo <> '' THEN
                        LoyaltyRWCardNo += ',';

                    LoyaltyRWCardNo += "Sales Invoice Header".DebitCardNo1;
                    LoyaltyRewardz_amount += "Sales Invoice Header".PayByDebitCdAmt1;
                END;

                IF "Sales Invoice Header".PayByDebitNo2 = 'LOYALITY RW' THEN BEGIN
                    IF LoyaltyRWCardNo <> '' THEN
                        LoyaltyRWCardNo += ',';

                    LoyaltyRWCardNo := "Sales Invoice Header".DebitCardNo2;
                    LoyaltyRWAMT += "Sales Invoice Header".PayByDebitAmt2;
                END;
                Tmpvalue := 0;
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    LoyaltyRWAMT := 0
                ELSE BEGIN
                    IF (LoyaltyRWAMT <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF LoyaltyRWAMT > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                LoyaltyRWAMT := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                LoyaltyRWAMT := LoyaltyRWAMT - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - LoyaltyRWAMT;
                            END
                            ELSE BEGIN
                                PendShieldValue := PendShieldValue - LoyaltyRWAMT;
                                LoyaltyRWAMT := 0;
                            END;
                        END;
                    END;
                END;

                //Win=234-- Loyalty Rewardz
                GiftAmt := "Sales Invoice Header".GiftVoucherAmt;
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    GiftAmt := 0
                ELSE BEGIN
                    IF (GiftAmt <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF GiftAmt > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                GiftAmt := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                GiftAmt := GiftAmt - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - GiftAmt;
                            END
                            ELSE BEGIN
                                PendShieldValue := PendShieldValue - GiftAmt;
                                GiftAmt := 0;
                            END;
                        END;
                    END;
                END;


                //FinAmt := "Sales Invoice Header"."Finance Amount";
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    FinAmt := 0
                ELSE BEGIN
                    IF (FinAmt <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF FinAmt > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                FinAmt := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                FinAmt := FinAmt - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - FinAmt;
                            END
                            ELSE BEGIN
                                PendShieldValue := PendShieldValue - FinAmt;
                                FinAmt := 0;
                            END;
                        END;
                    END;
                END;



                RtgsAmt := "Sales Invoice Header"."RTGS Amount";
                IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                    RtgsAmt := 0
                ELSE BEGIN
                    IF (RtgsAmt <> 0) AND (PendShieldValue > 0) THEN BEGIN
                        IF RtgsAmt > PendShieldValue THEN BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                RtgsAmt := PendShieldValue;
                                PendShieldValue := 0;
                            END
                            ELSE BEGIN
                                Tmpvalue := PendShieldValue;
                                PendShieldValue := 0;
                                RtgsAmt := RtgsAmt - Tmpvalue;
                            END;
                        END
                        ELSE BEGIN
                            IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                PendShieldValue := PendShieldValue - RtgsAmt;
                            END
                            ELSE BEGIN
                                PendShieldValue := PendShieldValue - RtgsAmt;
                                RtgsAmt := 0;
                            END;
                        END;
                    END;
                END;



                BBAmt := 0;
                //IF "Sales Invoice Header"."Apple Buyback Amt">0 THEN
                //BBAmt:="Sales Invoice Header"."Apple Buyback Amt";
                IF "Sales Invoice Header"."Ref. Invoice No." = '' THEN BEGIN
                    IF "Sales Invoice Header"."Maple Buyback Amt" > 0 THEN
                        BBAmt := "Sales Invoice Header"."Maple Buyback Amt";

                    BBAMtTot += BBAmt;
                END;

                Cmnt := '';
                RecComment.SETFILTER(RecComment."No.", "Sales Invoice Header"."No.");
                IF RecComment.FINDFIRST THEN
                    Cmnt := RecComment.Comment;
                //WIN316++
                CLEAR(RtgNo);
                CLEAR(POS);
                CLEAR(FinanceCompanyName);
                CLEAR(FinAmt2);
                CLEAR(BANKAppCode);
                CLEAR(POS1);
                CLEAR(FinanceCompanyName1);
                CLEAR(FinAmt1);
                CLEAR(BANKAppCode1);
                CLEAR(FinAmt3);
                CLEAR(BANKAppCode2);
                CLEAR(FinAmt4);
                CLEAR(BANKAppCode4);
                IF "Sales Invoice Header"."Ref. Invoice No." = '' THEN BEGIN
                    IF "Sales Invoice Header"."RTGS Ref. No." <> '' THEN
                        RtgNo := "Sales Invoice Header"."RTGS Ref. No.";

                    IF "Sales Invoice Header"."Finance Comapny" <> '' THEN BEGIN
                        POS := STRPOS("Sales Invoice Header"."Finance Comapny", 'BAJAJ');
                        IF POS > 0 THEN BEGIN
                            FinanceCompanyName := "Sales Invoice Header"."Finance Comapny";
                            FinAmt2 := "Sales Invoice Header"."Finance Amount";
                            IF "Sales Invoice Header"."Bank Approval Code" <> '' THEN
                                BANKAppCode := "Sales Invoice Header"."Bank Approval Code";
                        END
                        ELSE BEGIN
                            FinanceCompanyName1 := "Sales Invoice Header"."Finance Comapny";
                            FinAmt1 := "Sales Invoice Header"."Finance Amount";
                            IF "Sales Invoice Header"."Bank Approval Code" <> '' THEN
                                BANKAppCode1 := "Sales Invoice Header"."Bank Approval Code";
                        END;
                    END;
                    POS1 := 0;
                    IF "Sales Invoice Header"."Finance Comapny new" <> "Sales Invoice Header"."Finance Comapny new"::" " THEN BEGIN
                        POS1 := STRPOS(FORMAT("Sales Invoice Header"."Finance Comapny new"), 'BAJAJ FINANCE');
                        IF POS1 > 0 THEN BEGIN
                            FinanceCompanyName := FORMAT("Sales Invoice Header"."Finance Comapny new");
                            //     FinAmt2 := "Sales Invoice Header"."Finance Amount";
                            IF "Sales Invoice Header"."Bank Approval Code" <> '' THEN
                                BANKAppCode := "Sales Invoice Header"."Bank Approval Code";
                            //test++
                            Tmpvalue := 0;
                            FinAmt2 := "Sales Invoice Header"."Finance Amount";
                            IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                                FinAmt2 := 0
                            ELSE BEGIN
                                IF ("Sales Invoice Header"."Finance Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                                    IF "Sales Invoice Header"."Finance Amount" > PendShieldValue THEN BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            FinAmt2 := PendShieldValue;
                                        END
                                        ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            FinAmt2 := "Sales Invoice Header"."Finance Amount" - Tmpvalue;
                                        END;
                                    END
                                    ELSE BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            FinAmt2 := "Sales Invoice Header"."Finance Amount";
                                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
                                        END
                                        ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            FinAmt2 := 0;
                                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
                                        END;
                                    END;
                                END;
                            END;
                            //test--
                        END
                        ELSE
                            POS1 := 0;
                        POS1 := STRPOS(FORMAT("Sales Invoice Header"."Finance Comapny new"), 'HDFC');
                        IF POS1 > 0 THEN BEGIN
                            FinanceCompanyName1 := FORMAT("Sales Invoice Header"."Finance Comapny new");
                            // FinAmt1 := "Sales Invoice Header"."Finance Amount";
                            IF "Sales Invoice Header"."Bank Approval Code" <> '' THEN
                                BANKAppCode1 := "Sales Invoice Header"."Bank Approval Code";
                            //test++
                            Tmpvalue := 0;
                            FinAmt1 := "Sales Invoice Header"."Finance Amount";
                            IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                                FinAmt1 := 0
                            ELSE BEGIN
                                IF ("Sales Invoice Header"."Finance Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                                    IF "Sales Invoice Header"."Finance Amount" > PendShieldValue THEN BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            FinAmt1 := PendShieldValue;
                                        END
                                        ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            FinAmt1 := "Sales Invoice Header"."Finance Amount" - Tmpvalue;
                                        END;
                                    END
                                    ELSE BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            FinAmt1 := "Sales Invoice Header"."Finance Amount";
                                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
                                        END
                                        ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            FinAmt1 := 0;
                                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
                                        END;
                                    END;
                                END;
                            END;
                            //test-
                        END
                        ELSE
                            POS1 := 0;
                        POS1 := STRPOS(FORMAT("Sales Invoice Header"."Finance Comapny new"), 'CITI FINANCE');
                        IF POS1 > 0 THEN BEGIN
                            FinanceCompanyName1 := FORMAT("Sales Invoice Header"."Finance Comapny new");
                            //    FinAmt3 := "Sales Invoice Header"."Finance Amount";
                            IF "Sales Invoice Header"."Bank Approval Code" <> '' THEN
                                BANKAppCode2 := "Sales Invoice Header"."Bank Approval Code";
                            //test++
                            Tmpvalue := 0;
                            FinAmt3 := "Sales Invoice Header"."Finance Amount";
                            IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                                FinAmt3 := 0
                            ELSE BEGIN
                                IF ("Sales Invoice Header"."Finance Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                                    IF "Sales Invoice Header"."Finance Amount" > PendShieldValue THEN BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            FinAmt3 := PendShieldValue;
                                        END
                                        ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            FinAmt3 := "Sales Invoice Header"."Finance Amount" - Tmpvalue;
                                        END;
                                    END
                                    ELSE BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            FinAmt3 := "Sales Invoice Header"."Finance Amount";
                                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
                                        END
                                        ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            FinAmt3 := 0;
                                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
                                        END;
                                    END;
                                END;
                            END;
                            //test--

                        END
                        ELSE
                            POS1 := 0;
                        POS1 := STRPOS(FORMAT("Sales Invoice Header"."Finance Comapny new"), 'DCEMI');
                        IF POS1 > 0 THEN BEGIN
                            FinanceCompanyName1 := FORMAT("Sales Invoice Header"."Finance Comapny new");
                            //  FinAmt4 := "Sales Invoice Header"."Finance Amount";
                            IF "Sales Invoice Header"."Bank Approval Code" <> '' THEN
                                BANKAppCode4 := "Sales Invoice Header"."Bank Approval Code";
                            //test++
                            Tmpvalue := 0;
                            FinAmt4 := "Sales Invoice Header"."Finance Amount";
                            IF ("Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                                FinAmt4 := 0
                            ELSE BEGIN
                                IF ("Sales Invoice Header"."Finance Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                                    IF "Sales Invoice Header"."Finance Amount" > PendShieldValue THEN BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            FinAmt4 := PendShieldValue;
                                        END
                                        ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            FinAmt4 := "Sales Invoice Header"."Finance Amount" - Tmpvalue;
                                        END;
                                    END
                                    ELSE BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            FinAmt4 := "Sales Invoice Header"."Finance Amount";
                                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
                                        END
                                        ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            FinAmt4 := 0;
                                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Finance Amount";
                                        END;
                                    END;
                                END;
                            END;
                            //test--
                        END;
                    END;
                END;
                //FOR PAYTM AND EX

                /*
                IF "Sales Invoice Header"."Ref. Invoice No."='' THEN
                BEGIN

                //paytm++
                                  Tmpvalue := 0;
                                  paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount";
                                  IF ( "Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                                  paytm_amount := 0
                                  ELSE
                                  BEGIN
                                    IF ( "Sales Invoice Header"."Paytm Transfer Amount" <> 0 ) AND (PendShieldValue >0) THEN BEGIN
                                      IF "Sales Invoice Header"."Paytm Transfer Amount" > PendShieldValue THEN BEGIN
                                          IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            paytm_amount := PendShieldValue;
                                          END
                                          ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount" - Tmpvalue;
                                          END;
                                      END
                                      ELSE BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                          Tmpvalue := PendShieldValue;
                                          paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount";
                                          PendShieldValue := PendShieldValue - "Sales Invoice Header"."Paytm Transfer Amount";
                                         END
                                         ELSE BEGIN
                                          Tmpvalue := PendShieldValue;
                                          paytm_amount := 0;
                                          PendShieldValue := PendShieldValue - "Sales Invoice Header"."Paytm Transfer Amount";
                                         END;
                                      END;
                                    END;
                                  END;

                //paytm--
                //ex_amount++
                                  Tmpvalue := 0;
                                  ex_amount := "Sales Invoice Header"."Amazon Transfer Amount";
                                  IF ( "Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                                  ex_amount := 0
                                  ELSE
                                  BEGIN
                                    IF ( "Sales Invoice Header"."Amazon Transfer Amount" <> 0 ) AND (PendShieldValue >0) THEN BEGIN
                                      IF "Sales Invoice Header"."Amazon Transfer Amount" > PendShieldValue THEN BEGIN
                                          IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            ex_amount := PendShieldValue;
                                          END
                                          ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            ex_amount := "Sales Invoice Header"."Amazon Transfer Amount" - Tmpvalue;
                                          END;
                                      END
                                      ELSE BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                          Tmpvalue := PendShieldValue;
                                          ex_amount := "Sales Invoice Header"."Amazon Transfer Amount";
                                          PendShieldValue := PendShieldValue - "Sales Invoice Header"."Amazon Transfer Amount";
                                         END
                                         ELSE BEGIN
                                          Tmpvalue := PendShieldValue;
                                          ex_amount := 0;
                                          PendShieldValue := PendShieldValue - "Sales Invoice Header"."Amazon Transfer Amount";
                                         END;
                                      END;
                                    END;
                                  END;

                //ex_amount--
                //insurance_amount++
                                  Tmpvalue := 0;
                                  insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount";
                                  IF ( "Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                                  insurance_Amount := 0
                                  ELSE
                                  BEGIN
                                    IF ( "Sales Invoice Header"."Insurance Transfer Amount" <> 0 ) AND (PendShieldValue >0) THEN BEGIN
                                      IF "Sales Invoice Header"."Insurance Transfer Amount" > PendShieldValue THEN BEGIN
                                          IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            insurance_Amount := PendShieldValue;
                                          END
                                          ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount" - Tmpvalue;
                                          END;
                                      END
                                      ELSE BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                          Tmpvalue := PendShieldValue;
                                          insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount";
                                          PendShieldValue := PendShieldValue - "Sales Invoice Header"."Insurance Transfer Amount";
                                         END
                                         ELSE BEGIN
                                          Tmpvalue := PendShieldValue;
                                          insurance_Amount := 0;
                                          PendShieldValue := PendShieldValue - "Sales Invoice Header"."Insurance Transfer Amount";
                                         END;
                                      END;
                                    END;
                                  END;

                //insurance_amount--
                //Cashify_amount++
                                  Tmpvalue := 0;
                                  Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount";
                                  IF ( "Sales Invoice Header"."Ref. Invoice No." <> '') AND (PendShieldValue = 0) THEN
                                  Cashify_amount := 0
                                  ELSE
                                  BEGIN
                                    IF ( "Sales Invoice Header"."Cashify Transfer Amount" <> 0 ) AND (PendShieldValue >0) THEN BEGIN
                                      IF "Sales Invoice Header"."Cashify Transfer Amount" > PendShieldValue THEN BEGIN
                                          IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            Cashify_amount := PendShieldValue;
                                          END
                                          ELSE BEGIN
                                            Tmpvalue := PendShieldValue;
                                            PendShieldValue := 0;
                                            Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount" - Tmpvalue;
                                          END;
                                      END
                                      ELSE BEGIN
                                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                                          Tmpvalue := PendShieldValue;
                                          Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount";
                                          PendShieldValue := PendShieldValue - "Sales Invoice Header"."Cashify Transfer Amount";
                                         END
                                         ELSE BEGIN
                                          Tmpvalue := PendShieldValue;
                                          Cashify_amount := 0;
                                          PendShieldValue := PendShieldValue - "Sales Invoice Header"."Cashify Transfer Amount";
                                         END;
                                      END;
                                    END;
                                  END;

                //cashify_amount--
                END;
                */
                //Win316--
                CLEAR(paytm_amount);
                CLEAR(ex_amount);
                CLEAR(insurance_Amount);
                CLEAR(Cashify_amount);
                CLEAR(Pinelab_amount);
                CLEAR(LoyaltyRewardz_amount);
                //paytm++
                Tmpvalue := 0;
                PendShieldValue := TotShieldvalue;
                paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount";
                IF ("Sales Invoice Header"."Paytm Transfer Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                    IF "Sales Invoice Header"."Paytm Transfer Amount" > PendShieldValue THEN BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            paytm_amount := Tmpvalue;
                        END
                        ELSE BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount" - Tmpvalue;
                        END;
                    END
                    ELSE BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            paytm_amount := "Sales Invoice Header"."Paytm Transfer Amount";
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Paytm Transfer Amount";
                        END
                        ELSE BEGIN
                            paytm_amount := 0;
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Paytm Transfer Amount";
                        END;
                    END;
                END;

                // New Logic for Paytm Amount
                CLEAR(paytm_amount);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '231346');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."No." + '-P');
                GLEntry.SetRange("Document Type", GLEntry."Document Type"::Payment);
                IF GLEntry.FINDFIRST THEN BEGIN
                    paytm_amount += GLEntry.Amount;
                END;

                // New Logic for Servify Amount
                CLEAR(ServifyAmount);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '231339');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."No." + '-P');
                //GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                GLEntry.SetRange("Document Type", GLEntry."Document Type"::Payment);//LP
                IF GLEntry.FINDFIRST THEN BEGIN
                    ServifyAmount += GLEntry.Amount;
                END;
                clear(ServifyBonusAmount);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '225904');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    ServifyBonusAmount += GLEntry.Amount;
                END;
                clear(CashifyBonusAmount);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '225903');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    CashifyBonusAmount += GLEntry.Amount;
                END;

                // New Logic for Paytm AppCode
                CLEAR(ServifyAppCode);
                CLEAR(PaytmAppCode);
                SalesOrderExtension.RESET;
                SalesOrderExtension.SETRANGE("No.", "Sales Invoice Header"."No.");
                IF SalesOrderExtension.FINDFIRST THEN BEGIN
                    ServifyAppCode := SalesOrderExtension."Servify Approval Code";
                    PaytmAppCode := SalesOrderExtension."Paytm Approval Code"

                END;

                //paytm--
                //ex++
                Tmpvalue := 0;
                PendShieldValue := TotShieldvalue;
                ex_amount := "Sales Invoice Header"."Amazon Transfer Amount";
                IF ("Sales Invoice Header"."Amazon Transfer Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                    IF "Sales Invoice Header"."Amazon Transfer Amount" > PendShieldValue THEN BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            ex_amount := Tmpvalue;
                        END
                        ELSE BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            ex_amount := "Sales Invoice Header"."Amazon Transfer Amount" - Tmpvalue;
                        END;
                    END
                    ELSE BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            ex_amount := "Sales Invoice Header"."Amazon Transfer Amount";
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Amazon Transfer Amount";
                        END
                        ELSE BEGIN
                            ex_amount := 0;
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Amazon Transfer Amount";
                        END;
                    END;
                END;

                //ex--
                //insurance++
                Tmpvalue := 0;
                PendShieldValue := TotShieldvalue;
                insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount";
                IF ("Sales Invoice Header"."Insurance Transfer Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                    IF "Sales Invoice Header"."Insurance Transfer Amount" > PendShieldValue THEN BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            insurance_Amount := Tmpvalue;
                        END
                        ELSE BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount" - Tmpvalue;
                        END;
                    END
                    ELSE BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            insurance_Amount := "Sales Invoice Header"."Insurance Transfer Amount";
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Insurance Transfer Amount";
                        END
                        ELSE BEGIN
                            insurance_Amount := 0;
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Insurance Transfer Amount";
                        END;
                    END;
                END;

                //insurance--
                //cashify++
                Tmpvalue := 0;
                PendShieldValue := TotShieldvalue;
                Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount";
                IF ("Sales Invoice Header"."Cashify Transfer Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                    IF "Sales Invoice Header"."Cashify Transfer Amount" > PendShieldValue THEN BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            Cashify_amount := Tmpvalue;
                        END
                        ELSE BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount" - Tmpvalue;
                        END;
                    END
                    ELSE BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            Cashify_amount := "Sales Invoice Header"."Cashify Transfer Amount";
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Cashify Transfer Amount";
                        END
                        ELSE BEGIN
                            Cashify_amount := 0;
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Cashify Transfer Amount";
                        END;
                    END;
                END;

                //cashify--
                //Pinelab++
                Tmpvalue := 0;
                PendShieldValue := TotShieldvalue;
                Pinelab_amount := "Sales Invoice Header"."Pinelab Transfer Amount";
                IF ("Sales Invoice Header"."Pinelab Transfer Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                    IF "Sales Invoice Header"."Pinelab Transfer Amount" > PendShieldValue THEN BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            Pinelab_amount := Tmpvalue;
                        END
                        ELSE BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            Pinelab_amount := "Sales Invoice Header"."Pinelab Transfer Amount" - Tmpvalue;
                        END;
                    END
                    ELSE BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            Pinelab_amount := "Sales Invoice Header"."Pinelab Transfer Amount";
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Pinelab Transfer Amount";
                        END
                        ELSE BEGIN
                            Pinelab_amount := 0;
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Pinelab Transfer Amount";
                        END;
                    END;
                END;

                //pinelab--
                //Loyalty Rewardz++
                Tmpvalue := 0;
                PendShieldValue := TotShieldvalue;
                LoyaltyRewardz_amount := "Sales Invoice Header"."Loyalty Riwardz Tr.Amount";
                IF ("Sales Invoice Header"."Loyalty Riwardz Tr.Amount" <> 0) AND (PendShieldValue > 0) THEN BEGIN
                    IF "Sales Invoice Header"."Loyalty Riwardz Tr.Amount" > PendShieldValue THEN BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            LoyaltyRewardz_amount := Tmpvalue;
                        END
                        ELSE BEGIN
                            Tmpvalue := PendShieldValue;
                            PendShieldValue := 0;
                            LoyaltyRewardz_amount := "Sales Invoice Header"."Loyalty Riwardz Tr.Amount" - Tmpvalue;
                        END;
                    END
                    ELSE BEGIN
                        IF "Sales Invoice Header"."Ref. Invoice No." <> '' THEN BEGIN
                            Tmpvalue := PendShieldValue;
                            LoyaltyRewardz_amount := "Sales Invoice Header"."Loyalty Riwardz Tr.Amount";
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Loyalty Riwardz Tr.Amount";
                        END
                        ELSE BEGIN
                            Pinelab_amount := 0;
                            PendShieldValue := PendShieldValue - "Sales Invoice Header"."Loyalty Riwardz Tr.Amount";
                        END;
                    END;
                END;

                //Loyalty Rewardz--

                //Pay by points
                CLEAR(PayByPointsamount);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '231340');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        PayByPointsamount := PayByPointsamount + GLEntry.Amount;
                    until GLEntry.Next() = 0;
                END;

                //Pay by points
                CLEAR(EdenredAmount);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '231342');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        EdenredAmount := EdenredAmount + GLEntry.Amount;
                    until GLEntry.Next() = 0;
                END;

                CLEAR(NBFCAmount);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '231338');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        NBFCAmount := NBFCAmount + GLEntry.Amount;
                        NBFCCode := 'NBFC';
                    until GLEntry.Next() = 0;
                END;

                CLEAR(paytm_amount2);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '231308');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        paytm_amount2 := GLEntry.Amount;
                    until GLEntry.Next() = 0;
                    //NBFCCode := 'NBFC';
                END;

                CLEAR(Cashify_amount);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '231331');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        Cashify_amount := Cashify_amount + GLEntry.Amount;
                    //NBFCCode := 'NBFC';
                    until GLEntry.Next() = 0
                END;
                //HDFC
                CLEAR(HDFCAMT);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '226302');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        HDFCAMT := HDFCAMT + GLEntry.Amount;
                    //HDFCCardNo := GLEntry.Description;
                    until GLEntry.Next() = 0;
                    //NBFCCode := 'NBFC';
                END;

                CLEAR(HSBCAMT);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '231336');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        HSBCAMT := HSBCAMT + GLEntry.Amount;
                    //HSBCCardNo := GLEntry.Description;
                    //NBFCCode := 'NBFC';
                    until GLEntry.Next() = 0;
                END;

                CLEAR(AMXAMT);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '226305');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        AMXAMT := AMXAMT + GLEntry.Amount;
                    //HSBCCardNo := GLEntry.Description;
                    //NBFCCode := 'NBFC';
                    until GLEntry.Next() = 0;
                END;

                CLEAR(CITIAMT);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '226303');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        CITIAMT := CITIAMT + GLEntry.Amount;
                    //HSBCCardNo := GLEntry.Description;
                    //NBFCCode := 'NBFC';
                    until GLEntry.Next() = 0;
                END;
                CLEAR(UPIAMT);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '226314');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        UPIAMT := UPIAMT + GLEntry.Amount;
                    //HSBCCardNo := GLEntry.Description;
                    //NBFCCode := 'NBFC';
                    until GLEntry.Next() = 0;
                END;

                CLEAR(RazorPayAmt);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '231328');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        RazorPayAmt := RazorPayAmt + GLEntry.Amount;
                    //HSBCCardNo := GLEntry.Description;
                    //NBFCCode := 'NBFC';
                    until GLEntry.Next() = 0;
                END;

                CLEAR(ICICIAmt);
                GLEntry.RESET;
                GLEntry.SETRANGE("G/L Account No.", '226311');
                GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                IF GLEntry.FINDFIRST THEN BEGIN
                    repeat
                        ICICIAmt := paytm_amount + GLEntry.Amount;
                    //HSBCCardNo := GLEntry.Description;
                    //NBFCCode := 'NBFC';
                    until GLEntry.Next() = 0;
                END;


                // CLEAR(LoyaltyRWAMT);
                // GLEntry.RESET;
                // GLEntry.SETRANGE("G/L Account No.", '231328');
                // GLEntry.SETRANGE("Document No.", "Sales Invoice Header"."Order No." + '-P');
                // IF GLEntry.FINDFIRST THEN BEGIN
                //     repeat
                //         LoyaltyRWAMT := LoyaltyRWAMT + GLEntry.Amount;
                //     //HSBCCardNo := GLEntry.Description;
                //     //NBFCCode := 'NBFC';
                //     until GLEntry.Next() = 0;
                // END;


            end;

            trigger OnPreDataItem()
            begin
                Srno := 0;
                IF usersetup."Location Code" <> '' THEN
                    "Sales Invoice Header".SETFILTER("Sales Invoice Header"."Location Code", '%1', usersetup."Location Code");
                BBAMtTot := 0;
                IF "Sales Invoice Header".FINDFIRST THEN
                    Branchcode1 := "Sales Invoice Header"."Shortcut Dimension 1 Code";
                "Sales Invoice Header".SETRANGE("Sales Invoice Header"."Posting Date", startdt, enddt);
                IF "Sales Invoice Header".FINDSET THEN;
            end;
        }
        dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = false;
            RequestFilterFields = "Location Code";
            column(PostingDate_SalesCrMemoHeader; "Sales Cr.Memo Header"."Posting Date")
            {
            }
            column(ExternalDocumentNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."External Document No.")
            {
            }
            column(SCR_DocNo; "Sales Cr.Memo Header"."No.")
            {
            }
            column(Srno1; Srno1)
            {
            }
            column(custnm; "Sales Cr.Memo Header"."Sell-to Customer Name")
            {
            }
            column(amt_2_cust; AmtTOCust)//"Sales Cr.Memo Header"."Amount to Customer"---CCIT
            {
            }
            column(Cash1; "Sales Cr.Memo Header".PayByCashAmt)
            {
            }
            column(chqamt; "Sales Cr.Memo Header".PayByChqAmt)
            {
            }
            column(RTGSAmt; "Sales Cr.Memo Header"."RTGS Amount")
            {
            }
            column(cr_no1; "Sales Cr.Memo Header".PayByCreditNo1)
            {
            }
            column(cr_no2; "Sales Cr.Memo Header".PayByCreditNo2)
            {
            }
            column(cr_no3; "Sales Cr.Memo Header".PayByCreditNo3)
            {
            }
            column(cr_no4; "Sales Cr.Memo Header".PayByCreditNo4)
            {
            }
            column(crmt1; "Sales Cr.Memo Header".PayByCreditAmt1)
            {
            }
            column(crmt2; "Sales Cr.Memo Header".PayByCreditAmt2)
            {
            }
            column(crmt3; "Sales Cr.Memo Header".PayByCreditAmt3)
            {
            }
            column(crmt4; "Sales Cr.Memo Header".PayByCreditAmt4)
            {
            }
            column(GiftVouchCrAmt; "Sales Cr.Memo Header".GiftVoucherAmt)
            {
            }
            column(FinanceCrAmt; "Sales Cr.Memo Header"."Finance Amount")
            {
            }
            column(AppQty1; AppQty1)
            {
            }
            column(NonAppQty1; NonAppQty1)
            {
            }
            column(HDFCCardNo1; HDFCCardNo1)
            {
            }
            column(HSBCCardNo1; HSBCCardNo1)
            {
            }
            column(AMXCardNo1; AMXCardNo1)
            {
            }
            column(CITICardNo1; CITICardNo1)
            {
            }
            column(InnovitiCardNo1; InnovitiCardNo1)
            {
            }
            column(PineLABSCardNo1; PineLABSCardNo1)
            {
            }
            column(HDFCAMT1; HDFCAMT1)
            {
            }
            column(HSBCAMT1; HSBCAMT1)
            {
            }
            column(AMXAMT1; AMXAMT1)
            {
            }
            column(CITIAMT1; CITIAMT1)
            {
            }
            column(InnovitiAMT1; InnovitiAMT1)
            {
            }
            column(PineLABSAMT1; PineLABSAMT1)
            {
            }

            column(AppBBCrAmt; "Sales Cr.Memo Header"."Apple Buyback Amt")
            {
            }
            column(MapBBCrAmt; "Sales Cr.Memo Header"."Maple Buyback Amt")
            {
            }
            column(BBCrAmt; BBCrAmt)
            {
            }
            column(BBCrAMtTot; BBCrAMtTot)
            {
            }
            column(CommentCr; CmntCr)
            {
            }
            column(Cr_SalesName; SalesName)
            {
            }
            column(LoyalityRWCardNo1; LoyalityRWCardNo1)
            {
            }
            column(LoyaltyRWAMT1; LoyaltyRWAMT1)
            {
            }

            trigger OnAfterGetRecord()
            var
                CLE_L: Record "Cust. Ledger Entry";
            begin
                AmtTOCust := 0;
                IF CLE_L.Get("Sales Cr.Memo Header"."Cust. Ledger Entry No.") then begin
                    CLE_L.CALCFIELDS(Amount);
                    AmtTOCust := Abs(CLE_L.Amount);
                end;
                Srno1 += 1;
                AppQty1 := 0;
                NonAppQty1 := 0;
                InitVarCrMemo;
                salesCrMemoLn.RESET;
                salesCrMemoLn.SETFILTER(salesCrMemoLn."Document No.", "Sales Cr.Memo Header"."No.");
                IF salesCrMemoLn.FINDFIRST THEN BEGIN
                    REPEAT
                        IF salesCrMemoLn."Item Category Code" = 'APPLE' THEN
                            AppQty1 += salesCrMemoLn.Quantity
                        ELSE
                            NonAppQty1 += salesCrMemoLn.Quantity;
                    UNTIL salesCrMemoLn.NEXT = 0;
                END;


                IF "Sales Cr.Memo Header".PayByCreditNo1 = 'HDFC' THEN BEGIN
                    HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
                    HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo2 = 'HDFC' THEN BEGIN
                    HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
                    HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo3 = 'HDFC' THEN BEGIN
                    HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
                    HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo4 = 'HDFC' THEN BEGIN
                    HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
                    HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo5 = 'HDFC' THEN BEGIN
                    HDFCCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
                    HDFCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
                END;

                /*
                if "Sales Cr.Memo Header".PayByCreditNo1='HSBC' then
                begin
                HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo1;
                HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt1;
                end;

                if "Sales Cr.Memo Header".PayByCreditNo2='HSBC' then
                begin
                HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo2;
                HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt2;
                end;

                if "Sales Cr.Memo Header".PayByCreditNo3='HSBC' then
                begin
                HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo3;
                HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt3;
                end;

                if "Sales Cr.Memo Header".PayByCreditNo4='HSBC' then
                begin
                HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo4;
                HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt4;
                end;

                if "Sales Cr.Memo Header".PayByCreditNo5='HSBC' then
                begin
                HSBCCardNo1:="Sales Cr.Memo Header".CreditCardNo5;
                HSBCAMT1:="Sales Cr.Memo Header".PayByCreditAmt5;
                end;
                */

                IF "Sales Cr.Memo Header".PayByCreditNo1 = 'AXIS' THEN BEGIN
                    HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
                    HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo2 = 'AXIS' THEN BEGIN
                    HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
                    HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo3 = 'AXIS' THEN BEGIN
                    HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
                    HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo4 = 'AXIS' THEN BEGIN
                    HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
                    HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo5 = 'AXIS' THEN BEGIN
                    HSBCCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
                    HSBCAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
                END;


                IF "Sales Cr.Memo Header".PayByCreditNo1 = 'AMEX' THEN BEGIN
                    AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
                    AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo2 = 'AMEX' THEN BEGIN
                    AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
                    AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo3 = 'AMEX' THEN BEGIN
                    AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
                    AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo4 = 'AMEX' THEN BEGIN
                    AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
                    AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo5 = 'AMEX' THEN BEGIN
                    AMXCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
                    AMXAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo1 = 'UPI' THEN BEGIN
                    CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
                    CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo2 = 'UPI' THEN BEGIN
                    CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
                    CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo3 = 'UPI' THEN BEGIN
                    CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
                    CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo4 = 'UPI' THEN BEGIN
                    CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
                    CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo5 = 'UPI' THEN BEGIN
                    CITICardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
                    CITIAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo1 = 'Innoviti' THEN BEGIN
                    InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
                    InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo2 = 'Innoviti' THEN BEGIN
                    InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
                    InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo3 = 'Innoviti' THEN BEGIN
                    InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
                    InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo4 = 'Innoviti' THEN BEGIN
                    InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
                    InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo5 = 'Innoviti' THEN BEGIN
                    InnovitiCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
                    InnovitiAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo1 = 'Pine Labs' THEN BEGIN
                    PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
                    PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo2 = 'Pine Labs' THEN BEGIN
                    PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
                    PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo3 = 'Pine Labs' THEN BEGIN
                    PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
                    PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo4 = 'Pine Labs ' THEN BEGIN
                    PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
                    PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo5 = 'Pine Labs' THEN BEGIN
                    PineLABSCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
                    PineLABSAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
                END;
                //Win-234 Loyality RW++
                IF "Sales Cr.Memo Header".PayByCreditNo1 = 'LOYALTY RW' THEN BEGIN
                    LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo1;
                    LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt1;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo2 = 'LOYALTY RW' THEN BEGIN
                    LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo2;
                    LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt2;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo3 = 'LOYALTY RW' THEN BEGIN
                    LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo3;
                    LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt3;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo4 = 'LOYALTY RW' THEN BEGIN
                    LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo4;
                    LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt4;
                END;

                IF "Sales Cr.Memo Header".PayByCreditNo5 = 'LOYALTY RW' THEN BEGIN
                    LoyalityRWCardNo1 := "Sales Cr.Memo Header".CreditCardNo5;
                    LoyaltyRWAMT1 := "Sales Cr.Memo Header".PayByCreditAmt5;
                END;

                //Win-234 Loyality RW--


                BBCrAmt := 0;
                IF "Sales Cr.Memo Header"."Maple Buyback Amt" > 0 THEN
                    BBCrAmt := "Sales Cr.Memo Header"."Maple Buyback Amt";
                //IF "Sales Cr.Memo Header"."Apple Buyback Amt">0 THEN
                //BBCrAmt:="Sales Cr.Memo Header"."Apple Buyback Amt";

                BBCrAMtTot += BBCrAmt;

                CmntCr := '';
                RecCommentCr.SETFILTER(RecCommentCr."No.", "Sales Cr.Memo Header"."No.");
                IF RecCommentCr.FINDFIRST THEN
                    CmntCr := RecCommentCr.Comment;

                RecSalesPerson.RESET;
                RecSalesPerson.SETRANGE(RecSalesPerson.Code, "Sales Cr.Memo Header"."Salesperson Code");
                IF RecSalesPerson.FINDFIRST THEN
                    SalesName := RecSalesPerson.Name;

            end;

            trigger OnPreDataItem()
            begin
                Srno1 := 0;
                BBCrAMtTot := 0;

                //IF usersetup.GET("Sales Cr.Memo Header"."User ID") THEN
                //IF "Sales Cr.Memo Header".GETFILTER("Sales Cr.Memo Header"."Location Code")='' THEN
                IF usersetup."Location Code" <> '' THEN
                    "Sales Cr.Memo Header".SETFILTER("Sales Cr.Memo Header"."Location Code", usersetup."Location Code");


                "Sales Cr.Memo Header".SETRANGE("Sales Cr.Memo Header"."Posting Date", startdt, enddt);
                IF "Sales Cr.Memo Header".FINDFIRST THEN;
            end;
        }
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            DataItemTableView = SORTING("Customer No.", "Posting Date")
                                ORDER(Ascending)
                                WHERE("Document Type" = FILTER(Payment | Refund));
            column(CustDocNo; "Cust. Ledger Entry"."Document No.")
            {
            }
            column(cust_cramt; "Cust. Ledger Entry".Amount)
            {
            }
            column(cust_custnm; custnm)
            {
            }
            column(cust_amt; cust_amt)
            {
            }
            column(cashamt; cashamt)
            {
            }
            column(Srno2; Srno2)
            {
            }
            column(HDFCAMT2; HDFCAMT2)
            {
            }
            column(HSBCAMT2; HSBCAMT2)
            {
            }
            column(AMXAMT2; AMXAMT2)
            {
            }
            column(CITIAMT2; CITIAMT2)
            {
            }
            column(InnovitiAMT2; InnovitiAMT2)
            {
            }
            column(PineLABSAMT2; PineLABSAMT2)
            {
            }
            column(LoyaltyRWAMT2; LoyaltyRWAMT2)
            {
            }

            trigger OnAfterGetRecord()
            begin
                custnm := '';
                cust_amt := 0;
                cashamt := 0;
                chquamt := 0;
                HDFCAMT2 := 0;
                HSBCAMT2 := 0;
                AMXAMT2 := 0;
                CITIAMT2 := 0;
                InnovitiAMT2 := 0;
                PineLABSAMT2 := 0;
                "Cust. Ledger Entry".CALCFIELDS("Cust. Ledger Entry"."Credit Amount");

                Srno2 += 1;
                cust.RESET;
                cust.SETFILTER(cust."No.", "Cust. Ledger Entry"."Customer No.");
                IF cust.FINDFIRST THEN
                    custnm := cust.Name;

                cust_amt := "Cust. Ledger Entry".Amount;
                IF ("Cust. Ledger Entry"."Reason Code" = 'CASH') THEN
                    cashamt := "Cust. Ledger Entry"."Credit Amount";


                IF ("Cust. Ledger Entry"."Reason Code" = 'HDFC') THEN
                    HDFCAMT2 := "Cust. Ledger Entry"."Credit Amount";

                IF ("Cust. Ledger Entry"."Reason Code" = 'AXIS') THEN
                    HSBCAMT2 := "Cust. Ledger Entry"."Credit Amount";

                IF ("Cust. Ledger Entry"."Reason Code" = 'AMEX') THEN
                    AMXAMT2 := "Cust. Ledger Entry"."Credit Amount";

                IF ("Cust. Ledger Entry"."Reason Code" = 'UPI') THEN
                    CITIAMT2 := "Cust. Ledger Entry"."Credit Amount";

                IF ("Cust. Ledger Entry"."Reason Code" = 'Innoviti') THEN
                    InnovitiAMT2 := "Cust. Ledger Entry"."Credit Amount";

                IF ("Cust. Ledger Entry"."Reason Code" = 'PineLABS') THEN
                    PineLABSAMT2 := "Cust. Ledger Entry"."Credit Amount";

                IF "Cust. Ledger Entry"."Reason Code" = 'LOYALITY RW' THEN
                    LoyaltyRWAMT2 := "Cust. Ledger Entry"."Credit Amount";
            end;

            trigger OnPreDataItem()
            begin
                Srno2 := 0;
                "Cust. Ledger Entry".SETRANGE("Cust. Ledger Entry"."Posting Date", startdt, enddt);
                //"Cust. Ledger Entry".SETFILTER( "Location Code",'%1',usersetup."Location Code");

                "Cust. Ledger Entry".SETFILTER("Cust. Ledger Entry"."Global Dimension 1 Code", '%1', Branchcode1);
                //"Cust. Ledger Entry".SETFILTER("Cust. Ledger Entry"."Reason Code",'<>%1','');
                "Cust. Ledger Entry".SETFILTER("Cust. Ledger Entry"."Document No.", '%1|%2', 'JV*', 'CR*');

                //IF "Cust. Ledger Entry".FINDSET THEN;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("Start Date"; startdt)
                    {
                        ApplicationArea = All;
                    }
                    field("End Date"; enddt)
                    {
                        ApplicationArea = All;
                    }
                    field(Location; loc.Code)
                    {
                        Visible = false;
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        IF usersetup.GET(USERID) THEN
            IF loc.GET(usersetup."Location Code") THEN
                SalesSetup.GET;
    end;

    var
        AmtTOCust: Decimal;
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        GLAcc: Record "G/L Account";
        Srno: Integer;
        PurchRctHeader: Record "Purch. Rcpt. Header";
        Vend: Record Vendor;
        Item: Record item;
        InvepostingSetup: Record "Inventory Posting Setup";
        Gl: Record "G/L Account";
        Desc: Text[250];
        PurchInvHeader: Record "Purch. Inv. Header";
        cstgroup: Code[10];
        TaxName: Text[30];
        PurchINVLine: Record "Purch. Inv. Line";
        cstcheck: Boolean;
        comp: Record "Company Information";
        datefilter: Text[50];
        locfilter55: Text[50];
        loc: Record Location;
        taxgrp: Record "Tax Group";
        taxdesc: Text[30];
        txt1: Label 'give location';
        loc_txt: Code[10];
        k: Text[30];
        l: Text[30];
        xl: Boolean;
        TD: Record "Tax Detail";
        TJ: Record "Tax Jurisdiction";
        taxperc: Decimal;
        typ: Text[30];
        cform: Code[30];
        statecode: Code[10];
        recstate: Record State;
        locat: Record Location;
        site: Text[30];
        RecPurHead: Record "Purchase Header";
        i: Text[30];
        RecGPPG: Record "General Posting Setup";
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        PURCHASE_REGISTER_FOR_THE_PERIOD_CaptionLbl: Label 'PURCHASE REGISTER FOR THE PERIOD ';
        Voucher_No_CaptionLbl: Label 'Voucher No.';
        Vendor_CodeCaptionLbl: Label 'Vendor Code';
        Vendor_NameCaptionLbl: Label 'Vendor Name';
        Bill_No_CaptionLbl: Label 'Bill No.';
        Bill_DateCaptionLbl: Label 'Bill Date';
        GRN_No_CaptionLbl: Label 'GRN No.';
        GRN_DateCaptionLbl: Label 'GRN Date';
        State_T_I_N_No_CaptionLbl: Label 'State T.I.N No.';
        CST_T_I_N_No_CaptionLbl: Label 'CST T.I.N No.';
        Voucher_DateCaptionLbl: Label 'Voucher Date';
        Item___G_L_DescriptionCaptionLbl: Label 'Item / G/L Description';
        Total_Bill__Invoice_Amt_CaptionLbl: Label 'Total Bill/ Invoice Amt.';
        Discount__Amt_CaptionLbl: Label 'Discount  Amt.';
        Item_CodeCaptionLbl: Label 'Item Code';
        Net_Amt_CaptionLbl: Label 'Net Amt.';
        Cenvat_Amt_CaptionLbl: Label 'Cenvat Amt.';
        G_L_CodeCaptionLbl: Label 'G/L Code';
        G_L_DescriptionCaptionLbl: Label 'G/L Description';
        Other_AmtCaptionLbl: Label 'Other Amt';
        Tax_CaptionLbl: Label ' Tax%';
        Tax_DescriptionCaptionLbl: Label 'Tax Description';
        Tax__Amt_CaptionLbl: Label 'Tax  Amt.';
        RecPurHead__Order_Date_CaptionLbl: Label 'Label1102159009';
        Grand_TotalCaptionLbl: Label 'Grand Total';
        Group_TotalCaptionLbl: Label 'Group Total';
        InvCr: Integer;
        sbucode: Text[30];
        sbu: Record "Dimension Value";
        sbufiltername: Text[30];
        sbuname: Text[30];
        sbuname1: Text[30];
        taxdesc1: Text[30];
        datefilter1: Text[50];
        locfilter551: Text[50];
        loc_txt1: Code[10];
        docno: Code[30];
        No: Boolean;
        "SBU String": Text[100];
        AppQty: Integer;
        NonAppQty: Integer;
        HDFCCardNo: Code[50];
        HSBCCardNo: Code[50];
        AMXCardNo: Code[50];
        CITICardNo: Code[50];
        InnovitiCardNo: Code[50];
        PineLABSCardNo: Code[50];
        LoyaltyRWCardNo: Code[50];
        HDFCAMT: Decimal;
        HSBCAMT: Decimal;
        AMXAMT: Decimal;
        CITIAMT: Decimal;
        UPIAMT: Decimal;
        RazorPayAmt: Decimal;
        InnovitiAMT: Decimal;
        PineLABSAMT: Decimal;
        LoyaltyRWAMT: Integer;
        ICICIAmt: Decimal;
        salesinvline: Record "Sales Invoice Line";
        salesCrMemoLn: Record "Sales Cr.Memo Line";
        AppQty1: Integer;
        NonAppQty1: Integer;
        HDFCCardNo1: Code[50];
        HSBCCardNo1: Code[50];
        AMXCardNo1: Code[50];
        CITICardNo1: Code[50];
        InnovitiCardNo1: Code[50];
        PineLABSCardNo1: Code[50];
        LoyalityRWCardNo1: Code[50];
        HDFCAMT1: Decimal;
        HSBCAMT1: Decimal;
        AMXAMT1: Decimal;
        CITIAMT1: Decimal;
        InnovitiAMT1: Decimal;
        PineLABSAMT1: Decimal;
        LoyaltyRWAMT1: Decimal;
        startdt: Date;
        enddt: Date;
        cust: Record Customer;
        custnm: Text[250];
        cust_amt: Decimal;
        cashamt: Decimal;
        chquamt: Decimal;
        Srno2: Integer;
        Srno1: Integer;
        HDFCAMT2: Decimal;
        HSBCAMT2: Decimal;
        AMXAMT2: Decimal;
        CITIAMT2: Decimal;
        InnovitiAMT2: Decimal;
        PineLABSAMT2: Decimal;
        LoyaltyRWAMT2: Decimal;
        usersetup: Record "User Setup";
        BBAmt: Decimal;
        BBAMtTot: Decimal;
        BBCrAmt: Decimal;
        BBCrAMtTot: Decimal;
        PendShieldValue: Decimal;
        SaleCashAmt: Decimal;
        SaleChqAmt: Decimal;
        TotShieldvalue: Decimal;
        Tmpvalue: Decimal;
        Rtgsamt1: Decimal;
        RtgsAmt: Decimal;
        FinAmt: Decimal;
        FinAmt1: Decimal;
        GiftAmt: Decimal;
        NBFCAmount: Decimal;
        NBFCCode: Text;
        SalesSetup: Record "Sales & Receivables Setup";
        RecComment: Record "Sales Comment Line";
        Cmnt: Text[80];
        CmntCr: Text[80];
        RecCommentCr: Record "Sales Comment Line";
        RecSalesPerson: Record "Salesperson/Purchaser";
        SalesName: Text[50];
        ResCenter: Record "Responsibility Center New 1";
        Branchcode1: Code[100];
        RtgNo: Code[20];
        FinanceCompanyName: Text[30];
        FinanceCompanyName1: Text[30];
        POS: Integer;
        BANKAppCode: Code[50];
        BANKAppCode1: Code[50];
        POS1: Integer;
        FinAmt2: Decimal;
        FinAmt3: Decimal;
        FinAmt4: Decimal;
        BANKAppCode2: Code[50];
        BANKAppCode4: Code[50];
        paytm_amount: Decimal;
        paytm_amount2: Decimal;
        PayByPointsamount: Decimal;
        EdenredAmount: Decimal;
        ex_amount: Decimal;
        insurance_Amount: Decimal;
        Cashify_amount: Decimal;
        Pinelab_amount: Decimal;
        LoyaltyRewardz_amount: Decimal;
        GLEntry: Record "G/L Entry";
        SalesOrderExtension: Record "Sales Order Extension";
        ServifyAmount: Decimal;
        ServifyBonusAmount: Decimal;
        CashifyBonusAmount: Decimal;
        ServifyAppCode: Code[50];
        PaytmAppCode: Code[50];
        PinelabAppCode: Code[50];
        CashBackAmt: Decimal;
        CashBackCard: Text;

    procedure InitVarSales()
    begin
        HDFCCardNo := '';
        HDFCAMT := 0;
        HDFCCardNo := '';
        HDFCAMT := 0;
        HDFCCardNo := '';
        HDFCAMT := 0;
        HDFCCardNo := '';
        HDFCAMT := 0;
        HDFCCardNo := '';
        HDFCAMT := 0;
        HSBCCardNo := '';
        HSBCAMT := 0;
        HSBCCardNo := '';
        HSBCAMT := 0;
        HSBCCardNo := '';
        HSBCAMT := 0;
        HSBCCardNo := '';
        HSBCAMT := 0;
        HSBCCardNo := '';
        HSBCAMT := 0;
        AMXCardNo := '';
        AMXAMT := 0;
        AMXCardNo := '';
        AMXAMT := 0;
        AMXCardNo := '';
        AMXAMT := 0;
        AMXCardNo := '';
        AMXAMT := 0;
        AMXCardNo := '';
        AMXAMT := 0;
        CITICardNo := '';
        CITIAMT := 0;
        CITICardNo := '';
        CITIAMT := 0;
        CITICardNo := '';
        CITIAMT := 0;
        CITICardNo := '';
        CITIAMT := 0;
        CITICardNo := '';
        CITIAMT := 0;
        InnovitiCardNo := '';
        InnovitiAMT := 0;
        InnovitiCardNo := '';
        InnovitiAMT := 0;
        InnovitiCardNo := '';
        InnovitiAMT := 0;
        InnovitiCardNo := '';
        InnovitiAMT := 0;
        InnovitiCardNo := '';
        InnovitiAMT := 0;
        PineLABSCardNo := '';
        PineLABSAMT := 0;
        PineLABSCardNo := '';
        PineLABSAMT := 0;
        PineLABSCardNo := '';
        PineLABSAMT := 0;
        PineLABSCardNo := '';
        PineLABSAMT := 0;
        PineLABSCardNo := '';
        PineLABSAMT := 0;
        BBAmt := 0;
        LoyaltyRWCardNo := '';
        LoyaltyRWAMT := 0;
    end;

    procedure InitVarCrMemo()
    begin
        HDFCCardNo1 := '';
        HDFCAMT1 := 0;
        HDFCCardNo1 := '';
        HDFCAMT1 := 0;
        HDFCCardNo1 := '';
        HDFCAMT1 := 0;
        HDFCCardNo1 := '';
        HDFCAMT1 := 0;
        HDFCCardNo1 := '';
        HDFCAMT1 := 0;
        HSBCCardNo1 := '';
        HSBCAMT1 := 0;
        HSBCCardNo1 := '';
        HSBCAMT1 := 0;
        HSBCCardNo1 := '';
        HSBCAMT1 := 0;
        HSBCCardNo1 := '';
        HSBCAMT1 := 0;
        HSBCCardNo1 := '';
        HSBCAMT1 := 0;
        AMXCardNo1 := '';
        AMXAMT1 := 0;
        AMXCardNo1 := '';
        AMXAMT1 := 0;
        AMXCardNo1 := '';
        AMXAMT1 := 0;
        AMXCardNo1 := '';
        AMXAMT1 := 0;
        AMXCardNo1 := '';
        AMXAMT1 := 0;
        CITICardNo1 := '';
        CITIAMT1 := 0;
        CITICardNo1 := '';
        CITIAMT1 := 0;
        CITICardNo1 := '';
        CITIAMT1 := 0;
        CITICardNo1 := '';
        CITIAMT1 := 0;
        CITICardNo1 := '';
        CITIAMT1 := 0;
        InnovitiCardNo1 := '';
        InnovitiAMT1 := 0;
        InnovitiCardNo1 := '';
        InnovitiAMT1 := 0;
        InnovitiCardNo1 := '';
        InnovitiAMT1 := 0;
        InnovitiCardNo1 := '';
        InnovitiAMT1 := 0;
        InnovitiCardNo1 := '';
        InnovitiAMT1 := 0;
        PineLABSCardNo1 := '';
        PineLABSAMT1 := 0;
        PineLABSCardNo1 := '';
        PineLABSAMT1 := 0;
        PineLABSCardNo1 := '';
        PineLABSAMT1 := 0;
        PineLABSCardNo1 := '';
        PineLABSAMT1 := 0;
        PineLABSCardNo1 := '';
        PineLABSAMT1 := 0;
        LoyalityRWCardNo1 := '';
        LoyaltyRWAMT1 := 0;
    end;

    procedure InitVarCustLedg()
    begin
    end;

    local procedure FIndCBCardAndAmt(SalesInvoiceHeader: Record "Sales Invoice Header"; var CashBackAmt: Decimal; var CashBackCard: Text)
    var
        CustLedgerEntry: Record "Cust. Ledger Entry";
        GenLedEntries: Record "G/L Entry";
    begin
        CustLedgerEntry.SETRANGE("Document No.", SalesInvoiceHeader."No.");
        CustLedgerEntry.SETRANGE("Document Type", CustLedgerEntry."Document Type"::Invoice);
        IF CustLedgerEntry.FINDFIRST THEN
            GenLedEntries.SETRANGE(Description, CustLedgerEntry.Description);
        IF GenLedEntries.FINDSET THEN
            REPEAT
                // IF GenLedEntries."G/L Account No." = '231346' THEN BEGIN
                //     CashBackAmt += GenLedEntries.Amount;
                //     CashBackCard := 'PAYTM ICB';
                // END;
                IF GenLedEntries."G/L Account No." = '231306' THEN BEGIN
                    CashBackAmt += GenLedEntries.Amount;
                    CashBackCard := 'PAYTM ICB';
                END;
                // IF GenLedEntries."G/L Account No." = '231338' THEN BEGIN
                //     CashBackAmt += GenLedEntries.Amount;
                //     CashBackCard := 'NBFC Finance';
                // END;

                // IF GenLedEntries."G/L Account No." = '231346' THEN BEGIN
                //     CashBackAmt += GenLedEntries.Amount;
                //     CashBackCard := 'PAYTM';
                // END;
                // IF GenLedEntries."G/L Account No." = '231340' THEN BEGIN
                //     CashBackAmt += GenLedEntries.Amount;
                //     CashBackCard := 'PAY BY Pionts';
                // END;
                // IF GenLedEntries."G/L Account No." = '1' THEN BEGIN
                //     CashBackAmt += GenLedEntries.Amount;
                //     CashBackCard := 'Edenred';
                // END;
                // IF GenLedEntries."G/L Account No." = '231344' THEN BEGIN
                //     CashBackAmt += GenLedEntries.Amount;
                //     CashBackCard := 'Cashify Voucher';
                // END;



                // IF GenLedEntries."G/L Account No." = '231343' THEN BEGIN
                //     CashBackAmt += GenLedEntries.Amount;
                //     CashBackCard := 'Pay U';
                // END;

                IF GenLedEntries."G/L Account No." = '231345' THEN BEGIN
                    CashBackAmt += GenLedEntries.Amount;
                    CashBackCard := 'Reliance Insurance';
                END;

            //      IF GenLedEntries."G/L Account No." = '231343' THEN BEGIN
            //        CashBackAmt += GenLedEntries.Amount;
            //        CashBackCard := 'Pay U';
            //      END;

            UNTIL GenLedEntries.NEXT = 0;
    end;
}

