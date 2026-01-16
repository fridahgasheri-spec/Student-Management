namespace NESIS.NESIS;

page 50109 "Student Enrollment Card"
{
    ApplicationArea = All;
    Caption = 'Student Enrollment Card';
    PageType = Card;
    SourceTable = "Student Enrollment";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("StudentNo"; Rec."StudentNo") { }
                field("Course Code"; Rec."Course Code") { }
                field("Enrollment Date"; Rec."Enrollment Date") { }
                field(Status; Rec.Status) { }
                Field("Enrollment No"; Rec."Enrollment No") { }
            }
        }
    }
}
