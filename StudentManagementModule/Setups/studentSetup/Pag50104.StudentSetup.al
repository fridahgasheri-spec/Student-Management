namespace NESIS.NESIS;

page 50112 "Student Setup"
{
    ApplicationArea = All;
    Caption = 'Student Setup';
    PageType = Card;
    SourceTable = "Student Setup";
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Student No"; Rec."Student No")
                {
                    Caption = 'Student No';

                }
            }
        }
    }
}

