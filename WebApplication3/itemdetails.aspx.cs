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
    public partial class itemdetails1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string secilenUrunId = Request.QueryString["id"];
            SqlConnection baglanti = new SqlConnection(@"Data Source=SHYLQ\MSSQLSERVER1;Initial Catalog=dbKırtasiye;User ID=sa;Password=12345678");
            baglanti.Open();
            SqlDataAdapter dapt = new SqlDataAdapter("SELECT dbo.tblUrun.urunId,dbo.tbl_Resimler.resimYolu, dbo.tblRenk.renkAd, dbo.tblTur.turAd, dbo.tblUrun.urunAd, CAST(dbo.tblUrun.fiyat AS numeric(10, 2)) AS fiyat, dbo.tblUrun.aciklama FROM  dbo.tbl_Resimler INNER JOIN  dbo.tblUrun ON dbo.tbl_Resimler.urunNoFk = dbo.tblUrun.urunId INNER JOIN     dbo.tblRenk ON dbo.tblUrun.urunRenkFk = dbo.tblRenk.renkId INNER JOIN dbo.tblTur ON dbo.tblUrun.urunTurFk = dbo.tblTur.urunTurId where urunId=" + secilenUrunId, baglanti);
            DataTable dt = new DataTable();
            dapt.Fill(dt);

            Repeaterdetail.DataSource = dt; //repeater'ın veri kaynağı dt'dir.
            Repeaterdetail.DataBind(); // Repeater'ı alacağın bilgilerle doldur.
            baglanti.Close();
        }
    }
}