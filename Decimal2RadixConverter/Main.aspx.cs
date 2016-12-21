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
            FillRepeater(false);
        }

        protected void convertButton_Click(object sender, EventArgs e)
        {
            if (!ValueBox.Text.Equals(String.Empty))
                FillRepeater(true);
        }

        protected void ValueBox_TextChanged(object sender, EventArgs e)
        {

        }

        public class DataRow
        {
            public  String label { get;}
            public String number { get;}

            public DataRow(String label, String number)
            {
                this.label = label;
                this.number = number;
            }
        }

        protected void FillRepeater(bool  isInput)
        {
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

        protected void DataTableRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
        }
    }
}