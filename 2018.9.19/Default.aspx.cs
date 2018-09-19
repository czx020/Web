using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int b_start = int.Parse(TextBox1.Text);
        int b_end = int.Parse(TextBox2.Text);
        int b_test;
        Boolean b_result;

        string str_result = "质数有：" ;

        for ( b_test = b_start; b_test <= b_end; b_test++)
        {
            b_result = zhishu(b_test);
            if (b_result == true)
            {
                str_result += b_test + ","; 
            }
 
        }
        Label1.Text = str_result;
    }
    protected Boolean zhishu(int be_test)
    {
        Boolean _result = true;
        for (int i = be_test / 2; i >= 2; i--)
        {
            if (be_test % i == 0) { _result = false; break; }
        }
        return _result;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int b_start = int.Parse(TextBox1.Text);
        int b_end = int.Parse(TextBox2.Text);
        while()

    }
}