using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Employee_upload_files : System.Web.UI.Page
{
    dbconect db = new dbconect();
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    read_doc read_doc = new read_doc();
    pdfreader read_pdf = new pdfreader();
    read_txt read_txtt = new read_txt();
    string data = "";
    cloud cld = new cloud();
    string enc_string = "";
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
        ds = db.discont("select distinct role from tb_role");
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ds.Clear();
        ds = db.discont("select fname from tb_upload where fname='" + TextBox1.Text + "'");
        if (ds.Tables[0].Rows.Count != 0)
        {

            RegisterStartupScript("", "<script Language=JavaScript>alert('Filename Already Existed')</Script>");


        }
        else
        {

            if (FileUpload1.HasFiles)
            {
                string path = "~/Employee/files/upload/" +  FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(path));
                string server_path = Server.MapPath(path);
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                
                if (extension == ".docx" || extension == ".doc")
                {
                    data = read_doc.read_from_doc(server_path);
                   


                }
                else if (extension == ".txt")
                {

                    data = read_txtt.readtxt(server_path);

                }
                else if (extension == ".pdf")
                {

                    data = read_pdf.pdfText(server_path);

                }

                ds.Clear();
                string e_key = db.MakePwd(5);
                string token = db.MakePwd(3)+db.numpassword(3);
                ViewState["token"] = token;
               enc_string= cld.encrypt(data, e_key);
               string enc_path =Server.MapPath( "~/Employee/files/efile/" + TextBox1.Text +".txt");
               File.WriteAllText(enc_path, enc_string);


                bool b=db.extnon("insert into tb_upload values('" + Session["user"].ToString() + "','" + TextBox1.Text + "','" + e_key + "','" + TextBox2.Text + "','0','0','" + DateTime.Now.ToString() + "','" + extension + "')");
                bool d = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" + Session["role"] + "','0','" + token + "')");
                if (b == true)
                {
                    File.Delete(server_path);
                    MultiView1.ActiveViewIndex = 1;
                    

                }
            }
            else
            {
                RegisterStartupScript("", "<script Language=JavaScript>alert('Please Upload File')</Script>");


            }

        }
    }
    DataSet ds2 = new DataSet();
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        string role = ((Label)e.Item.FindControl("label5")).Text;
        ds1.Clear();
        ds1 = db.discont1("select * from tb_Sub_main_role where role='"+role+"'");
        if (ds1.Tables[0].Rows.Count != 0)
        {
            ((DataList)e.Item.FindControl("datalist2")).DataSource = ds1;
            ((DataList)e.Item.FindControl("datalist2")).DataBind();
            for (int i = 0; i < ((DataList)e.Item.FindControl("datalist2")).Items.Count; i++)
            {
                ds2.Clear();
                string sub_roles = ((Label)((DataList)e.Item.FindControl("datalist2")).Items[i].FindControl("label6")).Text;

                ds2 = db.discont2("select * from tb_subroles_of_subrole where role='" + role + "' and sub_main_role='"+sub_roles+"'");
                if (ds2.Tables[0].Rows.Count != 0)
                {
                    ((DataList)((DataList)e.Item.FindControl("datalist2")).Items[i].FindControl("datalist3")).DataSource = ds2;
                    ((DataList)((DataList)e.Item.FindControl("datalist2")).Items[i].FindControl("datalist3")).DataBind();

                }
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < DataList1.Items.Count; i++)
        {

            bool b = ((CheckBox)DataList1.Items[i].FindControl("checkbox1")).Checked;
            string role = ((Label)DataList1.Items[i].FindControl("label5")).Text;
            ViewState["r1"] = role;
            if (b == true)
            {
               
               

                    bool d = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" + ViewState["r1"].ToString() + "','0','" + ViewState["token"].ToString() + "')");

                

            }
            for (int j = 0; j < ((DataList)DataList1.Items[i].FindControl("datalist2")).Items.Count; j++)
            {

                bool v = ((CheckBox)((DataList)DataList1.Items[i].FindControl("datalist2")).Items[j].FindControl("checkbox2")).Checked;
                string sub_main_role = ((Label)((DataList)DataList1.Items[i].FindControl("datalist2")).Items[j].FindControl("label6")).Text;
                string prior = ((Label)((DataList)DataList1.Items[i].FindControl("datalist2")).Items[j].FindControl("label80")).Text;

                ViewState["r2"] = sub_main_role;
                if (v == true)
                {

                    if (prior == "1")
                    {
                        string tot_rol = ViewState["r1"].ToString() + ',' + ViewState["r2"].ToString();
                        bool d = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" +tot_rol + "','0','" + ViewState["token"].ToString() + "')");

                    }
                    else if (prior == "2")
                    {
                        ds.Clear();
                       ds = db.discont("select sub_main_role from tb_Sub_main_role where role='" + role + "' and priority<='" + int.Parse(prior) + "'");
                        for (int ab = 0; ab < ds.Tables[0].Rows.Count; ab++)
                        {
                            string tot_rol = ViewState["r1"].ToString() + ',' + ds.Tables[0].Rows[ab]["sub_main_role"].ToString();
                            bool O = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" + tot_rol + "','0','" + ViewState["token"].ToString() + "')");
                        }

                    }
                    else if (prior == "3")
                    {
                        ds.Clear();
                        ds = db.discont("select sub_main_role from tb_Sub_main_role where role='" + role + "' and priority<='" + int.Parse(prior) + "'");
                        for (int ab = 0; ab < ds.Tables[0].Rows.Count; ab++)
                        {
                            string tot_rol = ViewState["r1"].ToString() + ',' + ds.Tables[0].Rows[ab]["sub_main_role"].ToString();

                            bool O = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" + tot_rol + "','0','" + ViewState["token"].ToString() + "')");
                        }

                    }
                    else if (prior == "4")
                    {
                        ds.Clear();
                        ds = db.discont("select sub_main_role from tb_Sub_main_role where role='" + role + "' and priority<='" + int.Parse(prior) + "'");
                        for (int ab = 0; ab < ds.Tables[0].Rows.Count; ab++)
                        {
                            string tot_rol = ViewState["r1"].ToString() + ',' + ds.Tables[0].Rows[ab]["sub_main_role"].ToString();
                            bool O = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" +tot_rol + "','0','" + ViewState["token"].ToString() + "')");
                        }

                    }
                    else if (prior == "5")
                    {
                        ds.Clear();
                        ds = db.discont("select sub_main_role from tb_Sub_main_role where role='" + role + "' and priority<='" + int.Parse(prior) + "'");
                        for (int ab = 0; ab < ds.Tables[0].Rows.Count; ab++)
                        {
                            string tot_rol = ViewState["r1"].ToString() + ',' + ds.Tables[0].Rows[ab]["sub_main_role"].ToString();
                            bool O = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" + tot_rol + "','0','" + ViewState["token"].ToString() + "')");
                        }

                    }
                

                }

                for (int k = 0; k < ((DataList)((DataList)DataList1.Items[i].FindControl("datalist2")).Items[j].FindControl("datalist3")).Items.Count; k++)
                {
                    bool c = ((CheckBox)((DataList)((DataList)DataList1.Items[i].FindControl("datalist2")).Items[j].FindControl("datalist3")).Items[k].FindControl("checkbox3")).Checked;
                    string sub_role = ((Label)((DataList)((DataList)DataList1.Items[i].FindControl("datalist2")).Items[j].FindControl("datalist3")).Items[k].FindControl("label7")).Text;
                    string priority = ((Label)((DataList)((DataList)DataList1.Items[i].FindControl("datalist2")).Items[j].FindControl("datalist3")).Items[k].FindControl("label8")).Text;
                    ViewState["r3"] =sub_role;
                   
                    if (c == true)
                     {
                         if (priority == "1")
                         {
                              string tot_rol = ViewState["r1"].ToString() + ',' +ViewState["r2"].ToString()+','+ ViewState["r3"].ToString() ;
                             bool d = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" +tot_rol+ "','0','" + ViewState["token"].ToString() + "')");

                         }
                         else if (priority == "2")
                         {
                             ds.Clear();
                             ds = db.discont("select sub_role from tb_subroles_of_subrole where sub_main_role='" + sub_main_role + "' and Priority<='"+int.Parse(priority)+"'");
                             for (int ab = 0; ab < ds.Tables[0].Rows.Count; ab++)
                             {
                                 string tot_rol = ViewState["r1"].ToString() + ',' + ViewState["r2"].ToString() + ',' + ds.Tables[0].Rows[ab]["sub_role"].ToString();

                                 bool f = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','"+tot_rol+"','0','" + ViewState["token"].ToString() + "')");
                             }

                         }
                         else if (priority == "3")
                         {
                             ds.Clear();
                             ds = db.discont("select sub_role from tb_subroles_of_subrole where sub_main_role='" + sub_main_role + "' and Priority<='" + int.Parse(priority) + "'");
                             for (int ab = 0; ab < ds.Tables[0].Rows.Count; ab++)
                             {
                                 string tot_rol = ViewState["r1"].ToString() + ',' + ViewState["r2"].ToString() + ',' + ds.Tables[0].Rows[ab]["sub_role"].ToString();

                                 bool f = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" +tot_rol+ "','0','" + ViewState["token"].ToString() + "')");
                             }

                         }
                         else if (priority == "4")
                         {
                             ds.Clear();
                             ds = db.discont("select sub_role from tb_subroles_of_subrole where sub_main_role='" + sub_main_role + "' and Priority<='" + int.Parse(priority) + "'");
                             for (int ab = 0; ab < ds.Tables[0].Rows.Count; ab++)
                             {
                                 string tot_rol = ViewState["r1"].ToString() + ',' + ViewState["r2"].ToString() + ',' + ds.Tables[0].Rows[ab]["sub_role"].ToString();

                                 bool f = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" + tot_rol + "','0','" + ViewState["token"].ToString() + "')");
                             }

                         }
                         else if (priority == "5")
                         {
                             ds.Clear();
                             ds = db.discont("select sub_role from tb_subroles_of_subrole where sub_main_role='" + sub_main_role + "' and Priority<='" + int.Parse(priority) + "'");
                             for (int ab = 0; ab < ds.Tables[0].Rows.Count; ab++)
                             {
                                 string tot_rol = ViewState["r1"].ToString() + ',' + ViewState["r2"].ToString() + ',' + ds.Tables[0].Rows[ab]["sub_role"].ToString();

                                 bool f = db.extnon("insert into tb_role_policy values('" + TextBox1.Text + "','" + tot_rol+ "','0','" + ViewState["token"].ToString() + "')");
                             }

                         }

                 
                     }


                }

            }

        }
        MultiView1.ActiveViewIndex = 0;
         RegisterStartupScript("", "<script Language=JavaScript>alert('Successfully Assigned Privacy')</Script>");

       

    }
}