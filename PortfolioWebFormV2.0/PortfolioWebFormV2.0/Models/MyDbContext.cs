using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace PortfolioWebFormV2._0.Models
{
    public class MyDbContext : DbContext
    {
        public MyDbContext() : base("myDb") { }
        public DbSet<Models.Tables.About> Infos { get; set; }
        public DbSet<Models.Tables.Service> Services { get; set; }
        public DbSet<Models.Tables.Skill> Skills { get; set; }
        public DbSet<Models.Tables.Project> Projects { get; set; }
        public DbSet<Models.Tables.Picture> Pictures { get; set; }
        public DbSet<Models.Tables.Social> Socials { get; set; }
    }
}