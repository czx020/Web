using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class jqueryshili : System.Web.UI.Page
{
   string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "tianpingdian.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str_conn = str_connection + MapPath(str_sourcefile);
        cnn =new  OleDbConnection(str_conn);
        cnn.Open();
        str_sql = "select * from 成绩实例 ";
        cmd = new OleDbCommand(str_sql,cnn);
        datar = cmd.ExecuteReader();
       

        Panel p_name;
        Panel p_neirong;
        Label l_name, l_neirong;


        while (datar.Read()) {
            l_name = new Label();
            l_name.Text = datar["姓名"].ToString();
            p_name = new Panel();p_name.CssClass = "kaoshengname";
            
            p_name.Controls.Add(l_name);
            itemholder.Controls.Add(p_name);

             p_neirong = new Panel();
            p_neirong.CssClass = "kemu";
           

             l_neirong = new Label(); l_neirong.CssClass = "kemu1";
            l_neirong.Text ="数据库原理："+ datar["数据库原理"].ToString();
             p_neirong.Controls.Add(l_neirong);


             l_neirong = new Label(); l_neirong.CssClass = "kemu1";
            l_neirong.Text = "大学英语：" + datar["大学英语"].ToString();
             p_neirong.Controls.Add(l_neirong);


             l_neirong = new Label(); l_neirong.CssClass = "kemu1";
            l_neirong.Text = "高等数学：" + datar["高等数学"].ToString();
             p_neirong.Controls.Add(l_neirong);

             l_neirong = new Label(); l_neirong.CssClass = "kemu1";
             l_neirong.Text = "系统分析：" + datar["系统分析"].ToString();
             p_neirong.Controls.Add(l_neirong);
             



            itemholder.Controls.Add(p_neirong);


        } 
        cnn.Close();
    }
}