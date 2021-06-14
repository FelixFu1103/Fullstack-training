using System;
namespace Exercise3
{
    public class Menu
    {
        public int Print()
        {
            string[] names = Enum.GetNames(typeof(Options));
            int[] values = (int[])Enum.GetValues(typeof(Options));
            int length = names.Length;
            Console.WriteLine("Weclome to demostic accounting system");
            for (int i = 0; i < length; i++)
            {
                Console.WriteLine($"Press {values[i]} for {names[i]}");
            }
            Console.Write("Enter Your choice => ");
            return Convert.ToInt32(Console.ReadLine());
        }
    }
}
