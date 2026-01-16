table 50105 "Student Enrollment"
{
    Caption = 'Student Enrollment';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "StudentNo"; Code[20])
        {
            Caption = 'Student No.';
            TableRelation = Student;

            trigger
            OnValidate()
            var
                EnrollmentRec: Record "Student Enrollment";

            begin
                EnrollmentRec.Reset();
                EnrollmentRec.SetRange("StudentNo", "StudentNo");
                EnrollmentRec.SetRange("Course Code", "Course Code");
                if EnrollmentRec.FindFirst() then
                    Error('The student %1 is already enrolled in this course. %2', "StudentNo", "Course Code");

            end;
        }

        field(2; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
            TableRelation = Course."Course Code";

            trigger
            OnValidate()
            begin
                Validate("StudentNo");
            end;
        }

        field(3; "Enrollment Date"; Date)
        {
            Caption = 'Enrollment Date';
        }

        field(4; "Status"; Enum "Enrolment Status")
        {
            Caption = 'Status';

        }
        field(5; "Enrollment No"; Integer)
        {
            Caption = 'Enrollment No';
            AutoIncrement = true;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Enrollment No")
        {
            Clustered = true;
        }
        key(StudentCourseUnique; "StudentNo", "Course Code")
        {
            Unique = true;
        }
    }

    trigger OnInsert()
    var
        EnrollmentRec: Record "Student Enrollment";
    begin
        //Default Enrollment Date to Today if not set
        if "Enrollment Date" = 0D then
            "Enrollment Date" := Today;

    end;
}
