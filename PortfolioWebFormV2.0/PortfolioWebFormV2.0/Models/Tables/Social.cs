using System.ComponentModel.DataAnnotations;

namespace PortfolioWebFormV2._0.Models.Tables
{
    public class Social
    {
        public int ID { get; set; }
        [Required]
        public string Name { get; set; }
        public About About { get; set; }
        public int AboutID { get; set; }
    }
}