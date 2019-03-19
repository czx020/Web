using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class tabshili : System.Web.UI.Page
{
    Image imgshangpin;
    HyperLink nameshangping;
    Panel panelshangpin;

    string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "tianpingdian.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;

    protected void Page_Load(object sender, EventArgs e)
    {
        string str_conn = str_connection + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_conn);
        cnn.Open();
        str_sql = "select   top 4 * from 商品明细  where 产品类别='蛋糕'";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read()) { 
            imgshangpin = new Image();
            nameshangping = new HyperLink();
            panelshangpin = new Panel();       
            string name =datar["产品图片"].ToString();
            imgshangpin.ImageUrl="image\\"+name;
            nameshangping.Text = datar["产品名称"].ToString();
            nameshangping.NavigateUrl = "tabshili.aspx";
           panelshangpin.Controls.Add(imgshangpin);
           panelshangpin.Controls.Add(nameshangping);
           panelshangpin.CssClass="imgdiv";
            Panel1.Controls.Add(panelshangpin);
            }
        str_sql = "select   top 4 * from 商品明细  where 产品类别='面包'";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read()) { 
            imgshangpin = new Image();
            nameshangping = new HyperLink();
            panelshangpin = new Panel();       
            string name =datar["产品图片"].ToString();
            imgshangpin.ImageUrl="image\\"+name;
            nameshangping.Text = datar["产品名称"].ToString();
            nameshangping.NavigateUrl = "tabshili.aspx";
           panelshangpin.Controls.Add(imgshangpin);
           panelshangpin.Controls.Add(nameshangping);
           panelshangpin.CssClass = "imgdiv";
           Panel2.Controls.Add(panelshangpin);

        }
            str_sql = "select   top 4 * from 商品明细  where 产品类别='巧克力'";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read()) { 
            imgshangpin = new Image();
            nameshangping = new HyperLink();
            panelshangpin = new Panel();       
            string name =datar["产品图片"].ToString();
            imgshangpin.ImageUrl="image\\"+name;
            nameshangping.Text = datar["产品名称"].ToString();
            nameshangping.NavigateUrl = "tabshili.aspx";
           panelshangpin.Controls.Add(imgshangpin);
           panelshangpin.Controls.Add(nameshangping);
           panelshangpin.CssClass = "imgdiv";
           Panel3.Controls.Add(panelshangpin);
            }
         }
     }   
                           
     