using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class volunteer_management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string z_number = T_1.Text;
        string z_name = T_2.Text;
        string z_prj = T_3.Text;
        string z_time = T_4.Text;
        string z_time_1 = z_time + "小时";
        int ab = Convert.ToInt32(z_time);
        string z_xj="";
        if (ab>0&ab<=100)
        {
            z_xj = "一星";
        }
        if (ab >= 100&ab<150)
        {
            z_xj = "二星";
        }
        if (ab >= 150 & ab < 200)
        {
            z_xj = "三星";
        }
        if (ab >= 200 & ab < 300)
        {
            z_xj = "三星";
        }
        if (ab >= 300)
        {
            z_xj = "五星";
        }
        else
        {
            Response.Write("请重新输入");
        }
        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("./mydatabase.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        string str_sql = "insert into 志愿者信息 (志愿者编号,志愿者姓名,志愿项目,志愿时长,志愿星级) values ('"+z_number+"','"+z_name+"','"+z_prj+"','"+z_time_1+"','"+z_xj+"')";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("更改成功");
            ListView1.DataBind();
            Response.Redirect("volunteer management.aspx");
        }
        else
        {
            Response.Write("更改失败");

            cnn.Close();

        }
    }
}