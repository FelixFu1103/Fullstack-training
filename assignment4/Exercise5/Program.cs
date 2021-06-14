using System;
using System.Collections.Generic;

namespace Exercise5
{
    class Program
    {
        static void Main(string[] args)
        {
            var customers = CreateCustomers();
            var customerDictionary = new Dictionary<Customer, string>();

            foreach (var c in FindCustomersByCity(customers, "London"))
                Console.WriteLine(c);

            var matches = customerDictionary.FilterBy((customer, lastName) => lastName.StartsWith("A"));
            //The above line runs the query  
            Console.WriteLine("Number of Matches: {0}", matches.Count);
        }

        static List<Customer> FindCustomersByCity(
            List<Customer> customers,
            string city)
        {
            return customers.FindAll(
                delegate (Customer c) {
                    return c.City == city;
                });
        }

        static List<Customer> CreateCustomers()
        {
            return new List<Customer>()
            {
                new Customer { Name = "Hao Fu", City = "ZhenJiang" },
                new Customer { Name = "Felix Aran", City = "London" }
            };
        }


    }
}
