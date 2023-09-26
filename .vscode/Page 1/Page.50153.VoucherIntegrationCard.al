page 50153 "Voucher Integration Card"
{
    PageType = Card;
    SourceTable = 50021;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("SO No."; "SO No.")
                {
                    Editable = false;
                    ApplicationArea = all;
                }
            }
            group(Voucher1)
            {
                field("Voucher Int. No.1"; "Voucher Int. No.1")
                {
                    ApplicationArea = all;


                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.1");
                    end;
                }
                field("Voucher PIN1"; "Voucher PIN1")
                {
                    ApplicationArea = all;

                }
                field("Voucher Amount1"; "Voucher Amount1")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount1", "Voucher Int. No.1", "Voucher PIN1");
                    end;
                }
                field(Cancel1; Cancel1)
                {
                    ApplicationArea = all;
                }
                field(Refund1; Refund1)
                {
                    ApplicationArea = all;
                }
            }
            group(Voucher2)
            {
                field("Voucher Int. No.2"; "Voucher Int. No.2")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.2");
                    end;
                }
                field("Voucher PIN2"; "Voucher PIN2")
                {
                    ApplicationArea = all;
                }
                field("Voucher Amount2"; "Voucher Amount2")
                {

                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount2", "Voucher Int. No.2", "Voucher PIN2");
                    end;
                }
                field(Cancel2; Cancel2)
                {
                    ApplicationArea = all;
                }
                field(Refund2; Refund2)
                {
                    ApplicationArea = all;
                }
            }
            group(Voucher3)
            {
                field("Voucher Int. No.3"; "Voucher Int. No.3")
                {

                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.3");
                    end;
                }
                field("Voucher PIN3"; "Voucher PIN3")
                {
                    ApplicationArea = all;
                }
                field("Voucher Amount3"; "Voucher Amount3")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount3", "Voucher Int. No.3", "Voucher PIN3");
                    end;
                }
                field(Cancel3; Cancel3)
                {
                    ApplicationArea = all;
                }
                field(Refund3; Refund3)
                {
                    ApplicationArea = all;
                }
            }
            group(Voucher4)
            {
                field("Voucher Int. No.4"; "Voucher Int. No.4")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.4");
                    end;
                }
                field("Voucher PIN4"; "Voucher PIN4")
                {
                    ApplicationArea = all;
                }
                field("Voucher Amount4"; "Voucher Amount4")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount4", "Voucher Int. No.4", "Voucher PIN4");
                    end;
                }
                field(Cancel4; Cancel4)
                {
                    ApplicationArea = all;
                }
                field(Refund4; Refund4)
                {
                    ApplicationArea = all;
                }
                group(Voucher5)
                {

                }
                field("Voucher Int. No.5"; "Voucher Int. No.5")
                {
                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.5");
                    end;
                }
                field("Voucher PIN5"; "Voucher PIN5")
                {
                    ApplicationArea = all;
                }

                field("Voucher Amount5"; "Voucher Amount5")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount5", "Voucher Int. No.5", "Voucher PIN5");
                    end;
                }
                field(Cancel5; Cancel5)
                {
                    ApplicationArea = all;
                }
                field(Refund5; Refund5)
                {
                    ApplicationArea = all;
                }
            }
            group(Voucher6)
            {
                field("Voucher Int. No.6"; "Voucher Int. No.6")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.6");
                    end;
                }
                field("Voucher PIN6"; "Voucher PIN6")
                {
                    ApplicationArea = all;
                }
                field("Voucher Amount6"; "Voucher Amount6")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount6", "Voucher Int. No.6", "Voucher PIN6");
                    end;
                }
                field(Cancel6; Cancel6)
                {
                    ApplicationArea = all;
                }
                field(Refund6; Refund6)
                {
                    ApplicationArea = all;
                }
            }
            group(Voucher7)
            {
                field("Voucher Int. No.7"; "Voucher Int. No.7")
                {

                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.7");
                    end;
                }
                field("Voucher PIN7"; "Voucher PIN7")
                {
                    ApplicationArea = all;
                }

                field("Voucher Amount7"; "Voucher Amount7")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount7", "Voucher Int. No.7", "Voucher PIN7");
                    end;
                }
                field(Cancel7; Cancel7)
                {
                    ApplicationArea = all;
                }
                field(Refund7; Refund7)
                {
                    ApplicationArea = all;
                }
            }
            group(Voucher8)
            {
                field("Voucher Int. No.8"; "Voucher Int. No.8")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.8");
                    end;
                }
                field("Voucher PIN8"; "Voucher PIN8")
                {
                    ApplicationArea = all;
                }
                field("Voucher Amount8"; "Voucher Amount8")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount8", "Voucher Int. No.8", "Voucher PIN8");
                    end;
                }
                field(Cancel8; Cancel8)
                {
                    ApplicationArea = all;
                }
                field(Refund8; Refund8)
                {
                    ApplicationArea = all;
                }
            }
            group(Voucher9)
            {
                field("Voucher Int. No.9"; "Voucher Int. No.9")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.9");
                    end;
                }
                field("Voucher PIN9"; "Voucher PIN9")
                {
                    ApplicationArea = all;
                }
                field("Voucher Amount9"; "Voucher Amount9")
                {

                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount9", "Voucher Int. No.9", "Voucher PIN9");
                    end;
                }
                field(Cancel9; Cancel9)
                {
                    ApplicationArea = all;
                }
                field(Refund9; Refund9)
                {
                    ApplicationArea = all;
                }
            }
            group(Voucher10)
            {
                field("Voucher Int. No.10"; "Voucher Int. No.10")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        VoucherCheck("Voucher Int. No.10");
                    end;
                }
                field("Voucher PIN10"; "Voucher PIN10")
                {
                    ApplicationArea = all;
                }
                field("Voucher Amount10"; "Voucher Amount10")
                {
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        CheckVouchAmt("Voucher Amount10", "Voucher Int. No.10", "Voucher PIN10");
                    end;
                }
                field(Cancel10; Cancel10)
                {
                    ApplicationArea = all;
                }
                field(Refund10; Refund10)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            group(Group)
            {
                action("Update Voucher Details")
                {
                    Image = UpdateXML;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        RecSO: Record 36;
                    begin
                        RecSH.RESET;
                        RecSH.SETRANGE(RecSH."No.", "SO No.");
                        IF RecSH.FINDFIRST THEN BEGIN
                            //RecSH.CALCFIELDS("Amount To Customer UPIT");//tk
                            IF RecSH."Amount To Customer UPIT" <> 0 THEN
                                IF ("Voucher Amount1" + "Voucher Amount2" + "Voucher Amount3" + "Voucher Amount4" + "Voucher Amount5" + "Voucher Amount6" + "Voucher Amount7" + "Voucher Amount8" + "Voucher Amount9" + "Voucher Amount10") > RecSH."Amount To Customer UPIT" THEN
                                    ERROR('Please check voucher Amount it can not be greater than Invoice Amount %1 ', RecSH."Amount To Customer UPIT");
                        END;

                        RecSO.RESET;
                        RecSO.SETRANGE("No.", "SO No.");
                        IF RecSO.FINDFIRST THEN BEGIN
                            RecSO.VALIDATE("Voucher Amount", "Voucher Amount1" + "Voucher Amount2" + "Voucher Amount3" + "Voucher Amount4" + "Voucher Amount5" + "Voucher Amount6" + "Voucher Amount7" + "Voucher Amount8" + "Voucher Amount9" + "Voucher Amount10");
                            RecSO.MODIFY;
                            MESSAGE('Voucher details updated in SO successfully');
                        END;
                    end;
                }
                separator(Separator)
                {
                }

                action("Capture Voucher")
                {
                    Image = Camera;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        IF ("Voucher Int. No.1" <> '') AND ("Voucher Amount1" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        IF ("Voucher Int. No.2" <> '') AND ("Voucher Amount2" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        IF ("Voucher Int. No.3" <> '') AND ("Voucher Amount3" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        IF ("Voucher Int. No.4" <> '') AND ("Voucher Amount4" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        IF ("Voucher Int. No.5" <> '') AND ("Voucher Amount5" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        IF ("Voucher Int. No.6" <> '') AND ("Voucher Amount6" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        IF ("Voucher Int. No.7" <> '') AND ("Voucher Amount7" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        IF ("Voucher Int. No.8" <> '') AND ("Voucher Amount8" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        IF ("Voucher Int. No.9" <> '') AND ("Voucher Amount9" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        IF ("Voucher Int. No.10" <> '') AND ("Voucher Amount10" = 0) THEN
                            ERROR('PLease check voucher Amount');
                        RecSH.RESET;
                        RecSH.SETRANGE(RecSH."No.", "SO No.");
                        RecSH.SETFILTER(RecSH."Voucher Amount", '%1', 0);
                        IF RecSH.FINDFIRST THEN
                            ERROR('Please check if Voucher Amount has been captured or not in Voucher Integration Card page');

                        CurrPage.SETSELECTIONFILTER(Rec);
                        RecSOO.RESET;
                        RecSOO.SETRANGE("No.", "SO No.");
                        IF RecSOO.FINDFIRST THEN;


                        IF RecCvouchCust.GET(RecSOO."Sell-to Customer No.") THEN BEGIN
                            RecCvouchCust.TESTFIELD(RecCvouchCust."E-Mail");
                            RecCvouchCust.TESTFIELD(RecCvouchCust."Phone No.");
                        END;
                        IF "Voucher Amount1" <> 0 THEN BEGIN
                            GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.1", "Voucher PIN1");

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.1");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.1", "Voucher PIN1")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF "Voucher Amount2" <> 0 THEN BEGIN

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.2");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.2", "Voucher PIN2")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF "Voucher Amount3" <> 0 THEN BEGIN

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.3");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.3", "Voucher PIN3")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF "Voucher Amount4" <> 0 THEN BEGIN

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.4");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.4", "Voucher PIN4")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF "Voucher Amount5" <> 0 THEN BEGIN

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.5");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.5", "Voucher PIN5")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF "Voucher Amount6" <> 0 THEN BEGIN

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.6");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.6", "Voucher PIN6")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF "Voucher Amount7" <> 0 THEN BEGIN

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.7");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.7", "Voucher PIN7")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF "Voucher Amount8" <> 0 THEN BEGIN

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.8");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.8", "Voucher PIN8")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF "Voucher Amount9" <> 0 THEN BEGIN

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.9");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.9", "Voucher PIN9")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF "Voucher Amount10" <> 0 THEN BEGIN

                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.10");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCapture2("SO No.", RecSOO."Location Code", "Voucher Int. No.10", "Voucher PIN10")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                    end;
                }
                action("Cancel Authorization")
                {
                    Image = CancelAllLines;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        RecSO: Record 36;
                    begin

                        /* Rec.TESTFIELD(Rec."Location Code");
                         RecEINV.RESET;
                         RecEINV.SETRANGE("Document No.","No.");
                         RecEINV.SETRANGE("Vouchr. Integration",TRUE);
                         RecEINV.SETFILTER("Vouchr. Authorization ID",'<>%1','');
                         IF RecEINV.FINDLAST THEN
                         GetVoucher.MapleCancelAuthorization1("No.","Location Code")
                         ELSE
                           ERROR('Please check if this voucher is Authorized successfully or not from log file');
                          */
                        RecSOO.RESET;
                        RecSOO.SETRANGE(RecSOO."No.", "SO No.");
                        IF RecSOO.FINDFIRST THEN;

                        IF Cancel1 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE(RecEINV."Document No.", "SO No.");
                            RecEINV.SETRANGE(RecEINV."Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER(RecEINV."Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER(RecEINV."Vouchr. Code", "Voucher Int. No.1");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.1", "Voucher PIN1")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;


                        IF Cancel2 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE(RecEINV."Document No.", "SO No.");
                            RecEINV.SETRANGE(RecEINV."Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER(RecEINV."Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER(RecEINV."Vouchr. Code", "Voucher Int. No.2");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.2", "Voucher PIN2")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;

                        IF Cancel3 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE(RecEINV."Document No.", "SO No.");
                            RecEINV.SETRANGE(RecEINV."Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER(RecEINV."Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER(RecEINV."Vouchr. Code", "Voucher Int. No.3");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.3", "Voucher PIN3")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;
                        IF Cancel4 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.4");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.4", "Voucher PIN4")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;
                        IF Cancel5 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.5");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.5", "Voucher PIN5")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;//tk

                        IF Cancel6 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.6");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.6", "Voucher PIN6")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;//tk
                        IF Cancel7 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.7");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.7", "Voucher PIN7")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;
                        IF Cancel8 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.8");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.8", "Voucher PIN8")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;
                        IF Cancel9 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.9");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.1", "Voucher PIN9")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;
                        IF Cancel10 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Authorization ID", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.10");
                            IF RecEINV.FINDLAST THEN
                                GetVoucher.MapleCancelAuthorization2("SO No.", RecSOO."Location Code", "Voucher Int. No.10", "Voucher PIN10")
                            ELSE
                                ERROR('Please check if this voucher is Authorized successfully or not from log file');
                        END;


                        RecSO.RESET;
                        RecSO.SETRANGE("No.", "SO No.");
                        IF RecSO.FINDFIRST THEN BEGIN
                            RecSO.VALIDATE("Voucher Amount", "Voucher Amount1" + "Voucher Amount2" + "Voucher Amount3" + "Voucher Amount4" + "Voucher Amount5" + "Voucher Amount6" + "Voucher Amount7" + "Voucher Amount8" + "Voucher Amount9" + "Voucher Amount10");
                            RecSO.MODIFY;
                            // MESSAGE('Voucher details updated in SO successfully');
                        END;

                    end;//tk

                }

                action("Refund Voucher")
                {
                    Image = Return;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        RecSO: Record 36;
                    begin
                        /*
                        TESTFIELD("Location Code");
                        RecEINV.RESET;
                        RecEINV.SETRANGE("Document No.","No.");
                        RecEINV.SETRANGE("Vouchr. Integration",TRUE);
                        RecEINV.SETFILTER("Vouchr. Capture id",'<>%1','');
                        IF RecEINV.FINDLAST THEN BEGIN
                        GetVoucher.MapleRefund1("No.","Location Code");
                          "Voucher Amount":=0;
                        END ELSE
                          ERROR('Please check if this voucher is Captured successfully or not from log file');
                          */

                        RecSOO.RESET;
                        RecSOO.SETRANGE("No.", "SO No.");
                        IF RecSOO.FINDFIRST THEN;

                        IF Refund1 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.1");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.1", "Voucher PIN1");
                                "Voucher Amount1" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;

                        IF Refund2 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.2");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.2", "Voucher PIN2");
                                "Voucher Amount2" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;
                        IF Refund3 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.3");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.3", "Voucher PIN3");
                                "Voucher Amount3" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;
                        IF Refund4 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.4");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.4", "Voucher PIN4");
                                "Voucher Amount4" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;
                        IF Refund5 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.5");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.5", "Voucher PIN5");
                                "Voucher Amount5" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;
                        IF Refund6 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.6");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.6", "Voucher PIN6");
                                "Voucher Amount6" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;
                        IF Refund7 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.7");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.1", "Voucher PIN7");
                                "Voucher Amount7" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;
                        IF Refund8 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.8");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.8", "Voucher PIN8");
                                "Voucher Amount8" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;
                        IF Refund9 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.9");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.9", "Voucher PIN9");
                                "Voucher Amount9" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;
                        IF Refund10 = TRUE THEN BEGIN
                            RecEINV.RESET;
                            RecEINV.SETRANGE("Document No.", "SO No.");
                            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
                            RecEINV.SETFILTER("Vouchr. Capture id", '<>%1', '');
                            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.10");
                            IF RecEINV.FINDLAST THEN BEGIN
                                GetVoucher.MapleRefund2("SO No.", RecSOO."Location Code", "Voucher Int. No.10", "Voucher PIN10");
                                "Voucher Amount10" := 0;
                            END ELSE
                                ERROR('Please check if this voucher is Captured successfully or not from log file');
                        END;

                        RecSO.RESET;
                        RecSO.SETRANGE("No.", "SO No.");
                        IF RecSO.FINDFIRST THEN BEGIN
                            RecSO.VALIDATE("Voucher Amount", "Voucher Amount1" + "Voucher Amount2" + "Voucher Amount3" + "Voucher Amount4" + "Voucher Amount5" + "Voucher Amount6" + "Voucher Amount7" + "Voucher Amount8" + "Voucher Amount9" + "Voucher Amount10");
                            RecSO.MODIFY;
                            // MESSAGE('Voucher details updated in SO successfully');
                        END;

                    end;
                }
            }
        }
    }

    trigger OnModifyRecord(): Boolean
    begin
        RecSIVVVV.RESET;
        RecSIVVVV.SETRANGE("Order No.", "SO No.");
        IF RecSIVVVV.FINDFIRST THEN
            ERROR('Not allowed to modify');
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin

        IF "Voucher Int. No.1" <> '' THEN BEGIN

            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.1");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.1");
            END;
        END;

        IF "Voucher Int. No.2" <> '' THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.2");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.2");
            END;
        END;

        IF "Voucher Int. No.3" <> '' THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.3");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.3");
            END;
        END;


        IF "Voucher Int. No.4" <> '' THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);


            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.4");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.4");
            END;
        END;

        IF "Voucher Int. No.5" <> '' THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.5");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.5");
            END;
        END;
        IF "Voucher Int. No.6" <> '' THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);

            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.6");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.6");
            END;
        END;
        IF "Voucher Int. No.7" <> '' THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);

            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.7");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.7");
            END;
        END;
        IF "Voucher Int. No.8" <> '' THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);


            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.8");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.8");
            END;
        END;

        IF "Voucher Int. No.9" <> '' THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);


            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.9");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.9");
            END;
        END;

        IF "Voucher Int. No.10" <> '' THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETCURRENTKEY("Vouchr. Code");
            RecEINV.SETRANGE("Document No.", "SO No.");
            RecEINV.SETRANGE("Vouchr. Integration", TRUE);
            RecEINV.SETFILTER("Vouchr. Code", "Voucher Int. No.10");
            IF RecEINV.FINDLAST THEN BEGIN
                IF RecEINV."Vouchr. Capture id" = '' THEN
                    ERROR('Please check if this voucher is Captured successfully or not from log file %1', "Voucher Int. No.10");
            END;
        END;
    end;

    var
        RecSIH: Record 112;
        GetVoucher: Codeunit 50018;
        RecSH: Record 36;
        RecEINV: Record 50015;
        RecCvouchCust: Record 18;
        RecEINV1: Record 50015;
        RecLoc: Record 14;
        RecSOO: Record 36;
        Amt: Decimal;
        RecSIVVVV: Record 112;

    local procedure VoucherCheck(VoucherN: Text[20])
    begin
        RecSOO.RESET;
        RecSOO.SETRANGE("No.", "SO No.");
        IF RecSOO.FINDFIRST THEN;
        IF RecLoc.GET(RecSOO."Location Code") THEN BEGIN
            IF RecLoc."E-Invoice User ID" = '' THEN
                ERROR('Not allowed to perform for this location');
            IF RecLoc."E-Invoice Password" = '' THEN
                ERROR('Not allowed to perform for this location');
        END;
        IF RecCvouchCust.GET(RecSOO."Sell-to Customer No.") THEN BEGIN
            RecCvouchCust.TESTFIELD("E-Mail");
            RecCvouchCust.TESTFIELD("Phone No.");
        END;

        IF VoucherN <> '' THEN BEGIN
            /*
          RecSIH.RESET;
          RecSIH.SETRANGE("Voucher Int. No.",VoucherN);
          IF RecSIH.FINDFIRST THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETRANGE("Vouchr. Code",VoucherN);
            RecEINV.SETRANGE("Vouchr. Integration",TRUE);
            RecEINV.SETFILTER("Vouchr. Capture id",'<>%1','');
            IF RecEINV.FINDLAST THEN BEGIN
            RecEINV1.RESET;
            RecEINV1.SETRANGE("Vouchr. Code",VoucherN);
            RecEINV1.SETRANGE("Vouchr. Integration",TRUE);
            RecEINV1.SETFILTER("Refund ID",'<>%1','');
            IF NOT RecEINV1.FINDFIRST THEN BEGIN
            ERROR('Input Voucher code is used/Redeemed %1',RecSIH."No.");
          END;END;
           // ERROR('Input Voucher code is used/Redeemed %1',RecSIH."No.");
          END;
          RecSH.RESET;
          RecSH.SETRANGE("Voucher Int. No.",VoucherN);
          IF RecSH.FINDFIRST THEN BEGIN
            RecEINV.RESET;
            RecEINV.SETRANGE("Vouchr. Code",VoucherN);
            RecEINV.SETRANGE("Vouchr. Integration",TRUE);
            RecEINV.SETFILTER("Vouchr. Capture id",'<>%1','');
            IF RecEINV.FINDLAST THEN BEGIN
            RecEINV1.RESET;
            RecEINV1.SETRANGE("Vouchr. Code",VoucherN);
            RecEINV1.SETRANGE("Vouchr. Integration",TRUE);
            RecEINV1.SETFILTER("Refund ID",'<>%1','');
            IF NOT RecEINV1.FINDFIRST THEN BEGIN
            ERROR('Input Voucher code is used/Redeemed %1',RecSH."No.");
          END;END;

          //GetVoucher.GetVoucher("Voucher Int. No.","Location Code");
          END;
          *///29062021
            GetVoucher.GetVoucher(VoucherN, RecSOO."Location Code");//tk
        END;

    end;

    local procedure CheckVouchAmt(VouchAmt: Decimal; VoucherN: Text[20]; VouchPIN: Text[20])
    var
        RecSOH: Record 36;
    begin
        RecSOH.RESET;
        RecSOH.SETRANGE("No.", "SO No.");
        IF RecSOH.FINDFIRST THEN;

        IF VouchAmt <> 0 THEN
            IF (VouchPIN = '') OR (VoucherN = '') THEN
                ERROR('Please check voucher code/pin can not be blank');

        IF VouchAmt <> 0 THEN BEGIN
            IF VouchAmt < 0 THEN
                ERROR('Amount must be positive');

            Amt := GetVoucher.GetVoucherAmt(VoucherN, RecSOH."Location Code");
            IF VouchAmt > Amt THEN
                ERROR('Available amount is %1', Amt);
            GetVoucher.MapleAuth(VouchAmt, VoucherN, VouchPIN, "SO No.", RecSOH."Location Code");
        END;
    end;
}

