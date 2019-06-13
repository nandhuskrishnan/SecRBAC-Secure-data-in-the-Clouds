using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Employee_modify_fileaspx : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    dbconect db = new dbconect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ds.Clear();
            ds = db.discont("select  * from tb_upload where owner_name='" + Session["user"].ToString() + "'");
            GridView1.DataSource = ds;
            GridView1.DataBind();

            if (GridView1.Rows.Count > 0)
            {

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {

                    string str = ((Label)GridView1.Rows[i].Cells[4].FindControl("label1")).Text;

                    ds.Clear();
                    ds = db.discont("select roles from tb_role_policy where filename='" + str + "'");
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                        {

                            ((BulletedList)GridView1.Rows[i].Cells[4].FindControl("bulletedlist1")).Items.Add(ds.Tables[0].Rows[j]["roles"].ToString());


                        }



                    }



                }




            }
        }
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["fn"] = e.CommandArgument.ToString();
        Response.Redirect("~/Employee/modify_upload.aspx");
    }
}