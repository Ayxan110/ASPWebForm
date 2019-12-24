using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PortfolioWebFormV3.Models.Tables
{
    public class Skill
    {
        public int ID { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Percentage { get; set; }
    }
}