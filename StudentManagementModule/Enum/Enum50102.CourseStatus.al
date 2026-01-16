namespace NESIS.NESIS;

enum 50102 "Course Status"
{
    Extensible = true;
    Caption = 'Course Status';
    value(0; Active) { Caption = 'Active'; }
    value(1; Inactive) { Caption = 'Inactive'; }
    value(2; Completed) { Caption = 'Completed'; }

}
