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
    public partial class Contact : Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = string.Empty;
        }

        protected void csubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(
                 "INSERT INTO [contact] (Id, MessageEmail, Name, Subject, Message) " +
                 "Values(@Id, @messageemail, @name, @subject, @message)", connection);

                command.Parameters.Add("@Id",
                SqlDbType.NVarChar, 128).Value = User.Identity.GetUserId();
                command.Parameters.AddWithValue("@messageemail", temail.Text);
                command.Parameters.AddWithValue("@name", tname.Text);
                command.Parameters.AddWithValue("@subject", tsubject.Text);
                command.Parameters.AddWithValue("@message", tmessage.Text);


                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();

                Label1.Text = "Your Message are submit";
            }
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            tname.Text = string.Empty;
            temail.Text = string.Empty;
            tsubject.Text = string.Empty;
            tmessage.Text = string.Empty;
        }
    }
}