using Portfolio.Models;
using Portfolio.Models.Tables;
using System;


namespace Portfolio
{
    public partial class WebSite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (MyDbContext db = new MyDbContext())
            {
                foreach(var item in db.Infos)
                {
                    introTitle.InnerText = item.Title;
                    introDesc.InnerText = item.Description;
                    introImg.Src = $"~/img/{item.ImageName}";
                    introPhone.InnerText = item.PhoneNumber;
                }
            }
        }
    }
}