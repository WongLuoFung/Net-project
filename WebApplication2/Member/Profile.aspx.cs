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

namespace WebApplication2.Member
{
    public partial class Profile : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                Byte[] bytes = null;
                if (FileUpload1.HasFile)
                {
                    string filename = FileUpload1.PostedFile.FileName;
                    string filePath = Path.GetFileName(filename);

                    Stream fs = FileUpload1.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(fs);
                    bytes = br.ReadBytes((Int32)fs.Length);

                    Label1.Text = "Image Uploaded";
                }

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(
                     "INSERT INTO Image (Id, ImageUpload) " +
                     "Values(@Id, @Image)", connection);

                    command.Parameters.Add("@Id",
                    SqlDbType.NVarChar, 128).Value = User.Identity.GetUserId();

                    command.Parameters.Add("@Image",
                    SqlDbType.Binary).Value = bytes;

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                //error 
            }
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.Parameters["@Id"].Value = User.Identity.GetUserId();
        }

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.Parameters["@Id"].Value = User.Identity.GetUserId();
        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.Parameters["@Id"].Value = User.Identity.GetUserId();
        }
    }
}