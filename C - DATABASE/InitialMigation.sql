USE [CvManagement]
GO
/****** Object:  Table [dbo].[Hobby]    Script Date: 8/9/2018 11:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hobby](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Hobby] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 8/9/2018 11:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[StartedTime] [float] NOT NULL,
	[FinishedTime] [float] NULL,
 CONSTRAINT [PK_dbo.Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectResponsibility]    Script Date: 8/9/2018 11:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectResponsibility](
	[ProjectId] [int] NOT NULL,
	[ResponsibilityId] [int] NOT NULL,
	[CreatedTime] [float] NOT NULL,
 CONSTRAINT [PK_dbo.ProjectResponsibility] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC,
	[ResponsibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectSkill]    Script Date: 8/9/2018 11:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectSkill](
	[ProjectId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProjectSkill] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responsibility]    Script Date: 8/9/2018 11:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responsibility](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedTime] [float] NOT NULL,
	[LastModifiedTime] [float] NULL,
 CONSTRAINT [PK_dbo.Responsibility] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 8/9/2018 11:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedTime] [float] NOT NULL,
	[LastModifiedTime] [float] NULL,
 CONSTRAINT [PK_dbo.Skill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillCategory]    Script Date: 8/9/2018 11:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedTime] [float] NOT NULL,
 CONSTRAINT [PK_dbo.SkillCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillCategorySkillRelationship]    Script Date: 8/9/2018 11:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillCategorySkillRelationship](
	[SkillCategoryId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
	[Point] [int] NOT NULL,
	[CreatedTime] [float] NOT NULL,
 CONSTRAINT [PK_dbo.SkillCategorySkillRelationship] PRIMARY KEY CLUSTERED 
(
	[SkillCategoryId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/9/2018 11:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[Birthday] [float] NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDescription]    Script Date: 8/9/2018 11:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDescription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserDescription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hobby]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Hobby_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Hobby] CHECK CONSTRAINT [FK_dbo.Hobby_dbo.User_UserId]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Project_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_dbo.Project_dbo.User_UserId]
GO
ALTER TABLE [dbo].[ProjectResponsibility]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProjectResponsibility_dbo.Project_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[ProjectResponsibility] CHECK CONSTRAINT [FK_dbo.ProjectResponsibility_dbo.Project_ProjectId]
GO
ALTER TABLE [dbo].[ProjectResponsibility]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProjectResponsibility_dbo.Responsibility_ResponsibilityId] FOREIGN KEY([ResponsibilityId])
REFERENCES [dbo].[Responsibility] ([Id])
GO
ALTER TABLE [dbo].[ProjectResponsibility] CHECK CONSTRAINT [FK_dbo.ProjectResponsibility_dbo.Responsibility_ResponsibilityId]
GO
ALTER TABLE [dbo].[ProjectSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProjectSkill_dbo.Project_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[ProjectSkill] CHECK CONSTRAINT [FK_dbo.ProjectSkill_dbo.Project_ProjectId]
GO
ALTER TABLE [dbo].[ProjectSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProjectSkill_dbo.Skill_SkillId] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skill] ([Id])
GO
ALTER TABLE [dbo].[ProjectSkill] CHECK CONSTRAINT [FK_dbo.ProjectSkill_dbo.Skill_SkillId]
GO
ALTER TABLE [dbo].[SkillCategory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SkillCategory_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[SkillCategory] CHECK CONSTRAINT [FK_dbo.SkillCategory_dbo.User_UserId]
GO
ALTER TABLE [dbo].[SkillCategorySkillRelationship]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SkillCategorySkillRelationship_dbo.Skill_SkillId] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skill] ([Id])
GO
ALTER TABLE [dbo].[SkillCategorySkillRelationship] CHECK CONSTRAINT [FK_dbo.SkillCategorySkillRelationship_dbo.Skill_SkillId]
GO
ALTER TABLE [dbo].[SkillCategorySkillRelationship]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SkillCategorySkillRelationship_dbo.SkillCategory_SkillCategoryId] FOREIGN KEY([SkillCategoryId])
REFERENCES [dbo].[SkillCategory] ([Id])
GO
ALTER TABLE [dbo].[SkillCategorySkillRelationship] CHECK CONSTRAINT [FK_dbo.SkillCategorySkillRelationship_dbo.SkillCategory_SkillCategoryId]
GO
ALTER TABLE [dbo].[UserDescription]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserDescription_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserDescription] CHECK CONSTRAINT [FK_dbo.UserDescription_dbo.User_UserId]
GO
