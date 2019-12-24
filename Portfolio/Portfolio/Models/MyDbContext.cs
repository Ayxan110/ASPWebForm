using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Portfolio.Models
{
    public class MyDbContext : DbContext
    {
        public MyDbContext() : base("myDb") { }
        public DbSet<Models.Tables.About> Infos { get; set; }
        public DbSet<Models.Tables.Blog> Blogs { get; set; }
        public DbSet<Models.Tables.Work> Works { get; set; }
    }
}