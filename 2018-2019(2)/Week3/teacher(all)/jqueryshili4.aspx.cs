using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class jqueryshili4 : System.Web.UI.Page
{
    string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "tianpingdian.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        Image _chpimg;
        HyperLink _chpname;
        Panel _chppanel; 
        


    



        string str_conn = str_connection + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_conn);
        cnn.Open();
        str_sql = "select   top 4 * from 商品明细  where 产品类别='蛋糕'";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read())
        {
            _chpimg = new Image();
            _chpname = new HyperLink();
            _chppanel = new Panel();
            string imgname=datar["产品图片"].ToString();
            _chpimg.ImageUrl="img\\"+imgname;
            _chpname.Text = datar["产品名称"].ToString();
            _chpname.NavigateUrl = "lianxi.aspx";
            _chppanel.Controls.Add(_chpimg);
            _chppanel.Controls.Add(_chpname);
            _chppanel.CssClass = "imgdiv";
            Panel1.Controls.Add(_chppanel);
           
        }
        str_sql = "select  top 4 * from 商品明细  where 产品类别='巧克力'";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read())
        {
            _chpimg = new Image();
            _chpname = new HyperLink();
            _chppanel = new Panel();
            string imgname = datar["产品图片"].ToString();
            _chpimg.ImageUrl = "img\\" + imgname;
            _chpname.Text = datar["产品名称"].ToString();
            _chpname.NavigateUrl = "lianxi.aspx";
            _chppanel.Controls.Add(_chpimg);
            _chppanel.Controls.Add(_chpname);
            _chppanel.CssClass = "imgdiv";

            Panel2.Controls.Add(_chppanel);
        }
        str_sql = "select  top 4 * from 商品明细  where 产品类别='面包'";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read())
        {
            _chpimg = new Image();
            _chpname = new HyperLink();
            _chppanel = new Panel();
            string imgname = datar["产品图片"].ToString();
            _chpimg.ImageUrl = "img\\" + imgname;
            _chpname.Text = datar["产品名称"].ToString();
            _chpname.NavigateUrl = "lianxi.aspx";
            _chppanel.Controls.Add(_chpimg);
            _chppanel.Controls.Add(_chpname);
            _chppanel.CssClass = "imgdiv";

            Panel3.Controls.Add(_chppanel);
        }




        cnn.Close();
    }
}