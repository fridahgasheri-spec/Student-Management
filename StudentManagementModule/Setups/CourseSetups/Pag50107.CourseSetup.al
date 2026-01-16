namespace NESIS.NESIS;

page 50107 "Course Setup"
{
    ApplicationArea = All;
    Caption = 'Course Setup';
    PageType = Card;
    SourceTable = "Course Setup";
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Course No"; Rec."Course No")
                {
                    Caption = 'Course No';

                }
            }
        }
    }
}
