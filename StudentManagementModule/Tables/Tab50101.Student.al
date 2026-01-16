table 50101 Student
{
    Caption = 'Student';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Student No"; Code[20])
        {
            Caption = 'Student No.';
            DataClassification = CustomerContent;
        }

        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
            DataClassification = CustomerContent;
        }

        field(3; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = CustomerContent;
        }

        field(4; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
            DataClassification = CustomerContent;
        }

        field(5; Gender; Enum "Student Gender")
        {
            Caption = 'Gender';
            DataClassification = CustomerContent;
        }

        field(6; "Phone No"; Text[20])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
        }

        field(7; Email; Text[80])
        {
            Caption = 'Email';
            DataClassification = CustomerContent;
        }

        field(8; Status; Enum "Student Status")
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }

        field(9; "No Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = SystemMetadata;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Student No")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Student No", "First Name", "Last Name")
        {
        }
    }

    trigger OnInsert()
    begin
        // Set default status
        Status := Status::Active;

        // Auto-generate Student No. using No. Series
        if "Student No" = '' then begin
            StudentSetup.Get();
            StudentSetup.TestField("Student No");

            "Student No" := "Noseries".GetNextNo(StudentSetup."Student No", WorkDate(), true);

            "No Series" := StudentSetup."Student No";
        end;
    end;

    var
        NoSeries: Codeunit "No. Series";
        StudentSetup: Record "Student Setup";
}
