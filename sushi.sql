USE [MySushi]
GO
/****** Object:  Table [dbo].[AboutShop]    Script Date: 3/25/2019 1:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutShop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](1050) NOT NULL,
	[Tel] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](500) NOT NULL,
	[OpeningHours] [nvarchar](500) NOT NULL,
	[PhotoPath] [nvarchar](500) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 3/25/2019 1:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [nvarchar](500) NOT NULL,
	[ShortDescription] [nvarchar](max) NOT NULL,
	[FullDescription] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sushi]    Script Date: 3/25/2019 1:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sushi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhotoPath] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[FullDescription] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AboutShop] ON 

INSERT [dbo].[AboutShop] ([Id], [Address], [Tel], [Email], [OpeningHours], [PhotoPath]) VALUES (1, N'The Sushi Restaurant<br/>New York, NY, USA', N'0969563145', N'sputniksweetheart@gmail.com', N'Monday Closed<br/>Tuesday 12 - 22<br/>Wednesday 12 - 22<br/>Thursday 12 - 22<br/>Friday 11 - 23<br/>Saturday 11 - 23<br/>Sunday 11 - 22', N'map/map.png')
SET IDENTITY_INSERT [dbo].[AboutShop] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (2, N'Menu 1', N'15.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (4, N'Menu 2', N'20.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (5, N'Menu 2', N'25.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (7, N'Menu 4', N'35.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (8, N'Menu 5', N'45.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (9, N'Menu 6', N'50.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (10, N'Menu 7', N'55.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (11, N'Menu 8', N'60.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (12, N'Menu 9', N'65.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (13, N'Menu 10', N'70.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([Id], [Name], [Price], [ShortDescription], [FullDescription]) VALUES (14, N'Menu 11', N'75.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[Sushi] ON 

INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (1, N'Intro Sushi', N'sushi/sushi0.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (2, N'
24 types of sushi rolls
', N'sushi/sushi1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (4, N'Sushi 2', N'sushi/sushi2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (5, N'Sushi 3', N'sushi/sushi3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (6, N'Sushi 4', N'sushi/sushi4.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (8, N'Sushi 5', N'sushi/sushi5.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (9, N'Sushi 6', N'sushi/sushi6.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (10, N'Sushi 7', N'sushi/sushi7.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (11, N'Sushi 8', N'sushi/sushi8.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
INSERT [dbo].[Sushi] ([Id], [Name], [PhotoPath], [Description], [FullDescription]) VALUES (12, N'Sushi 9', N'sushi/sushi9.jog', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

')
SET IDENTITY_INSERT [dbo].[Sushi] OFF
