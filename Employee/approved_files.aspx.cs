using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Employee_approved_files : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    dbconect db = new dbconect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            show_permission_of_files();
            if (GridView1.Rows.Count > 0)
            {

                GridView1.Visible = true;
                Label4.Visible = false;

            }
            else
            {

                GridView1.Visible = false;
                Label4.Visible = true;

            }
        }
    }
    public void show_permission_of_files()
    {

        ds.Clear();
        ds = db.discont("select * from tb_upload u,tb_requested_files r,tb_manage_employee m where r.fname=u.fname and r.request_by='" + Session["user"].ToString() + "' and  m.username=u.owner_name");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {

            string st = ((Label)GridView1.Rows[i].Cells[7].FindControl("label2")).Text;
            if (st == "1")
            {
                ((Label)GridView1.Rows[i].Cells[7].FindControl("label2")).Visible = true;
                ((Label)GridView1.Rows[i].Cells[7].FindControl("label2")).Text = "Waiting For Approval";
                ((Button)GridView1.Rows[i].Cells[7].FindControl("button2")).Visible = false;

            }
            else if ( st == "4")
            {
                ((Label)GridView1.Rows[i].Cells[7].FindControl("label2")).Visible = false;
                ((Button)GridView1.Rows[i].Cells[7].FindControl("button2")).Visible = true;
            }
            else if (st == "5")
            {
                ((Label)GridView1.Rows[i].Cells[7].FindControl("label2")).Visible = true;
                ((Label)GridView1.Rows[i].Cells[7].FindControl("label2")).Text = "Your Requset is Rejected";
                ((Button)GridView1.Rows[i].Cells[7].FindControl("button2")).Visible = false;

            }
            else
            {


                ((Label)GridView1.Rows[i].Cells[7].FindControl("label2")).Visible = true;
                ((Label)GridView1.Rows[i].Cells[7].FindControl("label2")).Text = "Waiting For Approval";
                ((Button)GridView1.Rows[i].Cells[7].FindControl("button2")).Visible = false;

            }

        }


    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string fname = ((Label)GridView1.Rows[e.RowIndex].Cells[5].FindControl("label1")).Text;
        Session["fname"] = fname;
        Response.Redirect("~/Employee/download.aspx");
    }
}