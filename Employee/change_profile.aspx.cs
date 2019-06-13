using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Employee_change_profile : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    dbconect db = new dbconect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            show();
        }
    }
    public void show()
    {
        ds.Clear();
        ds = db.discont("select * from tb_manage_employee where username='" + Session["user"].ToString() + "'");
        Image1.ImageUrl = ds.Tables[0].Rows[0]["pro_pic"].ToString();
        ViewState["img"] = ds.Tables[0].Rows[0]["pro_pic"].ToString();
        TextBox3.Text = ds.Tables[0].Rows[0]["name"].ToString();
        TextBox4.Text = ds.Tables[0].Rows[0]["email"].ToString();
        TextBox5.Text = ds.Tables[0].Rows[0]["address"].ToString();

        TextBox6.Text = ds.Tables[0].Rows[0]["age"].ToString();

        TextBox7.Text = ds.Tables[0].Rows[0]["contact"].ToString();
        TextBox8.Text = ds.Tables[0].Rows[0]["username"].ToString();
        ds.Clear();
        ds = db.discont("select * from tb_login where username='" + Session["user"].ToString() + "'");


        TextBox9.Text = ds.Tables[0].Rows[0]["password"].ToString();
        TextBox15.Text = ds.Tables[0].Rows[0]["role"].ToString();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {


        MultiView1.ActiveViewIndex = 0;
        ds.Clear();
        ds = db.discont("select * from tb_manage_employee where username='" + Session["user"].ToString() + "'");
     //   Image1.ImageUrl = ds.Tables[0].Rows[0]["pro_pic"].ToString();
        TextBox1.Text = ds.Tables[0].Rows[0]["name"].ToString();
        TextBox2.Text = ds.Tables[0].Rows[0]["email"].ToString();
        TextBox10.Text = ds.Tables[0].Rows[0]["address"].ToString();

        TextBox11.Text = ds.Tables[0].Rows[0]["age"].ToString();

        TextBox12.Text = ds.Tables[0].Rows[0]["contact"].ToString();
        TextBox13.Text = ds.Tables[0].Rows[0]["username"].ToString();
        ds.Clear();
        ds = db.discont("select * from tb_login where username='" + Session["user"].ToString() + "'");


        TextBox14.Text = ds.Tables[0].Rows[0]["password"].ToString();
        TextBox16.Text = ds.Tables[0].Rows[0]["role"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "";
        if (FileUpload1.HasFiles)
        {
            str = "~/CEO/images/" + FileUpload1.FileName + "123";
            FileUpload1.SaveAs(MapPath(str));


        }
        else
        {
            str = ViewState["img"].ToString();
        }
        bool b = db.extnon("update tb_manage_employee set name='"+TextBox1.Text+"',address='"+TextBox10.Text+"',age='"+TextBox11.Text+"',contact='"+TextBox12.Text+"',pro_pic='"+str+"'  where username='"+Session["user"].ToString()+"'");
        bool c = db.extnon("update tb_login set password='"+TextBox14.Text+"' where username='"+Session["user"].ToString()+"'");
        MultiView1.ActiveViewIndex = 1;

        show();

    }
}