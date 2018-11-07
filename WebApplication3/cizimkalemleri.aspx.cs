using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication3
{
    public partial class cizimkalemleri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source=SHYLQ\MSSQLSERVER1;Initial Catalog=dbKırtasiye;User ID=sa;Password=12345678");
            baglanti.Open();
            SqlDataAdapter dapt = new SqlDataAdapter("select * from viewcizimkalem", baglanti);

            DataTable dt = new DataTable();
            dapt.Fill(dt);

            Repeater_vitrin.DataSource = dt; //repeater'ın veri kaynağı dt'dir.
            Repeater_vitrin.DataBind(); // Repeater'ı alacağın bilgilerle doldur.
            baglanti.Close();
        }
    }
}