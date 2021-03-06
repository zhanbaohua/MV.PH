USE [News]
GO
/****** Object:  Table [dbo].[T_ArticleAttachment]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ArticleAttachment](
	[ArticleAttachmentID] [varchar](32) NOT NULL,
	[ArticleInfoID] [varchar](32) NOT NULL,
	[FileName] [varchar](100) NULL,
	[PhysicsName] [varchar](255) NULL,
	[FilePriview] [varchar](255) NULL,
	[ThumbnailthumbnailThumbnail] [varchar](255) NULL,
	[FileSize] [varchar](50) NULL,
	[FileType] [varchar](50) NULL,
	[FileRemark] [varchar](255) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_T_ArticleAttachment] PRIMARY KEY CLUSTERED 
(
	[ArticleAttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ArticleInColumn]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ArticleInColumn](
	[ColumnID] [varchar](32) NOT NULL,
	[ArticleInfoID] [varchar](32) NOT NULL,
 CONSTRAINT [PK_T_ArticleInColumn] PRIMARY KEY CLUSTERED 
(
	[ColumnID] ASC,
	[ArticleInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ArticleInfo]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ArticleInfo](
	[ArticleInfoID] [varchar](32) NOT NULL,
	[ColumnID] [varchar](32) NOT NULL,
	[ColumnTreeID] [varchar](50) NULL,
	[Description] [varchar](2000) NULL,
	[Keywords] [varchar](200) NULL,
	[ArtUrl] [varchar](100) NULL,
	[PhysicsName] [varchar](50) NULL,
	[ArticleNumber] [varchar](50) NULL,
	[ArticleTitle] [varchar](255) NULL,
	[ArticleContent] [text] NULL,
	[ArticleType] [char](10) NULL,
	[ArticleSource] [varchar](50) NULL,
	[IsToppest] [int] NULL,
	[IsRecommend] [int] NULL,
	[ReadCount] [int] NULL,
	[SortNumber] [int] NULL,
	[IsEnable] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[Creator] [varchar](50) NULL,
	[Modifier] [varchar](50) NULL,
	[AuditingStatus] [int] NULL,
	[AuditingDate] [datetime] NULL,
	[AuditingPerson] [varchar](50) NULL,
 CONSTRAINT [PK_T_ArticleInfo] PRIMARY KEY CLUSTERED 
(
	[ArticleInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ArticleRrelated]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ArticleRrelated](
	[ArticleInfoID] [varchar](32) NOT NULL,
	[RrelatedArticleInfoID] [varchar](32) NOT NULL,
 CONSTRAINT [PK_T_ArticleRrelated] PRIMARY KEY CLUSTERED 
(
	[ArticleInfoID] ASC,
	[RrelatedArticleInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Column]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Column](
	[ColumnID] [varchar](32) NOT NULL,
	[ColumnName] [varchar](50) NULL,
	[ColumnParentID] [varchar](32) NULL,
	[ColumnTreeID] [varchar](50) NULL,
	[PhysicsName] [varchar](50) NULL,
	[ColumnGrouping] [varchar](50) NULL,
	[ColumnType] [char](10) NULL,
	[ColumnBigIcon] [varchar](255) NULL,
	[ColumnSmallIcon] [varchar](255) NULL,
	[ManualLink] [varchar](255) NULL,
	[OpenTarget] [varchar](50) NULL,
	[SortNumber] [int] NULL,
	[IsEnable] [int] NULL,
	[IsNeedAuditing] [int] NULL,
	[IsNavigation] [int] NULL,
 CONSTRAINT [PK_T_Column] PRIMARY KEY CLUSTERED 
(
	[ColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Dictionary]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Dictionary](
	[DictionaryID] [varchar](32) NOT NULL,
	[DictionaryCategoryID] [varchar](32) NOT NULL,
	[DictionaryName] [varchar](50) NULL,
	[DictionaryValue] [varchar](50) NULL,
	[DictionaryDescription] [varchar](255) NULL,
	[SortNumber] [int] NULL,
 CONSTRAINT [PK_T_Dictionary] PRIMARY KEY CLUSTERED 
(
	[DictionaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_DictionaryCategory]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_DictionaryCategory](
	[DictionaryCategoryID] [varchar](32) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[PhysicsName] [varchar](50) NULL,
	[Remark] [varchar](255) NULL,
 CONSTRAINT [PK_T_DictionaryCategory] PRIMARY KEY CLUSTERED 
(
	[DictionaryCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ForbiddenWord]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ForbiddenWord](
	[ForbiddenWordID] [varchar](32) NOT NULL,
	[ForbiddenWord] [ntext] NULL,
 CONSTRAINT [PK_T_ForbiddenWord] PRIMARY KEY CLUSTERED 
(
	[ForbiddenWordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Menu]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Menu](
	[MenuID] [varchar](32) NOT NULL,
	[MenuParentID] [varchar](32) NULL,
	[MenuTreeID] [varchar](50) NULL,
	[MenuName] [varchar](50) NULL,
	[LinkAddress] [varchar](255) NULL,
	[MenuBigIcon] [varchar](255) NULL,
	[MenuSmallIcon] [varchar](255) NULL,
	[SortNumber] [int] NULL,
	[IsEnable] [int] NULL,
	[PhysicsName] [varchar](50) NULL,
 CONSTRAINT [PK_T_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Role]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Role](
	[RoleID] [varchar](32) NOT NULL,
	[RoleName] [varchar](50) NULL,
	[RoleDescription] [varchar](255) NULL,
 CONSTRAINT [PK_T_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_RoleColumnPermission]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_RoleColumnPermission](
	[ColumnID] [varchar](32) NOT NULL,
	[RoleID] [varchar](32) NOT NULL,
 CONSTRAINT [PK_T_RoleColumnPermission] PRIMARY KEY CLUSTERED 
(
	[ColumnID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_RoleMenuPermission]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_RoleMenuPermission](
	[MenuID] [varchar](32) NOT NULL,
	[RoleID] [varchar](32) NOT NULL,
 CONSTRAINT [PK_T_RoleMenuPermission] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SystemLog]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SystemLog](
	[SystemLogID] [varchar](32) NOT NULL,
	[LogCategory] [varchar](60) NULL,
	[LogTitle] [varchar](255) NULL,
	[LogContent] [text] NULL,
	[UserName] [varchar](50) NULL,
	[LogIP] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_T_SystemLog] PRIMARY KEY CLUSTERED 
(
	[SystemLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SystemSetting]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SystemSetting](
	[SystemSettingKey] [varchar](100) NULL,
	[SystemSettingValue] [varchar](2000) NULL,
	[SystemSettingGrouping] [varchar](100) NULL,
	[SystemSettingDescription] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_User]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_User](
	[UserID] [varchar](32) NOT NULL,
	[UserName] [varchar](50) NULL,
	[LoginName] [varchar](50) NULL,
	[LoginPassword] [varchar](50) NULL,
	[IsAdmin] [int] NULL,
 CONSTRAINT [PK_T_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_UserFeedback]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_UserFeedback](
	[UserFeedbackID] [varchar](32) NOT NULL,
	[FeedbackTitle] [varchar](50) NULL,
	[FeedbackContent] [text] NULL,
	[FeedbackDate] [datetime] NULL,
	[ReadStatus] [varchar](10) NULL,
	[ReadDate] [datetime] NULL,
 CONSTRAINT [PK_T_UserFeedback] PRIMARY KEY CLUSTERED 
(
	[UserFeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_UserInRole]    Script Date: 2018-4-19 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_UserInRole](
	[UserID] [varchar](32) NOT NULL,
	[RoleID] [varchar](32) NOT NULL,
 CONSTRAINT [PK_T_UserInRole] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[T_ArticleAttachment] ([ArticleAttachmentID], [ArticleInfoID], [FileName], [PhysicsName], [FilePriview], [ThumbnailthumbnailThumbnail], [FileSize], [FileType], [FileRemark], [CreateDate]) VALUES (N'20161023131000066578441668407567', N'20161023130916745482129345662893', N'79797.jpg', N'/resource/attach/image/20161023/20161023130859_9210.jpg', NULL, N'/resource/attach/img_thumb/20161023/x_20161023130900_7810.jpg', N'158.00KB', N'jpg', N'幻灯片', CAST(0x0000A6A800D8FAF4 AS DateTime))
INSERT [dbo].[T_ArticleAttachment] ([ArticleAttachmentID], [ArticleInfoID], [FileName], [PhysicsName], [FilePriview], [ThumbnailthumbnailThumbnail], [FileSize], [FileType], [FileRemark], [CreateDate]) VALUES (N'20161023131000067417712163408020', N'20161023130916745482129345662893', N'240115.jpg', N'/resource/attach/img_syw/20161023/text_20161023130958_9540.jpg', NULL, N'/resource/attach/img_thumb/20161023/x_20161023130959_4480.jpg', N'413.00KB', N'jpg', N'', CAST(0x0000A6A800D8FAF4 AS DateTime))
INSERT [dbo].[T_ArticleAttachment] ([ArticleAttachmentID], [ArticleInfoID], [FileName], [PhysicsName], [FilePriview], [ThumbnailthumbnailThumbnail], [FileSize], [FileType], [FileRemark], [CreateDate]) VALUES (N'20161023131000067662582332485257', N'20161023130916745482129345662893', N'280858.jpg', N'/resource/attach/image/20161023/20161023130901_8440.jpg', NULL, N'/resource/attach/img_thumb/20161023/x_20161023130901_9070.jpg', N'336.00KB', N'jpg', N'幻灯片', CAST(0x0000A6A800D8FAF4 AS DateTime))
INSERT [dbo].[T_ArticleAttachment] ([ArticleAttachmentID], [ArticleInfoID], [FileName], [PhysicsName], [FilePriview], [ThumbnailthumbnailThumbnail], [FileSize], [FileType], [FileRemark], [CreateDate]) VALUES (N'20161023131000067819148075174193', N'20161023130916745482129345662893', N'197687.jpg', N'/resource/attach/image/20161023/20161023130901_3640.jpg', NULL, N'/resource/attach/img_thumb/20161023/x_20161023130901_3720.jpg', N'179.00KB', N'jpg', N'幻灯片', CAST(0x0000A6A800D8FAF4 AS DateTime))
INSERT [dbo].[T_ArticleAttachment] ([ArticleAttachmentID], [ArticleInfoID], [FileName], [PhysicsName], [FilePriview], [ThumbnailthumbnailThumbnail], [FileSize], [FileType], [FileRemark], [CreateDate]) VALUES (N'20161120205806875256150698066919', N'20161120205739974322971634047702', N'79797.jpg', N'/resource/attach/img_syw/20161120/text_20161120205734_4458.jpg', NULL, NULL, N'158.00KB', N'jpg', NULL, CAST(0x0000A6C401598D2F AS DateTime))
INSERT [dbo].[T_ArticleAttachment] ([ArticleAttachmentID], [ArticleInfoID], [FileName], [PhysicsName], [FilePriview], [ThumbnailthumbnailThumbnail], [FileSize], [FileType], [FileRemark], [CreateDate]) VALUES (N'20161120205806883879420256543608', N'20161120205739974322971634047702', N'135238.jpg', N'/resource/attach/img_syw/20161120/text_20161120205801_0328.jpg', NULL, NULL, N'372.00KB', N'jpg', NULL, CAST(0x0000A6C401598D31 AS DateTime))
INSERT [dbo].[T_ArticleAttachment] ([ArticleAttachmentID], [ArticleInfoID], [FileName], [PhysicsName], [FilePriview], [ThumbnailthumbnailThumbnail], [FileSize], [FileType], [FileRemark], [CreateDate]) VALUES (N'20161120210020736493069517841385', N'20161120205943635624167159884696', N'1_0.mp4', N'/resource/attach/file/20161120/20161120205934_4218.mp4', NULL, NULL, N'15.07MB', N'mp4', NULL, CAST(0x0000A6C4015A2A0D AS DateTime))
INSERT [dbo].[T_ArticleInfo] ([ArticleInfoID], [ColumnID], [ColumnTreeID], [Description], [Keywords], [ArtUrl], [PhysicsName], [ArticleNumber], [ArticleTitle], [ArticleContent], [ArticleType], [ArticleSource], [IsToppest], [IsRecommend], [ReadCount], [SortNumber], [IsEnable], [CreateDate], [ModifyDate], [Creator], [Modifier], [AuditingStatus], [AuditingDate], [AuditingPerson]) VALUES (N'20161007210223582603050865524048', N'20161004163239621868753391816436', N'0000200001', NULL, NULL, NULL, NULL, N'20161007', N'似懂非懂1', NULL, N'text      ', N'原创', 0, 0, 0, 99, 1, CAST(0x0000A698015ABA03 AS DateTime), NULL, N'超级管理员', NULL, 2, CAST(0x0000A698015ABA03 AS DateTime), N'system auto')
INSERT [dbo].[T_ArticleInfo] ([ArticleInfoID], [ColumnID], [ColumnTreeID], [Description], [Keywords], [ArtUrl], [PhysicsName], [ArticleNumber], [ArticleTitle], [ArticleContent], [ArticleType], [ArticleSource], [IsToppest], [IsRecommend], [ReadCount], [SortNumber], [IsEnable], [CreateDate], [ModifyDate], [Creator], [Modifier], [AuditingStatus], [AuditingDate], [AuditingPerson]) VALUES (N'20161007210236955355469067802297', N'20161004164033499986790952045529', N'000020000100001', NULL, NULL, NULL, NULL, N'20161007', N'水电费1', NULL, N'text      ', N'原创', 0, 0, 0, 99, 1, CAST(0x0000A698015AC9AF AS DateTime), NULL, N'超级管理员', NULL, 1, CAST(0x0000A698015D1F59 AS DateTime), N'超级管理员')
INSERT [dbo].[T_ArticleInfo] ([ArticleInfoID], [ColumnID], [ColumnTreeID], [Description], [Keywords], [ArtUrl], [PhysicsName], [ArticleNumber], [ArticleTitle], [ArticleContent], [ArticleType], [ArticleSource], [IsToppest], [IsRecommend], [ReadCount], [SortNumber], [IsEnable], [CreateDate], [ModifyDate], [Creator], [Modifier], [AuditingStatus], [AuditingDate], [AuditingPerson]) VALUES (N'20161023130916745482129345662893', N'20161020222256745828229145753787', N'00005', NULL, NULL, NULL, NULL, N'20161023', N'相册咯', NULL, N'image     ', N'原创', 0, 0, 0, 99, 1, CAST(0x0000A6A800D8C830 AS DateTime), CAST(0x0000A6A800D8FAE6 AS DateTime), N'超级管理员', N'超级管理员', 2, CAST(0x0000A6A800D8C830 AS DateTime), N'system auto')
INSERT [dbo].[T_ArticleInfo] ([ArticleInfoID], [ColumnID], [ColumnTreeID], [Description], [Keywords], [ArtUrl], [PhysicsName], [ArticleNumber], [ArticleTitle], [ArticleContent], [ArticleType], [ArticleSource], [IsToppest], [IsRecommend], [ReadCount], [SortNumber], [IsEnable], [CreateDate], [ModifyDate], [Creator], [Modifier], [AuditingStatus], [AuditingDate], [AuditingPerson]) VALUES (N'20161120205739974322971634047702', N'20161003221632167392990696484271', N'00003', N'伊秀华贱人,贱人', N'伊秀华贱人', N'/resource/201611/1120_8358.html', NULL, N'20161120', N'贱人1', N'第三方第三方的是水电费水电费随碟附送是', N'text_list ', N'原创', 0, 0, 0, 99, 1, CAST(0x0000A6C401596DA8 AS DateTime), CAST(0x0000A6C401598D22 AS DateTime), N'超级管理员', N'超级管理员', 2, CAST(0x0000A6C401596DC7 AS DateTime), N'system auto')
INSERT [dbo].[T_ArticleInfo] ([ArticleInfoID], [ColumnID], [ColumnTreeID], [Description], [Keywords], [ArtUrl], [PhysicsName], [ArticleNumber], [ArticleTitle], [ArticleContent], [ArticleType], [ArticleSource], [IsToppest], [IsRecommend], [ReadCount], [SortNumber], [IsEnable], [CreateDate], [ModifyDate], [Creator], [Modifier], [AuditingStatus], [AuditingDate], [AuditingPerson]) VALUES (N'20161120205943635624167159884696', N'20161003221710910568809180498164', N'00004', N'视频', N'视频', N'/resource/201611/1120_6458.html', NULL, N'20161120', N'视频', N'水电费地方水电费水电费多福多寿', N'video     ', N'原创', 0, 0, 0, 99, 1, CAST(0x0000A6C40159FE93 AS DateTime), CAST(0x0000A6C4015A29F1 AS DateTime), N'超级管理员', N'超级管理员', 2, CAST(0x0000A6C40159FE97 AS DateTime), N'system auto')
INSERT [dbo].[T_Column] ([ColumnID], [ColumnName], [ColumnParentID], [ColumnTreeID], [PhysicsName], [ColumnGrouping], [ColumnType], [ColumnBigIcon], [ColumnSmallIcon], [ManualLink], [OpenTarget], [SortNumber], [IsEnable], [IsNeedAuditing], [IsNavigation]) VALUES (N'20161003221632167392990696484271', N'关于我们', NULL, N'00003', NULL, NULL, N'text_list ', NULL, NULL, NULL, N'_self', 99, 1, 0, 1)
INSERT [dbo].[T_Column] ([ColumnID], [ColumnName], [ColumnParentID], [ColumnTreeID], [PhysicsName], [ColumnGrouping], [ColumnType], [ColumnBigIcon], [ColumnSmallIcon], [ManualLink], [OpenTarget], [SortNumber], [IsEnable], [IsNeedAuditing], [IsNavigation]) VALUES (N'20161003221659237811036745354687', N'成功案例', NULL, N'00002', NULL, NULL, N'text_image', NULL, NULL, NULL, N'_self', 99, 1, 0, 1)
INSERT [dbo].[T_Column] ([ColumnID], [ColumnName], [ColumnParentID], [ColumnTreeID], [PhysicsName], [ColumnGrouping], [ColumnType], [ColumnBigIcon], [ColumnSmallIcon], [ManualLink], [OpenTarget], [SortNumber], [IsEnable], [IsNeedAuditing], [IsNavigation]) VALUES (N'20161003221710910568809180498164', N'教程视频', NULL, N'00004', NULL, NULL, N'video     ', NULL, NULL, NULL, N'_self', 99, 1, 0, 1)
INSERT [dbo].[T_Column] ([ColumnID], [ColumnName], [ColumnParentID], [ColumnTreeID], [PhysicsName], [ColumnGrouping], [ColumnType], [ColumnBigIcon], [ColumnSmallIcon], [ManualLink], [OpenTarget], [SortNumber], [IsEnable], [IsNeedAuditing], [IsNavigation]) VALUES (N'20161004163239621868753391816436', N'似懂非懂', N'20161003221659237811036745354687', N'0000200001', NULL, NULL, N'text_list ', NULL, NULL, NULL, N'_self', 99, 1, 0, 1)
INSERT [dbo].[T_Column] ([ColumnID], [ColumnName], [ColumnParentID], [ColumnTreeID], [PhysicsName], [ColumnGrouping], [ColumnType], [ColumnBigIcon], [ColumnSmallIcon], [ManualLink], [OpenTarget], [SortNumber], [IsEnable], [IsNeedAuditing], [IsNavigation]) VALUES (N'20161004164033499986790952045529', N'水电费', N'20161004163239621868753391816436', N'000020000100001', NULL, NULL, N'text      ', NULL, NULL, NULL, N'_self', 99, 1, 1, 1)
INSERT [dbo].[T_Column] ([ColumnID], [ColumnName], [ColumnParentID], [ColumnTreeID], [PhysicsName], [ColumnGrouping], [ColumnType], [ColumnBigIcon], [ColumnSmallIcon], [ManualLink], [OpenTarget], [SortNumber], [IsEnable], [IsNeedAuditing], [IsNavigation]) VALUES (N'20161006235835852511922214543383', N'666', N'20161003221659237811036745354687', N'0000200002', NULL, NULL, N'text_list ', NULL, NULL, NULL, N'_self', 99, 1, 0, 1)
INSERT [dbo].[T_Column] ([ColumnID], [ColumnName], [ColumnParentID], [ColumnTreeID], [PhysicsName], [ColumnGrouping], [ColumnType], [ColumnBigIcon], [ColumnSmallIcon], [ManualLink], [OpenTarget], [SortNumber], [IsEnable], [IsNeedAuditing], [IsNavigation]) VALUES (N'20161020222256745828229145753787', N'相册', NULL, N'00005', NULL, NULL, N'image     ', NULL, NULL, NULL, N'_self', 99, 1, 0, 1)
INSERT [dbo].[T_Column] ([ColumnID], [ColumnName], [ColumnParentID], [ColumnTreeID], [PhysicsName], [ColumnGrouping], [ColumnType], [ColumnBigIcon], [ColumnSmallIcon], [ManualLink], [OpenTarget], [SortNumber], [IsEnable], [IsNeedAuditing], [IsNavigation]) VALUES (N'20170507095511816410967631382161', N'sdfsdfsdf', NULL, N'00006', NULL, NULL, N'text_list ', NULL, NULL, NULL, NULL, 99, 1, 0, 1)
INSERT [dbo].[T_Column] ([ColumnID], [ColumnName], [ColumnParentID], [ColumnTreeID], [PhysicsName], [ColumnGrouping], [ColumnType], [ColumnBigIcon], [ColumnSmallIcon], [ManualLink], [OpenTarget], [SortNumber], [IsEnable], [IsNeedAuditing], [IsNavigation]) VALUES (N'20170507095513284817010111894706', N'sdfsdfsdf', NULL, N'00007', NULL, NULL, N'text_list ', NULL, NULL, NULL, NULL, 99, 1, 0, 1)
INSERT [dbo].[T_ForbiddenWord] ([ForbiddenWordID], [ForbiddenWord]) VALUES (N'1', N'你妹的dssfds !1dfsdfs')
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003180852021517638811772109', NULL, NULL, N'资讯管理', NULL, N'&#xe616;', NULL, 0, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003180950864991551180368289', N'20161003180852021517638811772109', NULL, N'资讯列表', N'/Article/ArticleList', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003181621378154561477518507', NULL, NULL, N'系统管理', NULL, N'&#xe61d;', NULL, 66, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003181646362713750474819273', N'20161003181621378154561477518507', NULL, N'菜单列表', N'/Menu/List', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003181814803966929410851640', N'20161003181621378154561477518507', NULL, N'栏目列表', N'/Column/List', NULL, NULL, 2, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003202410762383524460492650', N'20161003181621378154561477518507', NULL, N'日志列表', N'/Admin/LogList', NULL, NULL, 3, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003202642521482471450575882', NULL, NULL, N'站点管理', NULL, N'&#xe62e;', NULL, 99, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003202848827760707091824683', N'20161003202642521482471450575882', NULL, N'屏蔽词', N'/System/Independent?ForbiddenWordID=1', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003203041545379884026031936', N'20161003202642521482471450575882', NULL, N'字典分类列表', N'/System/DictionaryCategoryList', NULL, NULL, 2, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003203115730313951994941479', N'20161003202642521482471450575882', NULL, N'字典列表', N'/System/DictionaryList', NULL, NULL, 3, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003203144027801533563499740', N'20161003202642521482471450575882', NULL, N'用户反馈列表', N'/System/CommentList', NULL, NULL, 99, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003204533789221837441635888', NULL, NULL, N'系统用户', NULL, N'&#xe60d;', NULL, 33, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003204613298886545951962817', N'20161003204533789221837441635888', NULL, N'用户列表', N'/Admin/AdminManager', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003204700042139302977763321', N'20161003204533789221837441635888', NULL, N'角色管理', N'/Admin/RoleManager', NULL, NULL, 0, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161003205616406328597468621839', N'20161003180852021517638811772109', NULL, N'文章审核', N'/Article/AuditingList', NULL, NULL, 2, 1, NULL)
INSERT [dbo].[T_Menu] ([MenuID], [MenuParentID], [MenuTreeID], [MenuName], [LinkAddress], [MenuBigIcon], [MenuSmallIcon], [SortNumber], [IsEnable], [PhysicsName]) VALUES (N'20161023125846696919783714154344', N'20161003202642521482471450575882', NULL, N'文件上传设置', N'/System/sys_config', NULL, NULL, 99, 1, NULL)
INSERT [dbo].[T_Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (N'20161003204812713948382076409561', N'管理员', N'管理用户')
INSERT [dbo].[T_Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (N'20161003204841804917136763493324', N'编辑账户', N'写文章的')
INSERT [dbo].[T_Role] ([RoleID], [RoleName], [RoleDescription]) VALUES (N'20161003204859232799810530283388', N'审核账户', N'审核文章的')
INSERT [dbo].[T_RoleColumnPermission] ([ColumnID], [RoleID]) VALUES (N'20161020222256745828229145753787', N'20161003204812713948382076409561')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003180852021517638811772109', N'20161003204812713948382076409561')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003180852021517638811772109', N'20161003204841804917136763493324')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003180852021517638811772109', N'20161003204859232799810530283388')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003180950864991551180368289', N'20161003204812713948382076409561')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003180950864991551180368289', N'20161003204841804917136763493324')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003181621378154561477518507', N'20161003204812713948382076409561')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003181646362713750474819273', N'20161003204812713948382076409561')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003181814803966929410851640', N'20161003204812713948382076409561')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003202410762383524460492650', N'20161003204812713948382076409561')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003205616406328597468621839', N'20161003204812713948382076409561')
INSERT [dbo].[T_RoleMenuPermission] ([MenuID], [RoleID]) VALUES (N'20161003205616406328597468621839', N'20161003204859232799810530283388')
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204815049689837146271301', N'添加', N'成功！', N'管理员角色列表》角色添加》添加角色：管理员', N'超级管理员', N'::1', CAST(0x0000A6940156D7A3 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204815460277161317448875', N'添加', N'成功！', N'管理员角色列表》角色添加》添加角色：管理员', N'超级管理员', N'::1', CAST(0x0000A6940156D81E AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204815600456999186835019', N'添加', N'成功！', N'管理员角色列表》角色添加》添加角色：管理员', N'超级管理员', N'::1', CAST(0x0000A6940156D848 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204815823694248443729216', N'添加', N'成功！', N'管理员角色列表》角色添加》添加角色：管理员', N'超级管理员', N'::1', CAST(0x0000A6940156D88B AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204815935336317371453988', N'添加', N'成功！', N'管理员角色列表》角色添加》添加角色：管理员', N'超级管理员', N'::1', CAST(0x0000A6940156D8AD AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204816041107995973530299', N'添加', N'成功！', N'管理员角色列表》角色添加》添加角色：管理员', N'超级管理员', N'::1', CAST(0x0000A6940156D8CC AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204816369315235088264150', N'添加', N'成功！', N'管理员角色列表》角色添加》添加角色：管理员', N'超级管理员', N'::1', CAST(0x0000A6940156D92F AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204826162895883567519235', N'删除', N'成功！', N'管理员角色列表》角色删除》已删除6条数据', N'超级管理员', N'::1', CAST(0x0000A6940156E4A9 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204841829735882093611732', N'添加', N'成功！', N'管理员角色列表》角色添加》添加角色：编辑账户', N'超级管理员', N'::1', CAST(0x0000A6940156F705 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003204859249418679192081150', N'添加', N'成功！', N'管理员角色列表》角色添加》添加角色：审核账户', N'超级管理员', N'::1', CAST(0x0000A69401570B6F AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003205740499803320044560177', N'添加', N'成功！', N'管理员列表》用户添加》添加用户：wwq', N'超级管理员', N'::1', CAST(0x0000A69401596E46 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003205755877940748878454526', N'添加', N'成功！', N'管理员列表》用户添加》添加用户：zhanbh', N'超级管理员', N'::1', CAST(0x0000A6940159804B AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003205816763874620090594536', N'添加', N'成功！', N'用户角色列表》用户角色添加》', N'超级管理员', N'::1', CAST(0x0000A694015998C5 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003205824554283310742476303', N'添加', N'成功！', N'用户角色列表》用户角色添加》', N'超级管理员', N'::1', CAST(0x0000A6940159A1E6 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003205902489934600252105445', N'添加', N'成功！', N'用户角色列表》用户角色添加》', N'超级管理员', N'::1', CAST(0x0000A6940159CE5B AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003205943910756099595453422', N'修改', N'成功！', N'管理员列表》用户编辑》修改用户：zhanbh', N'超级管理员', N'::1', CAST(0x0000A6940159FEE5 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003205956123897028678332552', N'删除', N'成功！', N'用户角色》用户角色数量删除》已删除2条数据', N'超级管理员', N'::1', CAST(0x0000A694015A0D35 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161003211014442371497639451984', N'添加', N'成功！', N'用户角色列表》用户角色添加》', N'超级管理员', N'::1', CAST(0x0000A694015CE1CD AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023122450340166996597363100', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6A800CC937E AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023123514421231175168471490', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6A800CF6ED7 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023125335753780753813629542', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6A800D47976 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023131046498310535496061565', N'登录', N'失败！', N'用户名为：zhanbh实施登录', N'无', N'::1', CAST(0x0000A6A800D9315D AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023131053963360525681152489', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6A800D93A1D AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023131108336135355092963352', N'修改', N'成功！', N'管理员列表》用户编辑》修改用户：zhanbh', N'超级管理员', N'::1', CAST(0x0000A6A800D94AF5 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023131113092502633713981461', N'修改', N'成功！', N'管理员列表》用户编辑》修改用户：wwq', N'超级管理员', N'::1', CAST(0x0000A6A800D95088 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023131123255967035918115705', N'修改', N'成功！', N'管理员列表》用户编辑》修改用户：zbh', N'超级管理员', N'::1', CAST(0x0000A6A800D95C71 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023131131594939958164580248', N'登录', N'成功！', N'用户名为：zbh实施登录', N'詹宝华', N'::1', CAST(0x0000A6A800D96636 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023131457343807162761141281', N'登录', N'成功！', N'用户名为：zbh实施登录', N'詹宝华', N'::1', CAST(0x0000A6A800DA575B AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023132033699196695982046685', N'登录', N'成功！', N'用户名为：zbh实施登录', N'詹宝华', N'::1', CAST(0x0000A6A800DBE17E AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161023132142210384306312151101', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6A800DC31C7 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161025215333373881528642598724', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6AA0168C76C AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161025215415072534977620719751', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6AA0168F84A AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161025215717825387852541014055', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6AA0169CE74 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161106231946578154751631066244', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6B6018075C6 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161109205329252221528571101672', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6B9015847E0 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161109215614657391040397111594', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6B901698476 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161113161640878633396463512856', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BD010C40E8 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161113230113735735191169157359', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BD017B5DA9 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161115202918494243097380876397', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BF0151A3BD AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161115213225882815330367126632', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BF0162FA15 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161115215108940897471726589729', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BF01681E2A AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161115221347897911214025769443', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BF016E56BC AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161115221904913807921829121177', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BF016FCA3B AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161115222314484995200599124127', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BF0170EEA9 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161115222710147541798832436474', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BF017202D4 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161115223423677327215877763372', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BF0173FEE0 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161115224201422429501773007375', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6BF0176174B AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161120144827208883258578468439', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6C400F40563 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161120145202276478735741040312', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6C400F50175 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161120201810006868062436586221', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6C4014E9476 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161120201842110644687035816129', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6C4014EB9F9 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20161120205643859633448158480025', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6C401592BE6 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170101112538731795553478608471', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6EE00BC5173 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170101112548105322664388749108', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6EE00BC5C70 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170101192011230523409011456550', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6EE013EA7B4 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170101192017991398420244200983', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6EE013EAF95 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170102112420814390351072905534', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6EF00BBF630 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170112193438934804656440672491', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6F90142A080 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170114105242570790766745103968', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6FB00B345A3 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170114105456504114133496287827', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A6FB00B3E297 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223356744919386364856157', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A7670173DF50 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223413206572596791762723', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A7670173F29A AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223424922639340193217086', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A76701740055 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223427582764946930966809', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A76701740373 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223427916949184213783983', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A767017403D7 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223428052399886880778714', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A76701740400 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223428181747983383196229', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A76701740426 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223428275880957420954408', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A76701740443 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223430627417814511805166', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76701740704 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502223439323966875612939676', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76701741135 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170502224113412475504137368384', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A7670175DF08 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170503172314529627041546801459', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A768011E88F7 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170503172319372397406226888873', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A768011E8EA4 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170503174402067424213630729326', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76801243EEC AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170503174438433565479887426129', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A7680124698A AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170503174441551551350451747390', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A76801246D31 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507095403003206931671206671', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00A32925 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507102251739569721047848156', N'登录', N'失败！', N'用户名为：admin实施登录', N'无', N'::1', CAST(0x0000A76C00AB1302 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507102255949685224835986804', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00AB17F1 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507102755133590973088479089', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00AC768C AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507102917017915687729292004', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00ACD681 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507102922531562608499791661', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00ACDCF8 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507102928183466175527285974', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00ACE397 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507102951472981467725808502', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00ACFEE2 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507103224128637757686502526', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00ADB1C7 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507103237630839198529519384', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00ADC199 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507103245026157853522214182', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00ADCA44 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507103303423433483016700464', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00ADDFD3 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507103325093754667091885578', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00ADF938 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507103510407580751429394612', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00AE74A2 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507104248672309364538245247', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00B08DAA AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507104256436943836431887222', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00B096C3 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20170507104411321985518042843242', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A76C00B0EE84 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20180419193608170850469833158468', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A8C701430913 AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20180419194735608353634233619365', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A8C701462EAA AS DateTime))
INSERT [dbo].[T_SystemLog] ([SystemLogID], [LogCategory], [LogTitle], [LogContent], [UserName], [LogIP], [CreateDate]) VALUES (N'20180419195048360530135195766339', N'登录', N'成功！', N'用户名为：admin实施登录', N'超级管理员', N'::1', CAST(0x0000A8C70147108C AS DateTime))
INSERT [dbo].[T_SystemSetting] ([SystemSettingKey], [SystemSettingValue], [SystemSettingGrouping], [SystemSettingDescription]) VALUES (N'watermarktype', N'0', N'文件上传设置', NULL)
INSERT [dbo].[T_SystemSetting] ([SystemSettingKey], [SystemSettingValue], [SystemSettingGrouping], [SystemSettingDescription]) VALUES (N'watermarkposition', N'7', N'文件上传设置', NULL)
INSERT [dbo].[T_SystemSetting] ([SystemSettingKey], [SystemSettingValue], [SystemSettingGrouping], [SystemSettingDescription]) VALUES (N'watermarkpic', NULL, N'文件上传设置', NULL)
INSERT [dbo].[T_SystemSetting] ([SystemSettingKey], [SystemSettingValue], [SystemSettingGrouping], [SystemSettingDescription]) VALUES (N'watermarktext', N'詹宝华', N'文件上传设置', NULL)
INSERT [dbo].[T_User] ([UserID], [UserName], [LoginName], [LoginPassword], [IsAdmin]) VALUES (N'20161003205740480409232210223681', N'超级管理员', N'admin', N'C4CA4238A0B923820DCC509A6F75849B', 1)
INSERT [dbo].[T_User] ([UserID], [UserName], [LoginName], [LoginPassword], [IsAdmin]) VALUES (N'20161003205740480409232210223683', N'汪文强', N'wwq', N'C4CA4238A0B923820DCC509A6F75849B', 0)
INSERT [dbo].[T_User] ([UserID], [UserName], [LoginName], [LoginPassword], [IsAdmin]) VALUES (N'20161003205755824262363217794684', N'詹宝华', N'zbh', N'C4CA4238A0B923820DCC509A6F75849B', 0)
INSERT [dbo].[T_UserFeedback] ([UserFeedbackID], [FeedbackTitle], [FeedbackContent], [FeedbackDate], [ReadStatus], [ReadDate]) VALUES (N'20161007210223582603050865524048', N'反馈', N'你妹的', CAST(0x0000A6A800000000 AS DateTime), N'已读', CAST(0x0000A6A800D7CD2C AS DateTime))
INSERT [dbo].[T_UserInRole] ([UserID], [RoleID]) VALUES (N'20161003205740480409232210223683', N'20161003204841804917136763493324')
INSERT [dbo].[T_UserInRole] ([UserID], [RoleID]) VALUES (N'20161003205740480409232210223683', N'20161003204859232799810530283388')
INSERT [dbo].[T_UserInRole] ([UserID], [RoleID]) VALUES (N'20161003205755824262363217794684', N'20161003204812713948382076409561')
INSERT [dbo].[T_UserInRole] ([UserID], [RoleID]) VALUES (N'20161003205755824262363217794684', N'20161003204859232799810530283388')
ALTER TABLE [dbo].[T_ArticleAttachment]  WITH CHECK ADD  CONSTRAINT [FK_T_ArticleAttachment_T_ArticleInfo] FOREIGN KEY([ArticleInfoID])
REFERENCES [dbo].[T_ArticleInfo] ([ArticleInfoID])
GO
ALTER TABLE [dbo].[T_ArticleAttachment] CHECK CONSTRAINT [FK_T_ArticleAttachment_T_ArticleInfo]
GO
ALTER TABLE [dbo].[T_ArticleInColumn]  WITH CHECK ADD  CONSTRAINT [FK_T_ArticleInColumn_T_ArticleInfo] FOREIGN KEY([ArticleInfoID])
REFERENCES [dbo].[T_ArticleInfo] ([ArticleInfoID])
GO
ALTER TABLE [dbo].[T_ArticleInColumn] CHECK CONSTRAINT [FK_T_ArticleInColumn_T_ArticleInfo]
GO
ALTER TABLE [dbo].[T_ArticleInColumn]  WITH CHECK ADD  CONSTRAINT [FK_T_ArticleInColumn_T_Column] FOREIGN KEY([ColumnID])
REFERENCES [dbo].[T_Column] ([ColumnID])
GO
ALTER TABLE [dbo].[T_ArticleInColumn] CHECK CONSTRAINT [FK_T_ArticleInColumn_T_Column]
GO
ALTER TABLE [dbo].[T_ArticleRrelated]  WITH CHECK ADD  CONSTRAINT [FK_T_ArticleRrelated_T_ArticleInfo] FOREIGN KEY([ArticleInfoID])
REFERENCES [dbo].[T_ArticleInfo] ([ArticleInfoID])
GO
ALTER TABLE [dbo].[T_ArticleRrelated] CHECK CONSTRAINT [FK_T_ArticleRrelated_T_ArticleInfo]
GO
ALTER TABLE [dbo].[T_ArticleRrelated]  WITH CHECK ADD  CONSTRAINT [FK_T_ArticleRrelated_T_ArticleInfo1] FOREIGN KEY([RrelatedArticleInfoID])
REFERENCES [dbo].[T_ArticleInfo] ([ArticleInfoID])
GO
ALTER TABLE [dbo].[T_ArticleRrelated] CHECK CONSTRAINT [FK_T_ArticleRrelated_T_ArticleInfo1]
GO
ALTER TABLE [dbo].[T_Dictionary]  WITH CHECK ADD  CONSTRAINT [FK_T_Dictionary_T_DictionaryCategory] FOREIGN KEY([DictionaryCategoryID])
REFERENCES [dbo].[T_DictionaryCategory] ([DictionaryCategoryID])
GO
ALTER TABLE [dbo].[T_Dictionary] CHECK CONSTRAINT [FK_T_Dictionary_T_DictionaryCategory]
GO
ALTER TABLE [dbo].[T_RoleColumnPermission]  WITH CHECK ADD  CONSTRAINT [FK_T_RoleColumnPermission_T_Column] FOREIGN KEY([ColumnID])
REFERENCES [dbo].[T_Column] ([ColumnID])
GO
ALTER TABLE [dbo].[T_RoleColumnPermission] CHECK CONSTRAINT [FK_T_RoleColumnPermission_T_Column]
GO
ALTER TABLE [dbo].[T_RoleColumnPermission]  WITH CHECK ADD  CONSTRAINT [FK_T_RoleColumnPermission_T_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[T_Role] ([RoleID])
GO
ALTER TABLE [dbo].[T_RoleColumnPermission] CHECK CONSTRAINT [FK_T_RoleColumnPermission_T_Role]
GO
ALTER TABLE [dbo].[T_RoleMenuPermission]  WITH CHECK ADD  CONSTRAINT [FK_T_RoleMenuPermission_T_Menu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[T_Menu] ([MenuID])
GO
ALTER TABLE [dbo].[T_RoleMenuPermission] CHECK CONSTRAINT [FK_T_RoleMenuPermission_T_Menu]
GO
ALTER TABLE [dbo].[T_RoleMenuPermission]  WITH CHECK ADD  CONSTRAINT [FK_T_RoleMenuPermission_T_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[T_Role] ([RoleID])
GO
ALTER TABLE [dbo].[T_RoleMenuPermission] CHECK CONSTRAINT [FK_T_RoleMenuPermission_T_Role]
GO
ALTER TABLE [dbo].[T_UserInRole]  WITH CHECK ADD  CONSTRAINT [FK_T_UserInRole_T_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[T_Role] ([RoleID])
GO
ALTER TABLE [dbo].[T_UserInRole] CHECK CONSTRAINT [FK_T_UserInRole_T_Role]
GO
ALTER TABLE [dbo].[T_UserInRole]  WITH CHECK ADD  CONSTRAINT [FK_T_UserInRole_T_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[T_User] ([UserID])
GO
ALTER TABLE [dbo].[T_UserInRole] CHECK CONSTRAINT [FK_T_UserInRole_T_User]
GO
