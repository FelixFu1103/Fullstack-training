using System;
namespace Exercise1
{
    class Circle : Shape1
    {
        public float Radius;
        float Pi = MathF.PI;

        public Circle()
        {
            R = Radius;
        }

        public void GetInput()
        {
            Console.Write("Enter the Radius: ");
            Radius = float.Parse(Console.ReadLine());
        }

        public override float Area()
        {
            return Pi * Radius * Radius;
        }

        public override float Circumference()
        {
            return 2 * Pi * Radius;
        }
    }
}
