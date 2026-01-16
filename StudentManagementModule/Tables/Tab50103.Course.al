table 50103 Course
{
    Caption = 'Course';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
        }
        field(2; "Course Name"; Text[50])
        {
            Caption = 'Course Name';
        }
        field(3; Department; Text[50])
        {
            Caption = 'Department';
        }
        field(4; "Duration"; Integer)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(5; Status; Enum "Course Status")
        {
            Caption = 'Status';
        }
        field(6; Description; Text[300])
        {
            Caption = 'Description';
        }
        field(7; "No Series"; Code[20])
        {
            Caption = 'No Series';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Course Code")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Course Code", "Course Name", "Department")
        { }
    }
    trigger OnInsert()
    begin
        // Set default status
        Status := Status::Active;

        // Auto-generate Course Code using No. Series
        if "Course Code" = '' then begin
            CourseSetup.Get();
            CourseSetup.TestField("Course No");

            "Course Code" := "Noseries".GetNextNo(CourseSetup."Course No", WorkDate(), true);

            "No series" := CourseSetup."Course No";
        end;
    end;

    var
        Noseries: Codeunit "No. Series";
        CourseSetup: Record "Course Setup";
}
