using System;
namespace Exercise4
{
    public class Person
    {
        public Person()
        {
        }

        int age;

        public void SayHello()
        {
            Console.WriteLine("Hello");
        }

        public void SetAge(int age)
        {
            this.age = age;
        }

        public int GetAge()
        {
            return age;
        }

        public void ShowAge()
        {
            Console.WriteLine($"My age is: {GetAge()} years old.");
        }
    }
}
