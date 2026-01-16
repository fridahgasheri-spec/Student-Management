namespace NESIS.NESIS;

page 50105 "Course List"
{
    ApplicationArea = All;
    Caption = 'Courses';
    PageType = List;
    SourceTable = Course;
    UsageCategory = Lists;
    CardPageId = "Course Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Course Code"; Rec."Course Code")
                {
                    Caption = 'Course Code';
                }
                field("Course Name"; Rec."Course Name")
                {
                    Caption = 'Course Name';
                }
                field(Department; Rec.Department)
                {
                    Caption = 'Department';
                }
                field("Duration"; Rec."Duration")
                {
                    Caption = 'Duration';
                }
                field(Status; Rec.Status)
                {
                    Caption = 'Status';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }
            }
        }
    }
}