tableextension 50040 "Transfer Recepit Line Table" extends "Transfer Receipt Line"
{
    fields
    {
        field(50002; "Primary category"; Code[20])
        {
            TableRelation = "Standard Text" WHERE("Category Type" = CONST(Primary));
        }
        field(50003; "Secondary category"; Code[20])
        {
            TableRelation = "Standard Text" WHERE("Category Type" = CONST(Secondary));
        }
        field(50004; "Third category"; Code[20])
        {
            TableRelation = "Standard Text" WHERE("Category Type" = CONST(Third));
        }
        field(50005; "UPN Code"; Code[20])
        {
        }
    }
}
