using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class user_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name   =   TextBox1.Text;
        string xingbie   =   TextBox2.Text;
        string age   =   TextBox3.Text;
        string id_number   =   TextBox4.Text;
        string call   =   TextBox5.Text;
        string wenhua = DropDownList6.SelectedItem.ToString();
        string hy = DropDownList7.SelectedItem.ToString();
        string health = DropDownList8.SelectedItem.ToString();

        string cj = DropDownList5.SelectedValue.ToString();
        string sfxg = DropDownList1.SelectedValue.ToString();
        string xg = DropDownList2.SelectedValue.ToString();
        string sg = DropDownList3.SelectedValue.ToString();
        string db = DropDownList4.SelectedValue.ToString();
        string mima = "1";
        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("./mydatabase.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        string str_sql = "insert into 居民信息 (姓名,性别,年龄,身份证号,联系电话,文化程度,婚姻状况,健康状况,cj_id,sfxg_id,xg_id,sg_id,db_id,密码) values ('" + name + "','" + xingbie + "','" + age + "','" + id_number + "','" + call + "','" + wenhua + "','" + hy + "','" + health + "','" + cj + "','" + sfxg + "','" + xg + "','" + sg + "','" + db + "','"+mima+"') ";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script>alert('添加成功')</script>");
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            Response.Write("更改失败");

            cnn.Close();

        }


    }
}