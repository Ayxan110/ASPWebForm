using PortfolioWebFormV2._0.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioWebFormV2._0
{
    public partial class PortfolioForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (MyDbContext db = new MyDbContext())
            {
                foreach (var item in db.Infos)
                {
                    introName.InnerText = item.Name;
                    introDescription.InnerText = item.Description;
                    level.InnerText = item.Level;
                    introImg.Src = $"/image/{item.ImageName}";
                }
            }
        }
    }
}