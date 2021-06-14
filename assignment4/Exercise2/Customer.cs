using System;
namespace Exercise2
{
    public class Customer
    {
        public int CustomerID { get; private set; }
        public string Name { get; set; }
        public string City { get; set; }


        public Customer(int ID)
        {
            CustomerID = ID;
        }


        public override string ToString()
        {
            return Name + "\t" + City + "\t" + CustomerID;
        }

    }
}
