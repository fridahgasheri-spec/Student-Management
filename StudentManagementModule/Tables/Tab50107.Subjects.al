table 50107 Subjects
{
    Caption = 'Subjects';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Subject No"; Code[30])
        {
            Caption = 'Subject No';
        }
        field(2; "Subject Name"; Text[30])
        {
            Caption = 'Subject Name';
        }
        field(3; Grade; Code[30])
        {
            Caption = 'Grade';
            DataClassification = ToBeClassified;
        }
        field(4; "Student No"; code[30])
        {
            Caption = 'Students No';
        }
    }
    keys
    {
        key(PK; "Subject No")
        {
            Clustered = true;
        }
    }
}
