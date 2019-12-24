using System.ComponentModel.DataAnnotations;

namespace PortfolioWebFormV2._0.Models.Tables
{
    public class Picture
    {
        public int ID { get; set; }
        [Required]
        public string Name { get; set; }
        public Project Project { get; set; }
        public int ProjectID { get; set; }
    }
}