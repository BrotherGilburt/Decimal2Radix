using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Decimal2Radix
{
    public class Decimal2Radix
    {
        public static String RadixConvert(int decNum, int radix)
        {
            String radNum = "";
            int digit = 0;
            char next = ' ';

            while (decNum > 0)
            {
                digit = decNum % radix;
                decNum = decNum / radix;

                if (digit < 10)
                {
                    next = (char)(digit + 48);
                }
                else if (digit < 36)
                {
                    next = (char)(digit + 55);
                }

                radNum = next + radNum;
            }
            
            return radNum;
        }
    }
}
