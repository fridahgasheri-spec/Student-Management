namespace NESIS.NESIS;

enum 50101 "Student Status"
{
    Extensible = true;
    Caption = 'Student Status';

    value(0; Active) { Caption = 'Active'; }
    value(1; Suspended) { Caption = 'Suspended'; }
    value(2; Graduated) { Caption = 'Graduated'; }
}