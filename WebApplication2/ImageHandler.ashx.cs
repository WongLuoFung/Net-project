using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    /// <summary>
    /// Summary description for ImageHandler
    /// </summary>
    public class ImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            System.Data.SqlClient.SqlDataReader rdr = null;
            System.Data.SqlClient.SqlConnection conn = null;
            System.Data.SqlClient.SqlCommand selcmd = null;
            try
            {
                conn = new System.Data.SqlClient.SqlConnection
              (System.Configuration.ConfigurationManager.ConnectionStrings
              ["DefaultConnection"].ConnectionString);
                selcmd = new System.Data.SqlClient.SqlCommand
              ("select ImageUpload from Image where ImageId=" +
              context.Request.QueryString["ImageId"], conn);
                conn.Open();
                rdr = selcmd.ExecuteReader();
                while (rdr.Read())
                {
                    context.Response.ContentType = "image/jpg";
                    context.Response.BinaryWrite((byte[])rdr["ImageUpload"]);
                }
                if (rdr != null)
                    rdr.Close();
            }
            finally
            {
                if (conn != null)
                    conn.Close();
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}