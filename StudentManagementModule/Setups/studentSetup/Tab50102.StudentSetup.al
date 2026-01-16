table 50102 "Student Setup"
{
    Caption = 'Student Setup';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';

        }
        field(2; "Student No"; Code[20])
        {
            Caption = 'Student No';
            TableRelation = "No. Series";

        }
    }
    keys
    {
        key(key1; "Primary Key")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin

    end;
}
