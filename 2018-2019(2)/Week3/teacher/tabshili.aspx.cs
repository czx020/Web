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
        str_sql = "select * from 商品明细";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        while (datar.Read()) { 
            if(datar["产品类别"].ToString() == "蛋糕"){
                imgshangpin = new Image();
                imgshangpin.ImageUrl="image\\"+datar["产品图片"].ToString();
                Panel1.Controls.Add(imgshangpin);
            }
            else if (datar["产品类别"].ToString() == "面包")
            {
                imgshangpin = new Image();
                imgshangpin.ImageUrl = "image\\" + datar["产品图片"].ToString();
                Panel2.Controls.Add(imgshangpin);
            }
            else if (datar["产品类别"].ToString() == "巧克力")
            {
                imgshangpin = new Image();
                imgshangpin.ImageUrl = "image\\" + datar["产品图片"].ToString();
                Panel3.Controls.Add(imgshangpin);
            }   
        }                     
     }
}