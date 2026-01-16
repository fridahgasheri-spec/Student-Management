namespace NESIS.NESIS;

page 50111 "Student listpart"
{
    ApplicationArea = All;
    Caption = 'Student listpart';
    SourceTable = Subjects;
    PageType = ListPart;
    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field("Subject No"; Rec."Subject No")
                {
                    Caption = 'Subject No';
                }
                field("Subject Name"; Rec."Subject Name")
                {
                    Caption = 'Name';
                }
                field(Grade; Rec.Grade)
                {
                    Caption = 'Grade';
                }
            }
        }
    }
}