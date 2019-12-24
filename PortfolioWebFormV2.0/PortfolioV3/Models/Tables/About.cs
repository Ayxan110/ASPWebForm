using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PortfolioWebFormV3.Models.Tables
{
    public class About
    {
        public int ID { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Level { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        public string ImageName { get; set; }
        [Required]
        public string Address { get; set; }
        [Required]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        [Phone]
        public string Phone { get; set; }
        public ICollection<Social> Socials { get; set; }
    }
}