using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class datafill : System.Web.UI.Page
{
    string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "tianpingdian.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;
    protected void Page_Load(object sender, EventArgs e)
    {   
        Table _tb;
        TableRow _tr;
        TableRow _th;
        TableCell _td;

        string tiaojian1 = DropDownList1.SelectedValue.ToString();
        string tiaojian2 = DropDownList2.SelectedValue.ToString();
       // Panel _panl; 
            _td = new TableCell();
            _td.Text = "学生学号";
            _th = new TableRow();
            _th.CssClass = "head";
            _th.Cells.Add(_td);

            _td = new TableCell();
            _td.Text = "学生姓名";
             _th.Cells.Add(_td);

             _td = new TableCell();
             _td.Text = "性别";
             _th.Cells.Add(_td);

             _td = new TableCell();
             _td.Text = "数据库原理";
             _th.Cells.Add(_td);

             _td = new TableCell();
             _td.Text = "大学英语";
             _th.Cells.Add(_td);

             _td = new TableCell();
             _td.Text = "高等数学";
             _th.Cells.Add(_td);

             _td = new TableCell();
             _td.Text = "系统分析";
             _th.Cells.Add(_td);

             _td = new TableCell();
             _td.Text = "学生籍贯";
             _th.Cells.Add(_td);
             
            
               _tb = new Table();
            _tb.Rows.Add(_th);

            Panel2.Controls.Add(_tb);

            string str_conn = str_connection + MapPath(str_sourcefile);
            cnn = new OleDbConnection(str_conn);
            cnn.Open();
            str_sql = "select * from 成绩实例 where 学生籍贯='"+tiaojian1+"' and 性别='"+tiaojian2+"'";
            cmd = new OleDbCommand(str_sql, cnn);
            datar = cmd.ExecuteReader();
            while (datar.Read())
            {
               // Response.Write("d");

                _tr = new TableRow();
                _tr.CssClass = "data_row";

                _td = new TableCell();
                _td.CssClass = "data_td";
                _td.Text = datar["学号"].ToString();
                _tr.Cells.Add(_td);
               
                

                _td = new TableCell();
                _td.CssClass = "data_td";
                _td.Text = datar["姓名"].ToString();
                _tr.Cells.Add(_td);

                _td = new TableCell();
                _td.CssClass = "data_td";
                _td.Text = datar["性别"].ToString();
                _tr.Cells.Add(_td);


                _td = new TableCell();
                _td.CssClass = "data_td";
                _td.Text = datar["数据库原理"].ToString();
                _tr.Cells.Add(_td);

                _td = new TableCell();
                _td.CssClass = "data_td";
                _td.Text = datar["大学英语"].ToString();
                _tr.Cells.Add(_td);

                _td = new TableCell();
                _td.CssClass = "data_td";
                _td.Text = datar["高等数学"].ToString();
                _tr.Cells.Add(_td);

                _td = new TableCell();
                _td.CssClass = "data_td";
                _td.Text = datar["系统分析"].ToString();
                _tr.Cells.Add(_td);

                _td = new TableCell();
                _td.CssClass = "data_td";
                _td.Text = datar["学生籍贯"].ToString();
                _tr.Cells.Add(_td);






              


              
                _tb.Rows.Add(_tr);

               
                Panel2.Controls.Add(_tb);


            }
            cnn.Close();
       

    }
}