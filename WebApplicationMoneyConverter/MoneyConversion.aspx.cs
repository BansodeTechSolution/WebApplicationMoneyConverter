using System;
using System.Collections.Generic;

namespace WebApplicationMoneyConverter
{
    public partial class MoneyConversion:System.Web.UI.Page
    {
        protected void Page_Load(object sender,EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender,EventArgs e)
        {
            decimal amount= Convert.ToDecimal(txtAmount.Text);
            string fromCurrency= ddlFromCurrency.SelectedValue;
            string toCurrency = ddlToCurrency.SelectedValue;
            decimal convertedAmount = ConvertCurrency(amount, fromCurrency, toCurrency);

            lblResult.Text = $"{amount} {fromCurrency}= {convertedAmount} {toCurrency}";
        }

        private decimal ConvertCurrency(decimal amount,string fromCurrency,string toCurrency)
        {
            Dictionary<string, decimal> RateToUsd = new Dictionary<string,decimal>()
            {
                {"USD" ,1m},
                {"INR" ,0.012m},
                {"EUR" ,1.10m}
            };
            decimal inUSD= amount * RateToUsd[fromCurrency];
            decimal convertedAmount = inUSD / RateToUsd[toCurrency];

            return convertedAmount;
        }
    }
}