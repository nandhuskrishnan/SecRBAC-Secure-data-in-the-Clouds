using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CEO_manage_employee : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    dbconect db = new dbconect();
    string str = "";
    string usr = "";
    string pass = "";
    mail ma = new mail();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = "";
        usr = TextBox1.Text + db.numpassword(5);
        username = db.extscalr("select username from tb_login where username='" + usr + "' or email='" + TextBox3.Text + "'");
        if (username == "")
        {
           
            pass = TextBox1.Text + db.MakePwd(5);
            if (FileUpload1.HasFiles)
            {

                str = "~/CEO/images/" +FileUpload1.FileName+"123";
                FileUpload1.SaveAs(MapPath(str));


            }
            string skey = db.MakePwd(3) + db.numpassword(4);
            bool b = db.extnon("insert into tb_manage_employee values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + usr + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + str + "','','"+skey+"')");
            bool c = db.extnon("insert into tb_login values('" + TextBox3.Text + "','" + usr + "','" + pass + "','" + 1 + "','user','')");
            if (b == c == true)
            {
                TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = null;
                RadioButtonList1.ClearSelection();
                ma.send_msg("Your secretKey", skey);
                RegisterStartupScript("", "<script Language=JavaScript>alert('Successfully Inserted')</Script>");

            }

        }
        else
        {

            RegisterStartupScript("", "<script Language=JavaScript>alert('You Already have an account with this email address')</Script>");

        }
    }
}