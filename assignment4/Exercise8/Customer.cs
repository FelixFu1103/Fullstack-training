using System;
namespace Exercise8
{
    public class Customer
    {
        public string Name { get; set; }
        public string City { get; set; }
        public int CustomerID { get; set; }
        public override string ToString()
        {
            return Name + "\t" + City;
        }
    }
}
