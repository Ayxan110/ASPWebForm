using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PortfolioWebFormV2._0.Models.Tables
{
    public class Project
    {
        public int ID { get; set; }
        [Required]
        public string ImageName { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Decription { get; set; }
        public ICollection<Picture> Pictures { get; set; }
        [Required]
        public string MainImage { get; set; }
    }
}