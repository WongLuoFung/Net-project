using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
     
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "Images/" + ddl1.SelectedItem.ToString() + ".jpg";
            Label1.Text = String.Empty;
            Label2.Text = String.Empty;
            Label3.Text = String.Empty;
            Label4.Text = String.Empty;
            Label5.Text = String.Empty;
            Label6.Text = String.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Quantity
            int qty = int.Parse(txtQty.Text);

            if (qty > 0 && qty < 6)
            {
                Label1.Text = ddl1.SelectedItem.Text + " (RM " + ddl1.Text + " per unit)";
                Label2.Text = txtQty.Text + " units";
                Label3.Text = rbl1.SelectedItem.Text;
                Label6.Text = Email.Text;

                //Calculate Total Decoration Price
                double decoration = 0;
                foreach (ListItem Cake in cbl1.Items)
                {
                    if (Cake.Selected)
                    {
                        double sumDec = 0;
                        if (double.TryParse(Cake.Value, out sumDec))
                        {
                            decoration += sumDec;
                        }
                        else
                        {
                            decoration = 0;
                        }
                        Label4.Text += Cake.Text + ", ";
                    }
                }

                //Price Flavor
                double flavor = double.Parse(ddl1.SelectedValue);

                //Topping
                double topping = double.Parse(rbl1.SelectedValue);

                //Total = ((flavor + topping) + decoration) * quantity
                double total = (flavor + topping + decoration) * qty;
                Label5.Text = "RM " + string.Format("{0:0.00}", total);

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(
                     "INSERT INTO [Order] (Id, OrderEmail, Flavor, Quantity, Topping, Decoration, TotalPrice) " +
                     "Values(@Id, @orderemail, @flavor, @quantity, @topping, @decoration, @totalprice)", connection);

                    command.Parameters.Add("@Id",
                    SqlDbType.NVarChar, 128).Value = User.Identity.GetUserId();
                    command.Parameters.AddWithValue("@orderemail", Label6.Text);
                    command.Parameters.AddWithValue("@flavor", Label1.Text);
                    command.Parameters.AddWithValue("@quantity", Label2.Text);
                    command.Parameters.AddWithValue("@topping", Label3.Text);
                    command.Parameters.AddWithValue("@decoration", Label4.Text);
                    command.Parameters.AddWithValue("@totalprice", Label5.Text);



                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }


            }
            else
            { }
        }

    }
}
