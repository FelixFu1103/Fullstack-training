using System;
namespace Exercise1
{
    class Rectangle : Shape1
    {

        public float Length;
        public float Breadth;

        public Rectangle()
        {
            L = Length;
            B = Breadth;
        }
        

        public void GetInput()
        {
            Console.Write("Enter the Length: ");
            Length = float.Parse(Console.ReadLine());
            Console.Write("Enter the Breadth: ");
            Breadth = float.Parse(Console.ReadLine());
        }

        public override float Area()
        {
                
            return Length * Breadth; 
        }

        public override float Circumference()
        {

            return 2 * (Length + Breadth);
        }
    }
}
