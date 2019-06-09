using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class recovered : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sf = Request.QueryString["sfid"].ToString();
        string jk = "正常";

        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("../mydatabase.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        string str_sql = "update 居民信息 set 健康状况='" + jk + "'  where 身份证号='" + sf + "'  ";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Redirect("Resident health.aspx");
        }
        else
        {
            Response.Write("更改失败");
        }

            cnn.Close();

    }
}