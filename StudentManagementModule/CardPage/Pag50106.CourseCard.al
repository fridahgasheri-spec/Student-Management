namespace NESIS.NESIS;

page 50106 "Course Card"
{
    ApplicationArea = All;
    Caption = 'Course Card';
    PageType = Card;
    SourceTable = Course;

    layout
    {
        area(Content)
        {
            group(General)
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
