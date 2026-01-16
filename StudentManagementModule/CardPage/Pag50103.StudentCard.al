namespace NESIS.NESIS;

page 50103 "Student Card"
{
    ApplicationArea = All;
    Caption = 'Student Card';
    PageType = Card;
    SourceTable = Student;

    layout
    {
        area(Content)
        {

            group(GeneralInfo)
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

            }

            part(Subjects; "Student listpart")
            {
                SubPageLink = "Student No" = field("Student No");
            }
            group(contactInfo)
            {
                field("Phone No"; Rec."Phone No")
                {
                    Caption = 'Phone No';
                }
                field("Email"; Rec."Email")
                {
                    Caption = 'Email';
                }
            }
            Group(otherInfo)
            {
                field("Date Of Birth"; Rec."Date Of Birth")
                {
                    Caption = 'Date Of Birth';
                    trigger OnValidate()
                    begin
                        if Rec."Date Of Birth" > Today() then
                            Error('Date of Birth cannot be a future date.');
                    end;


                }
                field(Gender; Rec.Gender)
                {
                    Caption = 'Gender';
                }
                field(Status; Rec.Status)
                {
                    Caption = 'Status';
                }
            }
        }
    }

}

