using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CEO_set_roles_to_employees : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    dbconect db = new dbconect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            show_grid();
        }
    }
    public void show_grid()
    {

        ds.Clear();
        ds = db.discont("select * from tb_manage_employee");
       DataList1.DataSource = ds;
        DataList1.DataBind();

        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            string role = ((Label)DataList1.Items[i].FindControl("label16")).Text;
            if (role == null || role == "")
            {

                ((Label)DataList1.Items[i].FindControl ("label16")).Text = "No Roles";

            }


        }

    }
   
   
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Text == "hr" || RadioButtonList1.SelectedItem.Text == "HR" || RadioButtonList1.SelectedItem.Text == "Hr")
        {

            ds.Clear();
            ds = db.discont("update tb_manage_employee set role='" + RadioButtonList1.SelectedItem.Text + "' where email='" + ViewState["ss"].ToString() + "'");

            ds.Clear();
            ds = db.discont("update tb_login set role='" + RadioButtonList1.SelectedItem.Text + "' where email='" + ViewState["ss"].ToString() + "'");
            show_grid();
        }
        else
        {

            ds.Clear();
            ds = db.discont("update tb_manage_employee set role='" + RadioButtonList1.SelectedItem.Text + "' where email='" + ViewState["ss"].ToString() + "'");

            ds.Clear();
            ds = db.discont("update tb_login set role='" + RadioButtonList1.SelectedItem.Text + "' where email='" + ViewState["ss"].ToString() + "'");
            show_grid();
            RadioButtonList2.Visible = true;
            Label2.Visible = true;
            RadioButtonList2.Items.Clear();
            ds.Clear();
            ds = db.discont("select sub_main_role from tb_Sub_main_role where role='"+RadioButtonList1.SelectedItem.Text+"'");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {


                RadioButtonList2.Items.Add(ds.Tables[0].Rows[i]["sub_main_role"].ToString());
            }


        }
    }
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ds.Clear();
        ds = db.discont("select * from tb_Sub_main_role where sub_main_role='" + RadioButtonList2.SelectedItem.Text + "'");
        string str = ds.Tables[0].Rows[0]["role"].ToString();
        if (str == "Developer" || str == "developer" || str == "DEVELOPER")
        {
            string roles = RadioButtonList1.SelectedItem.Text + ',' + RadioButtonList2.SelectedItem.Text;
            ds.Clear();
            ds = db.discont("update tb_manage_employee set role='" + roles + "' where email='" + ViewState["ss"].ToString() + "'");

            ds.Clear();
            ds = db.discont("update tb_login set role='" + roles + "' where email='" + ViewState["ss"].ToString() + "'");
            show_grid();
           



            ds.Clear();
            ds = db.discont("select sub_role from tb_subroles_of_subrole where role='"+RadioButtonList1.SelectedItem.Text+"' and sub_main_role='"+RadioButtonList2.SelectedItem.Text+"'");
            RadioButtonList3.Items.Clear();
            RadioButtonList3.Visible = true;
            Label3.Visible = true;
             for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {


                RadioButtonList3.Items.Add(ds.Tables[0].Rows[i]["sub_role"].ToString());
            }

        }
        else
        {
            string roles = RadioButtonList1.SelectedItem.Text +','+ RadioButtonList2.SelectedItem.Text;
            ds.Clear();
            ds = db.discont("update tb_manage_employee set role='" + roles + "' where email='" + ViewState["ss"].ToString() + "'");

            ds.Clear();
            ds = db.discont("update tb_login set role='" + roles + "' where email='" + ViewState["ss"].ToString() + "'");
            show_grid();

        }
    }
    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string roles = RadioButtonList1.SelectedItem.Text + ',' + RadioButtonList2.SelectedItem.Text+','+RadioButtonList3.SelectedItem.Text;
        ds.Clear();
        ds = db.discont("update tb_manage_employee set role='" + roles + "' where email='" + ViewState["ss"].ToString() + "'");

        ds.Clear();
        ds = db.discont("update tb_login set role='" + roles + "' where email='" + ViewState["ss"].ToString() + "'");
        show_grid();
        RadioButtonList1.Visible = RadioButtonList2.Visible = RadioButtonList3.Visible = false;
        Label1.Visible = Label2.Visible = Label3.Visible = false;
        Panel1.Visible = false;

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        RadioButtonList1.Items.Clear();
        ViewState["ss"] = e.CommandArgument.ToString();
        Panel1.Visible = true;

        ds.Clear();
        ds = db.discont("select role from tb_role");
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {


            RadioButtonList1.Items.Add(ds.Tables[0].Rows[i]["role"].ToString());
        }
        Label1.Visible = true;
        RadioButtonList1.Visible = true;
        Panel1.Visible = true;
    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        show_grid();
    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        
    }
    protected void DataList1_UpdateCommand1(object source, DataListCommandEventArgs e)
    {
        string name = ((TextBox)e.Item.FindControl("textbox1")).Text;
        string con = ((TextBox)e.Item.FindControl("textbox2")).Text;
        string add = ((TextBox)e.Item.FindControl("textbox3")).Text;
        string ema = ((Label)e.Item.FindControl("label14")).Text;

        ds.Clear();
        ds = db.discont("update tb_manage_employee set name='" + name + "',contact='" + con + "',address='" + add + "' where email='" + ema + "'");
        DataList1.EditItemIndex = -1;
        show_grid();
    }
    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        show_grid();
    }
}