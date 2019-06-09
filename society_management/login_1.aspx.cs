using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class login_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sf = TextBox1.Text;
        string mima = TextBox2.Text;



        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("./mydatabase.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;
        string str_sql = "select  *  from  居民信息 where 身份证号 ='" + sf + "'";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read())
        {
            string id_num = datar["身份证号"].ToString();
            string id_pwd = datar["密码"].ToString();
            if (id_num == sf & id_pwd == mima)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误，请重新登录')</script>");
            }
        }
        cnn.Close();
        
    }
}