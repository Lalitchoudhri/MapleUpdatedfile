page 50127 "Ingram User Role Center"
{
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(General)
            {
            }
            group(Same)
            {
                systempart(MyNotes; MyNotes)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(embedding)
        {
            action(PurchaseOrders)
            {
                Caption = 'Purchase Orders';
                RunObject = Page 9307;
                ApplicationArea = All;
            }
        }
    }
}

