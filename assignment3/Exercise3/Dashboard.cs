using System;

using System.Collections.Generic;
using System.Text;

namespace Exercise3
{
    class Dashboard
    {
        public static void Run()
        {
            Menu m = new Menu();
            int choice = m.Print();

            switch (choice)
            {
                default:
                    break;
                case (int)Options.Add:
                    Operation.Add(Console.ReadLine());
                    break;
                case (int)Options.Delete:
                    Operation.DeleteData();
                    break;
                case (int)Options.Modify:
                    Operation.ModifyTab();
                    break;
                case (int)Options.Normalization:
                    Operation.NormalizeDescriptions();
                    break;
                case (int)Options.Search:
                    Console.WriteLine("Enter the keyword you want to search：");
                    Operation.ShowExpensesByCategory(Console.ReadLine());
                    break;
                case (int)Options.Show:
                    Console.WriteLine("Enter the Category you want to search：");
                    Operation.ShowExpenseByText(Console.ReadLine());
                    break;
                case (int)Options.Sort:
                    Operation.SortData();
                    break;
            }
        }
        
}
}
