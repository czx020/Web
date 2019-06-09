using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class laid_off_worker_imformation_change : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sf = Request.QueryString["shenfenid"].ToString();
        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("./mydatabase.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;
        string str_sql = "select  *  from  居民信息  where  身份证号 = '"+ sf +"' ";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read())
        {
            L_1.Text = datar["姓名"].ToString();
        }
        cnn.Close();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sf = Request.QueryString["shenfenid"].ToString();
        string sg = DropDownList3.SelectedValue.ToString();
        string xg = DropDownList2.SelectedValue.ToString();
        string sfxg = DropDownList1.SelectedValue.ToString();

        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/mydatabase.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        string str_sql = "update 居民信息 set sfxg_id='"+ sfxg +"' ,xg_id = '" + xg + "',sg_id = '" + sg + "' where 身份证号='" + sf + "'";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("更改成功");
            Response.Redirect("laid-off worker.aspx");
        }
        else
        {
            Response.Write("更改失败");

            cnn.Close();

        }
    }
}