using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_access_denied_files : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    dbconect db = new dbconect();
    DataSet ds2 = new DataSet();


    DataSet ds1 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            access_file();
        }
    }


    public void access_file()
    {

        ds.Clear();
        ds = db.discont("truncate table tb_temp_files");


        List<string> access_file = new List<string>();

        string user = Session["user"].ToString();
        string user_role = Session["role"].ToString();
        string[] user_split_role = user_role.Split(',');
        List<string> main_roles = new List<string>();
        List<string> main_sub_roles = new List<string>();
        // List<string> sub_of_main_sub_role = new List<string>();
        Dictionary<string, string> sub_of_main_sub_role = new Dictionary<string, string>();
        ds.Clear();
        ds = db.discont("select distinct sub_main_role from tb_Sub_main_role");
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            main_sub_roles.Add(ds.Tables[0].Rows[i]["sub_main_role"].ToString());
        }

        ds.Clear();
        ds = db.discont("select role from tb_role");
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            main_roles.Add(ds.Tables[0].Rows[i]["role"].ToString());
        }

        ds.Clear();
        ds = db.discont("select distinct sub_role,priority from tb_subroles_of_subrole");
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            sub_of_main_sub_role.Add(ds.Tables[0].Rows[i]["sub_role"].ToString(), ds.Tables[0].Rows[i]["priority"].ToString());
        }

        if (user_split_role.Count() == 1)
        {
            for (int i = 0; i < main_roles.Count; i++)
            {

                if (user_split_role[0].ToString() == main_roles[i].ToString())
                {
                    string pr = db.extscalr("select priority from tb_role where role='" + main_roles[i].ToString() + "'");
                    if (pr == "1")
                    {
                        string ro = '%' + main_roles[i].ToString() + '%';
                        ds.Clear();
                        ds = db.discont("select * from tb_role_policy where roles like '" + ro + "'");
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                            {
                                if (access_file.Contains(ds.Tables[0].Rows[j]["filename"].ToString()))
                                {
                                }
                                else
                                {
                                    access_file.Add(ds.Tables[0].Rows[j]["filename"].ToString());
                                }
                            }
                        }

                    }
                    else
                    {
                        ds.Clear();
                        string ro = '%' + main_roles[i].ToString() + '%';
                        ds = db.discont("select * from tb_role_policy where roles like '" + ro + "'");
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                            {
                                if (access_file.Contains(ds.Tables[0].Rows[j]["filename"].ToString()))
                                {
                                }
                                else
                                {
                                    access_file.Add(ds.Tables[0].Rows[j]["filename"].ToString());
                                }
                            }
                        }

                    }


                }
            }

        }

        if (user_split_role.Count() == 2)
        {
            for (int i = 0; i < main_sub_roles.Count; i++)
            {

                if (user_split_role[1].ToString() == main_sub_roles[i].ToString())
                {
                    string pr = db.extscalr("select priority from tb_Sub_main_role where sub_main_role='" + main_sub_roles[i].ToString() + "' and role='" + user_split_role[0].ToString() + "'");
                    if (pr == "1")
                    {
                        string tot_rol = '%' + user_split_role[0].ToString() + ',' + user_split_role[1].ToString() + '%';
                        ds.Clear();
                        ds = db.discont2("select * from tb_role_policy where roles like '" + tot_rol + "'");
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                            {
                                if (access_file.Contains(ds.Tables[0].Rows[j]["filename"].ToString()))
                                {
                                }
                                else
                                {
                                    access_file.Add(ds.Tables[0].Rows[j]["filename"].ToString());
                                }

                            }
                        }
                    }
                    else
                    {
                        DataSet ds4 = new DataSet();
                        ds4.Clear();
                        ds4 = db.discont2("select * from tb_sub_main_role where role='" + user_split_role[0].ToString() + "'  and priority>='" + int.Parse(pr) + "'");
                        for (int role_c = 0; role_c < ds4.Tables[0].Rows.Count; role_c++)
                        {
                            string tot_role = '%' + user_split_role[0] + ',' + ds4.Tables[0].Rows[role_c]["sub_main_role"].ToString() + '%';
                            ds = db.discont("select * from tb_role_policy where roles like '" + tot_role + "' ");
                            if (ds.Tables[0].Rows.Count != 0)
                            {
                                for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                                {
                                    if (access_file.Contains(ds.Tables[0].Rows[j]["filename"].ToString()))
                                    {
                                    }
                                    else
                                    {
                                        access_file.Add(ds.Tables[0].Rows[j]["filename"].ToString());
                                    }

                                }



                            }

                        }

                    }

                }
            }
        }


        if (user_split_role.Count() > 2)
        {
            foreach (KeyValuePair<string, string> dict in sub_of_main_sub_role)
            {
                string keyss = dict.Key.ToString();
                if (user_split_role[2].ToString() == dict.Key.ToString())
                {
                    if (dict.Value.ToString() == "1")
                    {
                        string policy_role1 = user_split_role[1].ToString() + "," + user_split_role[2].ToString();

                        string plicy2 = db.extscalr("select sub_role from tb_subroles_of_subrole where priority='2'");
                        string plicy3 = db.extscalr("select sub_role from tb_subroles_of_subrole where priority='3'");
                        string plicy4 = db.extscalr("select sub_role from tb_subroles_of_subrole where priority='1'");
                        string policy_role6 = user_split_role[1].ToString() + "," + plicy4;

                        string policy_role2 = user_split_role[1].ToString() + "," + plicy2;
                        string policy_role3 = user_split_role[1].ToString() + "," + plicy3;
                        string policy_role4 = user_split_role[0].ToString() + ',' + user_split_role[1].ToString() + "," + plicy2;
                        string policy_role5 = user_split_role[0].ToString() + ',' + user_split_role[1].ToString() + "," + plicy3;
                        string policy_role7 = user_split_role[0].ToString() + ',' + user_split_role[1].ToString() + "," + plicy4;

                        ds.Clear();
                        ds = db.discont("select * from tb_role_policy where roles='" + policy_role1 + "' or roles='" + policy_role2 + "' or roles='" + policy_role3 + "' or roles='" + policy_role4 + "' or roles='" + policy_role5 + "' or roles='" + policy_role6 + "' or roles='" + policy_role7 + "'");
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                            {
                                if (access_file.Contains(ds.Tables[0].Rows[j]["filename"].ToString()))
                                {
                                }
                                else
                                {
                                    access_file.Add(ds.Tables[0].Rows[j]["filename"].ToString());
                                }
                            }
                        }
                    }
                    else if (dict.Value.ToString() == "2")
                    {
                        string policy_role1 = user_split_role[1].ToString() + "," + user_split_role[2].ToString();
                        string policy_role5 = user_split_role[0].ToString() + "," + user_split_role[1].ToString() + "," + user_split_role[2].ToString();


                        string plicy3 = db.extscalr("select sub_role from tb_subroles_of_subrole where priority='3'");

                        string policy_role3 = user_split_role[1].ToString() + "," + plicy3;
                        string policy_role4 = user_split_role[0].ToString() + ',' + user_split_role[1].ToString() + "," + plicy3;


                        ds.Clear();
                        ds = db.discont("select * from tb_role_policy where roles='" + policy_role1 + "' or roles='" + policy_role3 + "' or roles='" + policy_role4 + "' or roles='" + policy_role5 + "' ");
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                            {
                                if (access_file.Contains(ds.Tables[0].Rows[j]["filename"].ToString()))
                                {
                                }
                                else
                                {
                                    access_file.Add(ds.Tables[0].Rows[j]["filename"].ToString());
                                }
                            }
                        }
                    }
                    else if (dict.Value.ToString() == "3")
                    {
                        string policy_role1 = user_split_role[1].ToString() + "," + user_split_role[2].ToString();
                        string policy_role2 = user_split_role[0].ToString() + "," + user_split_role[1].ToString() + "," + user_split_role[2].ToString();





                        ds.Clear();
                        ds = db.discont("select * from tb_role_policy where roles='" + policy_role1 + "' or roles='" + policy_role2 + "' ");
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                            {
                                if (access_file.Contains(ds.Tables[0].Rows[j]["filename"].ToString()))
                                {
                                }
                                else
                                {
                                    access_file.Add(ds.Tables[0].Rows[j]["filename"].ToString());
                                }
                            }
                        }
                       
                    }
                }
            }
        }


        if (access_file.Count != 0)
        {
            for (int i = 0; i < access_file.Count; i++)
            {
                bool b = db.extnon("insert into tb_temp_files values('" + access_file[i].ToString() + "')");
            }
        }
        if (access_file.Count == 0)
        {
            
                        

                            DataSet ds6 = new DataSet();
                            ds6 = db.discont("select distinct fname from tb_upload");
                            for (int lm = 0; lm < ds6.Tables[0].Rows.Count; lm++)
                            {

                                if (access_file.Contains(ds6.Tables[0].Rows[lm]["fname"].ToString()))
                                {


                                }
                                else
                                {

                                    access_file.Add(ds6.Tables[0].Rows[lm]["fname"].ToString());
                                }


                            }
                            for (int i = 0; i < access_file.Count; i++)
                            {
                                string alrady = db.extscalr("select fnames from tb_temp_files  where fnames='" + access_file[i].ToString() + "'");
                                if (alrady == "")
                                {
                                    bool b = db.extnon("insert into tb_temp_files values('" + access_file[i].ToString() + "')");

                                }
                               
                                
                            }

                            goto La;


        }


        ds.Clear();
        ds = db.discont("select m.name,u.fname,u.discription,u.Date,u.fid from tb_upload u,tb_temp_files t,tb_manage_employee m where  (m.username=u.owner_name) and (u.owner_name!='" + Session["user"].ToString() + "') and (u.e_status='0' or u.e_status='1') and u.fname not in(select fnames from tb_temp_files) ");
        ds2.Clear();
        if (user_split_role.Count() == 3)
        {

        }
        else
        {

            ds2 = db.discont1(" truncate table tb_temp_files");
        }
        ds2.Clear();
       
        ds2 = db.discont("truncate table tb_temp_files");
        for (int j = 0; j < ds.Tables[0].Rows.Count;j++)
        {
           
            string fn = db.extscalr("select fnames from tb_temp_files where fnames='"+ds.Tables[0].Rows[j]["fname"].ToString()+"'");
            if (fn == "")
            {
                bool b = db.extnon("insert into tb_temp_files values('" + ds.Tables[0].Rows[j]["fname"].ToString() + "')");
            }
            //ds2.Clear();
            //ds2 = db.discont2("select fnames from tb_temp_files where fnames='" + ds.Tables[0].Rows[j]["fname"].ToString() + "'");
            //DataSet ds7 = new DataSet();


            //if (ds2.Tables[0].Rows.Count == 0)
            //{

            //    ds2 = db.discont1("insert into tb_temp_files values('" + ds.Tables[0].Rows[j]["fname"].ToString() + "')");
            //    ds2.Clear();
            //}
            //else
            //{
            //    ds2.Clear();
            //    ds2 = db.discont("truncate table tb_temp_files");


            //}

        }
    La: ds.Clear();
      ds = db.discont("select distinct u.fname,m.name,u.discription,u.Date,u.fid,u.owner_name from tb_upload u,tb_temp_files t,tb_manage_employee m where  (m.username=u.owner_name) and (u.owner_name!='" + Session["user"].ToString() + "') and  u.e_status='1' and u.fname  in(select fnames from tb_temp_files) ");
        int h = ds.Tables[0].Rows.Count;
        GridView1.DataSource = ds;
        GridView1.DataBind();


    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ds.Clear();
        string fname = ((Label)GridView1.Rows[e.RowIndex].Cells[5].FindControl("label1")).Text;
        string uname = ((Label)GridView1.Rows[e.RowIndex].Cells[5].FindControl("label2")).Text;

        ds = db.discont("select fname,request_st from tb_requested_files where fname='" + fname + "' and request_by='" + Session["user"].ToString() + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["st"] = ds.Tables[0].Rows[0]["request_st"].ToString();
            if (Session["st"] == "1")
            {

                RegisterStartupScript("", "<script Language=JavaScript>alert('You Already Send an Request to this file')</Script>");


            }
            else
            {

                ds1.Clear();
                ds1 = db.discont("delete from tb_requested_files where fname='" + fname + "' and request_by='" + Session["user"].ToString() + "'");
                ds1.Clear();
                string un = db.extscalr("select username from tb_login where username='"+uname+"'");
                if (un == "")
                {
                    ds1 = db.discont("insert into tb_requested_files values('" + fname + "','" + uname + "','" + Session["user"].ToString() + "','" + DateTime.Now.ToString() + "','0','2')");
                    RegisterStartupScript("", "<script Language=JavaScript>alert('Send Request to this file')</Script>");
                }
                else
                {


                    ds1 = db.discont("insert into tb_requested_files values('" + fname + "','" + uname + "','" + Session["user"].ToString() + "','" + DateTime.Now.ToString() + "','0','1')");
                    RegisterStartupScript("", "<script Language=JavaScript>alert('Send Request to this file')</Script>");
                }
            }



        }
        else
        {
             string un = db.extscalr("select username from tb_login where username='"+uname+"'");
             if (un == "")
             {
                 ds1 = db.discont("insert into tb_requested_files values('" + fname + "','" + uname + "','" + Session["user"].ToString() + "','" + DateTime.Now.ToString() + "','0','2')");
                 RegisterStartupScript("", "<script Language=JavaScript>alert('Send Request to this file')</Script>");
             }
             else
             {
                 ds1.Clear();
                 ds1 = db.discont("insert into tb_requested_files values('" + fname + "','" + uname + "','" + Session["user"].ToString() + "','" + DateTime.Now.ToString() + "','0','1')");
                 RegisterStartupScript("", "<script Language=JavaScript>alert('Send Request to this file')</Script>");

             }
        }
    }
}