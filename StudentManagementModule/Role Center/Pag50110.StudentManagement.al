page 50122 "Student Management RC"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    Caption = 'Student Management Role Center';

    layout
    {
        area(rolecenter)
        {

            part(cues; "Student Management cue")
            {
                ApplicationArea = all;
            }

        }
    }

    actions
    {
        area(Sections)
        {
            group(Students)
            {
                action(StudentList)
                {
                    Caption = 'Students';
                    RunObject = Page "Student List";
                    ApplicationArea = all;
                }

                action(CourseList)
                {
                    Caption = 'Courses';
                    RunObject = Page "Course List";
                    ApplicationArea = all;
                }

                action(EnrollmentList)
                {
                    Caption = 'Enrollments';
                    RunObject = Page "Student Enrollment List";
                    ApplicationArea = all;
                }
            }
            group(setups)
            {
                action(StudentSetup)
                {
                    Caption = 'Student Setup';
                    RunObject = Page "Student Setup";
                    ApplicationArea = all;
                }

                action(CourseSetup)
                {
                    Caption = 'Course Setup';
                    RunObject = Page "Course Setup";
                    ApplicationArea = all;
                }

            }
        }
    }
}
profile "Student Management"
{
    Caption = 'Student Management';
    RoleCenter = "Student Management RC";
}