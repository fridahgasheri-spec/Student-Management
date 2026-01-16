table 50106 "Student management Cue"
{
    Caption = 'Student management Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; "Total Students"; Integer)
        {
            Caption = 'Total Students';
        }
        field(3; "Total Courses"; Integer)
        {
            Caption = 'Total Courses';
        }
        field(4; "Total Enrollments"; Integer)
        {
            Caption = 'Total Enrollments';
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
