using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Decimal2RadixConsole
{
    using Decimal2Radix;

    class Program
    {
        static void Main(string[] args)
        {
            int decNum = 0;
            int radix = 0;

        Start:
            Console.Write("Enter a decimal number: ");
            decNum = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter a radix: ");
            radix = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine(decNum + " (base 10) = " + Decimal2Radix.RadixConvert(decNum, radix) + " (base " + radix + ")");

            goto Start;
        }
    }
}
