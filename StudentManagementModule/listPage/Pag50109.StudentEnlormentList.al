namespace NESIS.NESIS;

page 50120 "Student Enrollment List"
{
    PageType = List;
    SourceTable = "Student Enrollment";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Student Enrollment List';
    CardPageId = "Student Enrollment Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("StudentNo"; Rec."StudentNo")
                {
                    ApplicationArea = All;
                }
                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = All;
                }
                field("Enrollment Date"; Rec."Enrollment Date")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                Field("Enrollment No"; Rec."Enrollment No")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

