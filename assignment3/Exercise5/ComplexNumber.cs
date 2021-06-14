using System;
namespace Exercise5
{
    public class ComplexNumber
    {
        int real, imaginary;

        public ComplexNumber(int r, int i)
        {
            real = r;
            imaginary = i;
        }

        public void SetImaginary(int i)
        {
            imaginary = i;
        }

        public double GetMagnitude()
        {
            return Math.Sqrt(Math.Pow(real, 2) + Math.Pow(imaginary, 2));
        }

        public string ToString()
        {
            return "(" + Convert.ToString(real) + "," + Convert.ToString(imaginary) + ")";
        }

        public void Add(ComplexNumber num)
        {
            real += num.real;
            imaginary += num.imaginary;
        }
    }
}
