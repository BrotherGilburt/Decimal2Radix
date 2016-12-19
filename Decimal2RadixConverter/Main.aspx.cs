using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Decimal2RadixConverter
{
    using Decimal2Radix;

    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void convertButton_Click(object sender, EventArgs e)
        {
            this.radix2.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 2);
            this.radix3.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 3);
            this.radix4.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 4);
            this.radix5.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 5);
            this.radix6.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 6);
            this.radix7.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 7);
            this.radix8.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 8);
            this.radix9.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 9);
            this.radix10.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 10);
            this.radix11.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 11);
            this.radix12.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 12);
            this.radix13.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 13);
            this.radix14.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 14);
            this.radix15.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 15);
            this.radix16.Text = Decimal2Radix.RadixConvert(Convert.ToInt32(ValueBox.Text), 16);
        }
    }
}