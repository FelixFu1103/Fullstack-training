using System;
namespace Exercise4
{
    public class StudentAndTeacherTest
    {
        static void Main(string[] args)
        {
            Person p = new Person();    
            p.SayHello();

            Student s = new Student();
            s.SetAge(21);
            s.SayHello();
            s.ShowAge();

            Teacher t = new Teacher();
            t.SetAge(30);
            t.SayHello();
            t.Explain();
        }
    }
}
