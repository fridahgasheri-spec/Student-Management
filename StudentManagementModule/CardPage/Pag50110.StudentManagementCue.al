namespace NESIS.NESIS;

page 50110 "Student Management cue"
{
    ApplicationArea = All;
    Caption = 'Student Management Cue';
    PageType = CardPart;
    SourceTable = "Student management Cue";
    Editable = false;

    layout
    {
        area(Content)
        {
            cuegroup(overview)
            {
                field("Total Students"; Rec."Total Students")
                {
                    Caption = 'Total Students';
                    DrillDownPageId = "Student List";
                }
                field("Total Courses"; Rec."Total Courses")
                {
                    Caption = 'Total Courses';
                    DrillDownPageId = "Course List";
                }
                field("Total Enrollments"; Rec."Total Enrollments")
                {
                    Caption = 'Active Enrollments';
                    DrillDownPageId = "Student Enrollment List";

                }
            }
        }
    }
    trigger OnOpenPage()
    var
        StudentRec: Record Student;
        CourseRec: Record Course;
        EnrollmentRec: Record "Student Enrollment";
    begin
        // Ensure one cue record exists
        if not rec.Get('CUE') then begin
            rec.Init();
            rec."Primary Key" := 'CUE';
            rec.Insert();
        end;
        StudentRec.Reset();
        CourseRec.Reset();
        EnrollmentRec.Reset();
        // Populate values
        rec."Total Students" := StudentRec.Count();
        rec."Total Courses" := CourseRec.Count();
        rec."Total Enrollments" := EnrollmentRec.Count();

        Rec.Modify();
    end;
}

