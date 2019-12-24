namespace PortfolioV3.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Abouts",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        Level = c.String(nullable: false),
                        Description = c.String(nullable: false),
                        ImageName = c.String(nullable: false),
                        Address = c.String(nullable: false),
                        Email = c.String(nullable: false),
                        Phone = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Socials",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        AboutID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Abouts", t => t.AboutID, cascadeDelete: true)
                .Index(t => t.AboutID);
            
            CreateTable(
                "dbo.Pictures",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        ProjectID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Projects", t => t.ProjectID, cascadeDelete: true)
                .Index(t => t.ProjectID);
            
            CreateTable(
                "dbo.Projects",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        ImageName = c.String(nullable: false),
                        Title = c.String(nullable: false),
                        Decription = c.String(nullable: false),
                        MainImage = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Services",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        IconName = c.String(nullable: false),
                        Title = c.String(nullable: false),
                        Decription = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Skills",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        Percentage = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Pictures", "ProjectID", "dbo.Projects");
            DropForeignKey("dbo.Socials", "AboutID", "dbo.Abouts");
            DropIndex("dbo.Pictures", new[] { "ProjectID" });
            DropIndex("dbo.Socials", new[] { "AboutID" });
            DropTable("dbo.Skills");
            DropTable("dbo.Services");
            DropTable("dbo.Projects");
            DropTable("dbo.Pictures");
            DropTable("dbo.Socials");
            DropTable("dbo.Abouts");
        }
    }
}
