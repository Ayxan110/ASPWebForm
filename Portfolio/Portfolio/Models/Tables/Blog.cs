using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portfolio.Models.Tables
{
    public class Blog
    {
        public int ID { get; set; }
        public string ImageName { get; set; }
        public DateTime Date { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string IconName { get; set; }
    }
}