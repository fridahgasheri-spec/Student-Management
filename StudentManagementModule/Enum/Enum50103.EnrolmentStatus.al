namespace NESIS.NESIS;

enum 50103 "Enrolment Status"
{
    Extensible = true;
    Caption = 'Enrolment Status';
    value(0; Enrolled) { Caption = 'Enrolled'; }
    value(1; Dropped) { Caption = 'Dropped'; }
    value(2; Completed) { Caption = 'Completed'; }

}
