namespace Portfolio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Third : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Abouts", "IconName", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Abouts", "IconName");
        }
    }
}
