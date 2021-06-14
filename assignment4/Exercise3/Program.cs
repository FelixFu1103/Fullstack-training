using System;
using System.Collections.Generic;

namespace Exercise3
{
    class Program
    {
        static void VarTest()
        {
            var i = 43;

            var s = "...This is only a test...";

            var numbers = new int[] { 4, 9, 16 };

            var complex =
                new SortedDictionary<string, List<DateTime>>();
        }

        static List<Customer> CreateCustomers()
        {
            return new List<Customer>()
            {
                new Customer { Name = "Juan" },
                new Customer { Name = "Hao" }
            };
        }


        static void Main(string[] args)
        {
            var customers = CreateCustomers();

            Console.WriteLine("Customers:\n");
            foreach (Customer c in customers)
                Console.WriteLine(c);

        }
        
    }
}
