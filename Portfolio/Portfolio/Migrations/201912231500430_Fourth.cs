namespace Portfolio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Fourth : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Blogs", "IconName", c => c.String());
            DropColumn("dbo.Abouts", "IconName");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Abouts", "IconName", c => c.String());
            DropColumn("dbo.Blogs", "IconName");
        }
    }
}
