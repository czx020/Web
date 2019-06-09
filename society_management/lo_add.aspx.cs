using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class lo_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sf = Request.QueryString["sfid"].ToString();
        string jk = "享受低保";

        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("../mydatabase.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        string str_sql = "update 低保管理 set 是否享受低保='" + jk + "'  where db_id =(select 居民信息.db_id from (居民信息 inner join 低保管理 on 居民信息.db_id=低保管理.db_id) where 身份证号 ='" + sf + "' ) ";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            Response.Write("更改失败");
        }

            cnn.Close();

    }
}