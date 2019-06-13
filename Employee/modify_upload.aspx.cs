using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;

public partial class CEO_modify_upload : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    dbconect db = new dbconect();
    cloud cs = new cloud();
    rsa_algorithm rsa = new rsa_algorithm();
    string full_path = "";
    mail ma = new mail();
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
            string fname = Session["fn"] + ".txt";
            string content = cs.clouddownload(fname);
            string ekey = db.extscalr("select ekey from tb_upload where fname='" + Session["fn"].ToString() + "'");



            string private_path = Server.MapPath("~/RSA_KEYS/" + Session["fn"] + "/" + Session["fn"].ToString() + ".pri");
            string rsa_decrypt = rsa.RSAdecryption(content, fname, private_path);

            ds.Clear();
            ds = db.discont("select extension from tb_upload where fname='" + Session["fn"].ToString() + "'");
            string ex = ds.Tables[0].Rows[0]["extension"].ToString();

            string decrpt_content = cs.Decrypt(rsa_decrypt, ekey);
            string all_con = decrpt_content;
            if (ex == ".txt" || ex == ".doc")
            {
                full_path = Server.MapPath("~/Employee/download/" + Session["fn"].ToString() + ex);
            }
            else if (ex == ".docx")
            {
                ex = ".doc";
                full_path = Server.MapPath("~/Employee/download/" + Session["fn"].ToString() + ex);

            }
            else
            {

                full_path = Server.MapPath("~/Employee/download/" + Session["fn"].ToString() + ex);

            }

            File.WriteAllText(full_path, decrpt_content);
            TextBox1.Text = decrpt_content;
           


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        ds.Clear();
        string e_key = db.extscalr("select ekey from tb_upload where fname='" + Session["fn"] .ToString()+ "'");
        
    
        enc_string = cld.encrypt(TextBox1.Text, e_key);
        string enc_path = Server.MapPath("~/Employee/files/efile/" + Session["fn"].ToString()+ ".txt");
        File.WriteAllText(enc_path, enc_string);


        bool b = db.extnon("update  tb_upload set e_status='2',date ='"+DateTime.Now.ToString()+"' where fname='" + Session["fn"].ToString() + "'");
      
        if (b == true)
        {
            List<string> ls = new List<string>();
            ds.Clear();
            ds = db.discont("select roles from tb_role_policy where filename='"+Session["fn"].ToString()+"'");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ls.Add(ds.Tables[0].Rows[i]["roles"].ToString());

            }
            for (int i = 0; i < ls.Count; i++)
            {
                ds.Clear();
                ds = db.discont("select role from  tb_login where role='"+ls[i].ToString()+"'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mail ma = new mail();
                    ma.send_msg(" File modified :", Session["fn"].ToString());
                    break;
                }
            }
            TextBox1.Text = null;
          
            RegisterStartupScript("", "<script Language=JavaScript>alert('Successfully Uploaded')</Script>");

        }
    }
}