using System;
using System.Collections.Generic;
using System.Windows.Forms;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Decimal2RadixConverter
{
    using Decimal2Radix;

    public partial class Main : System.Web.UI.Page
    {
        private int counter = 0;

        /// <summary>
        /// Fills the repeater on page load.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            FillRepeater(false);
        }

        protected void convertButton_Click(object sender, EventArgs e)
        {
            int discard = 0;
            if (Int32.TryParse(ValueBox.Text, out discard))
            {
                InvalidInputLabel.Visible = false;
                FillRepeater(true);
            }
            else
            {
                ValueBox.Text = String.Empty;
                FillRepeater(false);
                InvalidInputLabel.Visible = true;
            }
        }

        protected void ValueBox_TextChanged(object sender, EventArgs e)
        {
            if(ValueBox.Text.Equals(String.Empty))
            {
                InvalidInputLabel.Visible = false;
            }
        }

        public class DataRow
        {
            public String label { get;}
            public String number { get;}

            public DataRow(String label, String number)
            {
                this.label = label;
                this.number = number;
            }
        }

        protected void FillRepeater(bool  isInput)
        {
            counter = 0;
            List<DataRow> radixData = new List<DataRow>();

            if(isInput)
            {
                int input = Convert.ToInt32(ValueBox.Text);
                for (int i = 2; i <= 16; i++)
                {
                    radixData.Add(new DataRow("Base " + i, Decimal2Radix.RadixConvert(input, i)));
                }
            }
            else
            {
                for (int i = 2; i <= 16; i++)
                {
                    radixData.Add(new DataRow("Base " + i, ""));
                }
            }

            DataTableRepeater.DataSource = radixData;
            DataTableRepeater.DataBind();            
        }

        protected String getRowColor()
        {
            if (counter % 2 == 0)
            {
                counter++;
                return "background-color: #e5e6eb";
            }
            counter++;
            return "background-color: white";
        }
    }
}