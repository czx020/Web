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
    protected void Button2_Click(object sender, EventArgs e)
    {
        int a ;
        a = 0;
        for (int i = 1; i <= 10; i++) 
        {
            a += i;
        }
        Response.Write("1到10的和为：" + a.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    /*Label1.Text = "你选择的是:弟弟";*/
        if (RadioButton1.Checked) { Label1.Text = "你选中了：" + RadioButton1.Text; }
        if (RadioButton2.Checked) { Label1.Text = "你选中了：" + RadioButton2.Text; }
        if (RadioButton3.Checked) { Label1.Text = "你选中了：" + RadioButton3.Text; }
        if (RadioButton4.Checked) { Label1.Text = "你选中了：" + RadioButton4.Text; }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        double s_num = -1;

        RadioButton5.Checked = false;
        RadioButton6.Checked = false;
        RadioButton7.Checked = false;
        RadioButton8.Checked = false;

        try { s_num = double.Parse(TextBox1.Text); }
        catch { }

        if (s_num < 0 || s_num > 120)
        {
            Label2.Text = ("请输入正确的成绩");
        }
        else 
        {
            if (s_num < 60) { RadioButton5.Checked = true; }
            if (s_num >= 60 && s_num < 80) { RadioButton6.Checked = true; }
            if (s_num >=80 && s_num < 100) { RadioButton7.Checked = true; }
            if (s_num >=100 && s_num < 120) { RadioButton8.Checked = true; }

        }
    }
    protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton9.Checked == true)
        {
            Label3.Text = "你选择了" + RadioButton9.Text;
        }
    }
    protected void RadioButton10_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton10.Checked == true)
        {
            Label3.Text = "你选择了" + RadioButton10.Text;
        }
    }
    protected void RadioButton11_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton11.Checked == true)
        {
            Label3.Text = "你选择了" + RadioButton11.Text;
        }
    }
    protected void RadioButton12_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton12.Checked == true)
        {
            Label3.Text = "你选择了" + RadioButton12.Text;
        }
    }
    protected void Button_Click(object sender, EventArgs e)
    {
        if (RadioButton9.Checked == false && RadioButton10.Checked == false && RadioButton11.Checked == false && RadioButton12.Checked == false)
        {
            Response.Write("<script>alert('请选择答案')</script>");
        }
        else if (RadioButton9.Checked == true)
        {
            Response.Write("<script>alert('没错，张晓刚就是个弟弟')</script>");
        }
        else if (RadioButton10.Checked == true)
            {
                Response.Write("<script>alert('没错，薛尚就是个弟弟')</script>");
            }
        else if (RadioButton11.Checked == true)
            {
                Response.Write("<script>alert('没错，黄梓航就是个弟弟')</script>"); 
            }
        else if (RadioButton12.Checked == true)
            {
                Response.Write("<script>alert('没错，杨伟庭就是个弟弟')</script>");    
            }
        }
    }
