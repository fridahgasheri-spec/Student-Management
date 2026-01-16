namespace NESIS.NESIS;

page 50102 "Student List"
{
    ApplicationArea = All;
    Caption = 'Student List';
    PageType = List;
    SourceTable = Student;
    UsageCategory = Lists;
    CardPageId = "Student Card";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Student No"; Rec."Student No")
                {
                    Caption = 'Student No';
                }
                field("First Name"; Rec."First Name")
                {
                    Caption = 'First Name';
                }
                field("Last Name"; Rec."Last Name")
                {
                    Caption = 'Last Name';
                }
                field("Date Of Birth"; Rec."Date Of Birth")
                {
                    Caption = 'Date Of Birth';
                }
                field(Gender; Rec.Gender)
                {
                    Caption = 'Gender';
                }
                field(Status; Rec.Status)
                {
                    Caption = 'Status';
                }
                field("Phone No"; Rec."Phone No")
                {
                    Caption = 'Phone No';
                }
                field("Email"; Rec."Email")
                {
                    Caption = 'Email';
                }
            }
        }
    }
}
