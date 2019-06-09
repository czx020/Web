using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class UserDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string id_number = Request.QueryString["sf"].ToString();
        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("./mydatabase.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;
        string str_sql = "SELECT 是否下岗.是否下岗, 居民信息.姓名, 居民信息.性别, 居民信息.身份证号, 居民信息.年龄, 居民信息.联系电话, 居民信息.文化程度, 居民信息.婚姻状况, 居民信息.健康状况, 下岗管理.下岗时间, 下岗管理.保障金, 上岗培训记录.是否上岗培训, 低保管理.是否享受低保 FROM (((((是否下岗 INNER JOIN 居民信息 ON 是否下岗.sfxg_id = 居民信息.sfxg_id) INNER JOIN 下岗管理 ON 居民信息.xg_id = 下岗管理.xg_id) INNER JOIN 上岗培训记录 ON 居民信息.sg_id = 上岗培训记录.sg_id) INNER JOIN 低保管理 ON 居民信息.db_id = 低保管理.db_id) INNER JOIN 残疾人管理 ON 居民信息.cj_id = 残疾人管理.cj_id) where 居民信息.身份证号='" + id_number + "'";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read())
        {
            Label1.Text = datar["姓名"].ToString();
            Label2.Text = datar["性别"].ToString();
            Label3.Text = datar["年龄"].ToString();
            Label4.Text = datar["身份证号"].ToString();
            TextBox5.Text = datar["联系电话"].ToString();
            TextBox1.Text = datar["文化程度"].ToString();
            TextBox2.Text = datar["婚姻状况"].ToString();
            DropDownList8.SelectedItem.Text = datar["健康状况"].ToString();
            //DropDownList1.SelectedItem.Text = datar["是否下岗.是否下岗"].ToString();
            //DropDownList5.SelectedItem.Text = datar["残疾人管理.是否残疾人"].ToString();
            //DropDownList3.SelectedItem.Text = datar["上岗培训记录.是否上岗培训"].ToString();
            //DropDownList4.SelectedItem.Text = datar["低保管理.是否享受低保"].ToString();
        }
        cnn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = Label1.Text;
        string xingbie = Label2.Text;
        string age = Label3.Text;
        string id_number = Request.QueryString["sf"].ToString();
        string call = TextBox5.Text;
        string wenhua = TextBox1.Text;
        string hy = TextBox2.Text ;
        string health = DropDownList8.SelectedValue.ToString();

        string cj = DropDownList5.SelectedValue.ToString();
        string sfxg = DropDownList1.SelectedValue.ToString();
        string xg = DropDownList2.SelectedValue.ToString();
        string sg = DropDownList3.SelectedValue.ToString();
        string db = DropDownList4.SelectedValue.ToString();




        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("./mydatabase.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        string str_sql = "update 居民信息 set 婚姻状况='"+hy+"',cj_id='"+cj+"',db_id='"+db+"', sfxg_id='" + sfxg + "' ,xg_id = '" + xg + "',sg_id = '" + sg + "' where 身份证号='" + id_number + "'";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("更改成功");
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            Response.Write("更改失败");

            cnn.Close();

        }
    }
}