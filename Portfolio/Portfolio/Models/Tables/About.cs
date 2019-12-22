using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Portfolio.Models.Tables
{
    public class About
    {
        public int ID { get; set; }
        [Required]
        public string ImageName { get; set; }
        [Required]
        [StringLength(60, MinimumLength = 2)]
        public string Title { get; set; }
        [Required]
        [StringLength(500, MinimumLength = 5)]
        public string Description { get; set;}
        [Required]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        [Phone]
        public string PhoneNumber { get; set; }
        [Required]
        public string Address { get; set; }
    }
}