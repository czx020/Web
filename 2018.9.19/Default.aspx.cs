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

        string str_result = "质数有：";

        for (b_test = b_start; b_test <= b_end; b_test++)
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
        int b_start = int.Parse(TextBox3.Text);
        int b_end = int .Parse(TextBox4.Text);
        int sum = 0;
        while (b_start <= b_end)
        {
            sum += b_start;
            b_start++;

        }
        Label2.Text = TextBox3.Text + "连加到" + TextBox4.Text + "的和为:" + sum.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int m;
        int start;
        m = start = int.Parse(TextBox5.Text);

        string result = m + "的约数有：";
        do
        {
            if (m % start == 0)
            {
                result += start.ToString() + ",";
            }
            m--;

        } while ( start >1);

        result += "1";
        Label3.Text = result;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int input = int.Parse(TextBox6.Text);
        int a = 0 ;
        int sum = 0 ;
        for(int i = 1; i<input ; i++)
        {
            if(input%i == 0)
            {
                sum += 1;
            }
        }
        if (sum == 2)
        {
            Label4.Text = TextBox6.Text + "是质数";
        }
        else
        {
            Label4.Text = TextBox6.Text + "不是质数";
        }
    }
}
