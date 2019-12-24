using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PortfolioWebFormV2._0.Models.Tables
{
    public class Service
    {
        public int ID { get; set; }
        [Required]
        public string IconName { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Decription { get; set; }
    }
}