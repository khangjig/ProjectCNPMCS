USE [ExLoverShopDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/27/2018 6:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/27/2018 6:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](30) NOT NULL,
	[CategoryImage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 6/27/2018 6:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](128) NULL,
	[ProductID] [int] NOT NULL,
	[CommentContent] [nvarchar](max) NOT NULL,
	[TimeComment] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ErrorLogs]    Script Date: 6/27/2018 6:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLogs](
	[ErrorID] [int] IDENTITY(1,1) NOT NULL,
	[ErrorContent] [nvarchar](max) NOT NULL,
	[FunctionName] [nvarchar](max) NOT NULL,
	[OccurDate] [datetime] NOT NULL,
	[Username] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.ErrorLogs] PRIMARY KEY CLUSTERED 
(
	[ErrorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImageUrls]    Script Date: 6/27/2018 6:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageUrls](
	[ImageID] [int] NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImageUrls] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/27/2018 6:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] NOT NULL,
	[Username] [nvarchar](128) NULL,
	[SubCategoryID] [int] NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[UploadDate] [datetime] NOT NULL,
	[Describe] [nvarchar](max) NOT NULL,
	[Quanlity] [int] NOT NULL,
	[Price] [bigint] NOT NULL,
	[SaleStatus] [bit] NOT NULL,
	[Censor] [bit] NOT NULL,
	[Viewed] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Replies]    Script Date: 6/27/2018 6:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Replies](
	[ReplyID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](128) NULL,
	[CommentID] [int] NOT NULL,
	[ReplyContent] [nvarchar](max) NOT NULL,
	[TimeReply] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Replies] PRIMARY KEY CLUSTERED 
(
	[ReplyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 6/27/2018 6:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[SubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.SubCategories] PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/27/2018 6:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [nvarchar](128) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
	[JoiningDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201806270320314_FirstMigration', N'NYCshop.Migrations.Configuration', 0x1F8B0800000000000400E55D5B6FDCB8157E2FD0FF20E8A92DBC1EDB298AAD31DE85D78E0BB7899D6692A07D0A68891E0BD5655617AF8DA2BFAC0FFD49FD0BA56E142F8712296A243B455E32BC1C92E77C3C248FC8CFFFFDF77FD63F3E45A1F388D32C48E233F7F8F0C87570EC257E106FCFDC22BFFFEE7BF7C71F7EFDABF55B3F7A72BEB4E5DE94E548CD383B731FF27C77BA5A65DE038E507618055E9A64C97D7EE825D10AF9C9EAE4E8E88FABE3E31526225C22CB71D61F8B380F225CFD203F2F92D8C3BBBC40E1FBC4C761D6A4939C4D25D5B94111CE76C8C367EECDDF2FB28764775897749DF33040A4171B1CDEBB0E8AE3244739E9E3E9E70C6FF23489B79B1D4940E1A7E71D26E5EE5198E1A6EFA75D71DD611C9D94C35875155B515E91E5496428F0F84DA39795587D94765DAA37A2B9B744C3F97339EA4A7B67EE05CAF136499F5D476CECF4224CCB82A2720FDB2A074E93714021409052FE3B702E8A302F527C16E3224F5178E07C28EEC2C0FB0B7EFE94FC03C7677111866CC748D7481E9740923EA4C90EA7F9F3477C2F74F7FAD275567CFD9528805607EAD603BB8EF33727AE73433A83EE424C71C02861932729FE138E714A6AFB1F509EE39498F1DAC79526A55E28DA2C7FB5AD12009279E43AEFD1D33B1C6FF3073273C8C4B90A9EB0DF26341DF91C0764D6913A795A60A0A37A8D5F4768DBD73AF9AF7DF3EB5587AD7EC4255144946702B8BAC62278AB9B1E05B7AEEA5C6823DE2D8DFB91767CF2BD96ADFB1B223FFDC2D318DB00406B1511479F5788D82F42E5F63F91D586C2B16EFC9228BE4C1E9675831E836D65365839AEF31187557EF610ECEAB5A885F2575AE62A4DA28F49D829A3CDFABA498AD42B4D99C0F99F50BAC5B97EB74A70F4F6A92E2077A84C57F6A6CA84BAA2ED0FA82AB4FD415363097FC000DFD41F68CF99617F7093C483D89ECD176C8A3BFD9555CBAD0C2C967B72069F776182FC72FE9BFB0241D425CEBC34B85B60107F2D501C562B859D1D020F3322FEF07B63111B14929D36CA8BAC95F353421C078ACD17091C67496A2BE54B807FC1BEB114A53765500F3A55EAC5D9729D6F05B225170B9599CCE9B7C245A7CFA62B7B64EFF439B5683B7EA6D612CE5FF074A60B8091A39CFE0862EB9C99EECFE4A095A8EE9D79EC7481A61E942F211D2C6485F87AA26943BD2CBE04C6BB6D8329BC27DC70982E5728CB7E49527FFEE576999DCADB0805E104CDF6B7524E84BD3772EEFB29CEB2F975F8E1A1DA43CFDDECB997078FD87633F3E72488498747EC55B5DDD5DB344DD277C9D6C065B55596705B55DB6316655A71AEE5B86A70B188C755117BE52896715CB79E57A4939CB0F677BA35DF4AB7B897F6D25C86B4C5E073ADF6165580F7731A1A4CD6B6CA1293B56A7BCC64A5156709A0A453ACB1E32220C67BF551C1C81603503452CC93E02B15B042F047BC0B4D4E8255F925B05B353C06BBB4E237F73140FB43C7C07EB354D0A29F021A104EF621807E5A00E65ED5D6575AA29B785C8634EBF8DCC9A241B55871FDEA5215FD305EB9CEB32CF182AA7539AAD09DD6F9E1BC8D7D47E7E85E2346080110EC104F10ECC8DC27FD39737F27696B407C3B3C46BC4AF6B12BFA8FDBF8128738C7CEB9577FFEBF4099877CE0744D7AC1A7109783D372A6A3904C8A8C38B120CE65FF14C45EB043A1C60884BA869FD7CB3ED2D6C49C4BBCC371E99634EC64DF0DDA9AA0C2218DAD570CFCFA5109456F55A8E90DE576A0A16BAC3E1EFB02C07A685F1E913D63D041426FC8D508933D669AA42333A2B2F2D343A0E1DDF62438E4DC3D23B25E377879478787C792482B04B1ADEB584C15C91C851A569BB68DCF8014F19A81CAB2CA3B07CC62D76E51F4F1A2BAA9308CC2E5FD95A2EF3A3657DE0D30429CC224D61D981175BDFE09BE553209DE96F14F50EBB3F927489BAFC03FF12133955D15F1B3CEB05D905A1F2C70D86D36B480CDCF061750A3AF002F52A44A655D75D8AA3370172DD5478D32DAF51AD63455E7E75BD45466790DAB1A1FA951014411B6E9D0D10497F42107877A8657CAE5F106F65CEBDCAFBA6D6D0436D014D6CDCF86B4DE25110AC959636C9995506E7BB66550D6E28B5B03EBF869190E273570DAEE9B9EDE258F38DD3C24BBCB3BE07309E962F3C5246BE2E0A2E54BA91B9CF381B60067AED3456CA530A7841F414A3D6F4019AD8F1A10D1387948045D56074474111A78385C986C4056696A48463D23062AB79B2C4840B7631D10D2AE9890906E033320A4C439AC8CC65308F5192C427A65EFD33145FBEEDD89134533964F072299559A7A9AE17B46A25A1C371B49590DED80F77C65E50C0694B543CACC40BA49D3A395BE20B2AE9A2DF452CF18B542E4D56E389A395605DC3AC7086966BBF598A5C73DF2B07B03735AA13916C8D4EFF60C5E158CD350A2850A54665787888683446347BE6FB30BF77FE441F7443B34E21D4C8F9995A567DC7084630F0397EF8FC863EF3FB9EB9DDD99AE33CB628F0694A7F5FD805EF8962F2BA1E708A97188643A4D17F49EC1C3E7468DC9337AE42ADCABCE3343279A51039E0AECEDD505BAF5A679EB55CD3BD024AC570A8282F57BB4DB05F196212C68529C4DCD5670F1DDC6FC297F54CB587919F0A29FF696B69427299904426E697C1F5F0569965FA21CDDA1F23ACB851F49C5F883866297D9B6259D25645BB5DBCFB64AF9FFE60A3D4C2E009CC89ABA57645C257EAB2162795F0754754ACA0814A2B4E769CC451216513C7CFF60585A7DB7169277039E1E35FA573FE007BB5867C932D72B415FD29955B28A140CE2EDAC8782D6B9D8600076943A1050D5546AB80BF970DA554782D4B2BAF8002B4A1D35504B62429EACA89E48E8E008E9C53A6098344F5F2AF7729E15C965BC1854D2C5DE02958A0D8C062A9535E7B0FF74A814AEC0B0E2066EC70C8E5476995C86C1689947DCDC7899747D69DD3B6E565697AA2FA97B97CD4AEA524D3456BDCDE6755525195892799CCD99914937F030CD036DCEB33469FA52DA07DAAC9436EDC5F8113E4A62E14C7AE2401A0EA5B7F69CD377DA0D94F4C258D1479553580814F509C3020CD00949030570B5197627F4B92DE78468AABE24D9CAA6FEBE790ACB8A6892F465D40F5D5911758ABE04FA8A951542130D345B3F4AE5D4FA003C55EAED4BF3C294EB4A93A62F857B61CA8AE2325ECC14EC026316D3907E9B319F8AEAAA4AE0B6EF4E39E8C2AF5807E5809B7B3E475F22FF449495C8E7E84B649E7DB2E298E47D6E6717826417A9B48024FDD2670E497555956AE9EB4A56B38AB79ABD264A058F0C7CAAECAB3FE6F4B39091DBF0A48589EB2FB1E6F655D4532E72EDF3436E9D831F33F61A77B26DC494A117FEEDA034C491018EE623B918DE00BF9DD720DA2308A5B8B45884B64EE3D3421C7ADDC48487D974A520715DC47588921E03BF0C106F9EB31C47876581C3CDCFE1059906A582DB02EF511CDCE32CAF1FDBBA2747C7270229EFCB21C85D65991F023175882597B7D70294B541A9E5C197C1238962EB85BD6E287E44A9F7805289A7760A12DA56F86F22F4F4DBA98965C7D868429AD7BD58487CCCDD5947BA03761DFBF8E9CCFD6755F3D4B9FEDBD7B6F281739B92B979EA1C39FF92DF81773D1AC5001B8094BE72676845BE379330C79AC04A9609B0C1FAC47AF984AC3AF0F5F5D999472B5BBD760482747ABA28E42A5B21910B544F01439987541385B2289187D4AE6322B7E8181471CCA277C1768C0C995AF42E3097C2D38A8E91C0538A0E4B18458E39C253EC83A672AFDB0EF3E93BD1DC55505AEE6577025CEB9F999011DCD1098E7714DFA29D5B99CE7372BC884A51A6DC875682047E43BBF1719C8576A2781EC231DE0FE0209C7AB7044755E72504DC8BE3833800EDEC09F1FAD94994B8FA46EF4216DE399AB3E88D80DB549476A376E6E9B0D31B473EB7CF339D2135DC089B4C45D5F6FF71A087E3183A7BB1B6A2D5560C627FB33FCE738C6E96CB93257759F73A686E2631F085D478BEB4712419EACB2E26115367240BD9B7C73A36C2947B02157DFC318664CA96E56E1912B16F8B31AC7EBE31E6DDF79220505C9AD23F40EFCDF0AF84FBCBC0647BF21C42B0DD8CFEC9864B6E7E3AAF57C174A2C5DF3585B798DFF0F37A0B13A3BF0A26AE298CDE511F8C62F07A0566EFB940F8E2ECAECDA8B5FC32D1D15D8C22F17A250B45CF55BF97B752E8716219B8F93D41873BFF9B5024D93041CE4D75F5AD705B4DB1C8CC6BF07997177D63BF00A62AF99DB968329089EAB99787AABE8678E6FA7709B1711DC1EB61AD91DA687D8FDC449B03B6A0E24B10E5D36551924F7320F91F544C14A27C2EB623B5C1E542EDF453FC888DD5934F6AA54E86C4C3440BA2D86EC32789EEB220F14AEE132575562F7316D484925C0424D6826CD0A443C2154C16B3726E89E8E169136467A108373295FB48D55E0899D688AEC31B60A62E4D9B6CC8963C59EC6CED1E072E37AC49A9B00CBA0AEF3F59B42B080917A3BA32B7DC7E8735199B95F9C0C4B5817F5A673FB489F9AAC6C2525C9FF8E75AF6C39C8C8ECA0068D0269CA905D34D2EC237650E4BFBE118704AC96F74C8D6BC88CBEFD6F5AF4B9C05DB4EC49AC88CB1C76DCA6999EBF83E694F07428FDA22C247F3F738473ED9B19FA779708FBC9C647B38CBAA3FC2F6058545394BA33BEC5FC7B745BE2B7232641CDDF1CA28CF187DED57C4597C9FD7B7BBEA2F924D3104D2CDA0FCD47F1BFF5404A14FFB7D057CEA5788280F2FCD5D8FD2967979E763FB4C25C97F3D5225A8511F3D737DC2D12E24C2B2DB7883CAFB77E67D23707D87B7C87B6E9F5AA9850C1B8257FBFA3240DB14455923A3AB4F7E120CFBD1D30FFF03F5412CB41E8E0000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (3, N'Món quà đầu tiên', N'/Images/Icons/first-gift.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (4, N'Quà theo dịp/ngày lễ', N'/Images/Icons/holiday-gift.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (6, N'Quà tính theo năm', N'/Images/Icons/anniversary-gift.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (7, N'Đồ cặp', N'/Images/Icons/pair-gift.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (8, N'Khác', N'/Images/Icons/other-gift.png')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentID], [Username], [ProductID], [CommentContent], [TimeComment]) VALUES (1, N'user2608', 1, N'Con gấu dễ thương quá :). Bạn bán bao nhiêu thế?', CAST(N'2018-05-28 00:00:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [Username], [ProductID], [CommentContent], [TimeComment]) VALUES (5, N'user2608', 2, N'Chăn này chắc ấm lắm. Ahihi :D', CAST(N'2018-05-28 16:19:49.873' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [Username], [ProductID], [CommentContent], [TimeComment]) VALUES (6, N'user2608', 24, N'Bạn bán lại cho mình, để con mình chơi nha. Thân!', CAST(N'2018-05-28 16:21:08.627' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [Username], [ProductID], [CommentContent], [TimeComment]) VALUES (7, N'user2608', 1, N'Giá bao nhiêu vậy bạn gì ơi :D', CAST(N'2018-05-28 16:21:43.417' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [Username], [ProductID], [CommentContent], [TimeComment]) VALUES (8, N'user2608', 30, N'đfds', CAST(N'2018-05-28 18:59:31.750' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [Username], [ProductID], [CommentContent], [TimeComment]) VALUES (9, N'user2608', 32, N'fsdfdsfds', CAST(N'2018-06-03 11:34:31.820' AS DateTime))
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[ErrorLogs] ON 

INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (1, N'System.Collections.Generic.KeyNotFoundException: The given key was not present in the dictionary.
   at System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   at ASP._Page_Views_User_NewPost_cshtml.Execute() in d:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Views\User\NewPost.cshtml:line 105
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Đăng tin mới''', CAST(N'2018-05-16 12:31:02.413' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (2, N'System.Collections.Generic.KeyNotFoundException: The given key was not present in the dictionary.
   at System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   at ASP._Page_Views_User_NewPost_cshtml.Execute() in d:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Views\User\NewPost.cshtml:line 105
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Đăng tin mới''', CAST(N'2018-05-16 12:44:05.503' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (3, N'System.Collections.Generic.KeyNotFoundException: The given key was not present in the dictionary.
   at System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   at ASP._Page_Views_User_NewPost_cshtml.Execute() in d:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Views\User\NewPost.cshtml:line 105
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Đăng tin mới''', CAST(N'2018-05-16 12:49:00.550' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (8, N'System.NullReferenceException: Object reference not set to an instance of an object.
   at ASP._Page_Views_User_NewPost_cshtml.Execute() in d:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Views\User\NewPost.cshtml:line 49
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Đăng tin mới''', CAST(N'2018-05-16 17:55:14.850' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (9, N'System.NullReferenceException: Object reference not set to an instance of an object.
   at ASP._Page_Views_User_NewPost_cshtml.Execute() in d:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Views\User\NewPost.cshtml:line 49
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Đăng tin mới''', CAST(N'2018-05-16 17:57:15.273' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (10, N'System.Reflection.AmbiguousMatchException: The current request for action ''ConfirmPassword'' on controller type ''AccountController'' is ambiguous between the following action methods:
System.Web.Mvc.ActionResult ConfirmPassword() on type NYCshop.Controllers.AccountController
System.Web.Mvc.JsonResult ConfirmPassword(System.String) on type NYCshop.Controllers.AccountController
   at System.Web.Mvc.ActionMethodSelectorBase.FindActionMethod(ControllerContext controllerContext, String actionName)
   at System.Web.Mvc.Async.AsyncActionMethodSelector.FindAction(ControllerContext controllerContext, String actionName)
   at System.Web.Mvc.Async.ReflectedAsyncControllerDescriptor.FindAction(ControllerContext controllerContext, String actionName)
   at System.Web.Mvc.ControllerActionInvoker.FindAction(ControllerContext controllerContext, ControllerDescriptor controllerDescriptor, String actionName)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<>c.<BeginExecuteCore>b__152_0(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<>c.<BeginExecute>b__151_1(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<>c.<BeginProcessRequest>b__20_0(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.Mvc.HttpHandlerUtil.ServerExecuteHttpHandlerAsyncWrapper.<>c__DisplayClass2_0.<BeginProcessRequest>b__0()
   at System.Web.Mvc.HttpHandlerUtil.ServerExecuteHttpHandlerWrapper.Wrap[TResult](Func`1 func)
   at System.Web.Mvc.HttpHandlerUtil.ServerExecuteHttpHandlerAsyncWrapper.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpServerUtility.ExecuteInternal(IHttpHandler handler, TextWriter writer, Boolean preserveForm, Boolean setPreviousPage, VirtualPath path, VirtualPath filePath, String physPath, Exception error, String queryStringOverride)
   at System.Web.HttpServerUtility.Execute(IHttpHandler handler, TextWriter writer, Boolean preserveForm, Boolean setPreviousPage)
   at System.Web.HttpServerUtility.Execute(IHttpHandler handler, TextWriter writer, Boolean preserveForm)
   at System.Web.HttpServerUtilityWrapper.Execute(IHttpHandler handler, TextWriter writer, Boolean preserveForm)
   at System.Web.Mvc.Html.ChildActionExtensions.ActionHelper(HtmlHelper htmlHelper, String actionName, String controllerName, RouteValueDictionary routeValues, TextWriter textWriter)
   at System.Web.Mvc.Html.ChildActionExtensions.RenderAction(HtmlHelper htmlHelper, String actionName, String controllerName, RouteValueDictionary routeValues)
   at System.Web.Mvc.Html.ChildActionExtensions.RenderAction(HtmlHelper htmlHelper, String actionName, String controllerName)
   at ASP._Page_Views_User_MyPost_cshtml.Execute() in d:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Views\User\MyPost.cshtml:line 214
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Quản lý tin''', CAST(N'2018-05-16 20:11:21.680' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (11, N'Microsoft.CSharp.RuntimeBinder.RuntimeBinderException: Cannot convert null to ''bool'' because it is a non-nullable value type
   at CallSite.Target(Closure , CallSite , Object )
   at System.Dynamic.UpdateDelegates.UpdateAndExecute1[T0,TRet](CallSite site, T0 arg0)
   at ASP._Page_Views_User_MyPost_cshtml.Execute() in d:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Views\User\MyPost.cshtml:line 56
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Quản lý tin''', CAST(N'2018-05-16 21:53:13.630' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (12, N'System.ArgumentNullException: Value cannot be null.
Parameter name: source
   at System.Linq.OrderedEnumerable`2..ctor(IEnumerable`1 source, Func`2 keySelector, IComparer`1 comparer, Boolean descending)
   at System.Linq.Enumerable.OrderByDescending[TSource,TKey](IEnumerable`1 source, Func`2 keySelector)
   at NYCshop.Controllers.SearchController.SearchProduct(List`1 model, String searchString, String searchType, Nullable`1 page) in D:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Controllers\SearchController.cs:line 102
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.ActionInvocation.InvokeSynchronousActionMethod()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__11_0()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_1.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass7_0.<BeginInvokeActionMethodWithFilters>b__1(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở Chức năng ''Tìm kiếm sản phẩm''', CAST(N'2018-05-17 20:22:49.480' AS DateTime), NULL)
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (13, N'System.Web.HttpParseException (0x80004005): Unexpected "for" keyword after "@" character.  Once inside code, you do not need to prefix constructs like "for" with "@".

   at System.Web.WebPages.Razor.RazorBuildProvider.EnsureGeneratedCode()
   at System.Web.WebPages.Razor.RazorBuildProvider.get_CodeCompilerType()
   at System.Web.Compilation.BuildProvider.GetCompilerTypeFromBuildProvider(BuildProvider buildProvider)
   at System.Web.Compilation.BuildProvidersCompiler.ProcessBuildProviders()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Tìm kiếm sản phẩm''', CAST(N'2018-05-17 20:24:15.847' AS DateTime), NULL)
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (14, N'System.ArgumentNullException: Value cannot be null.
Parameter name: source
   at System.Linq.OrderedEnumerable`2..ctor(IEnumerable`1 source, Func`2 keySelector, IComparer`1 comparer, Boolean descending)
   at System.Linq.Enumerable.OrderByDescending[TSource,TKey](IEnumerable`1 source, Func`2 keySelector)
   at NYCshop.Controllers.SearchController.SearchProduct(List`1 model, String searchString, String searchType, Nullable`1 page) in D:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Controllers\SearchController.cs:line 102
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.ActionInvocation.InvokeSynchronousActionMethod()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__11_0()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_1.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass7_0.<BeginInvokeActionMethodWithFilters>b__1(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở Chức năng ''Tìm kiếm sản phẩm''', CAST(N'2018-05-17 20:25:14.497' AS DateTime), NULL)
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (15, N'System.Web.HttpParseException (0x80004005): Unexpected "for" keyword after "@" character.  Once inside code, you do not need to prefix constructs like "for" with "@".

   at System.Web.WebPages.Razor.RazorBuildProvider.EnsureGeneratedCode()
   at System.Web.WebPages.Razor.RazorBuildProvider.get_CodeCompilerType()
   at System.Web.Compilation.BuildProvider.GetCompilerTypeFromBuildProvider(BuildProvider buildProvider)
   at System.Web.Compilation.BuildProvidersCompiler.ProcessBuildProviders()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Tìm kiếm sản phẩm''', CAST(N'2018-05-17 20:26:01.993' AS DateTime), NULL)
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (16, N'System.ArgumentNullException: Value cannot be null.
Parameter name: source
   at System.Linq.OrderedEnumerable`2..ctor(IEnumerable`1 source, Func`2 keySelector, IComparer`1 comparer, Boolean descending)
   at System.Linq.Enumerable.OrderByDescending[TSource,TKey](IEnumerable`1 source, Func`2 keySelector)
   at NYCshop.Controllers.SearchController.SearchProduct(List`1 model, String searchString, String searchType, Nullable`1 page) in D:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Controllers\SearchController.cs:line 102
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.ActionInvocation.InvokeSynchronousActionMethod()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__11_0()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_1.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass7_0.<BeginInvokeActionMethodWithFilters>b__1(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở Chức năng ''Tìm kiếm sản phẩm''', CAST(N'2018-05-17 20:26:39.407' AS DateTime), NULL)
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (19, N'System.Collections.Generic.KeyNotFoundException: The given key was not present in the dictionary.
   at System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   at ASP._Page_Views_User_EditProduct_cshtml.Execute() in d:\study\cong nghe phan mem chuyen sau\Ung dung\NYCshop\NYCshop\Views\User\EditProduct.cshtml:line 118
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Cập nhật sản phẩm''', CAST(N'2018-05-22 00:03:55.097' AS DateTime), N'user2712')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (21, N'System.InvalidOperationException: Child actions are not allowed to perform redirect actions.
   at System.Web.Mvc.RedirectToRouteResult.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_2.<BeginInvokeAction>b__1()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Bình luận''', CAST(N'2018-05-28 10:07:06.117' AS DateTime), NULL)
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (27, N'System.ArgumentException: The parameters dictionary contains a null entry for parameter ''productID'' of non-nullable type ''System.Int32'' for method ''System.Web.Mvc.ActionResult EditProduct(Int32)'' in ''NYCshop.Controllers.UserController''. An optional parameter must be a reference type, a nullable type, or be declared as an optional parameter.
Parameter name: parameters
   at System.Web.Mvc.ActionDescriptor.ExtractParameterFromDictionary(ParameterInfo parameterInfo, IDictionary`2 parameters, MethodInfo methodInfo)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.ActionInvocation.InvokeSynchronousActionMethod()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__11_0()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_1.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass7_0.<BeginInvokeActionMethodWithFilters>b__1(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Cập nhật sản phẩm''', CAST(N'2018-06-01 17:24:25.717' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (28, N'System.Web.HttpCompileException (0x80004005): c:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\root\26db39f2\2d8cfb4d\App_Web_mypost.cshtml.65793277.dcva9epd.0.cs(1274): error CS1513: } expected
   at System.Web.Compilation.AssemblyBuilder.Compile()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Quản lý tin''', CAST(N'2018-06-25 09:26:26.583' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (29, N'System.Web.HttpCompileException (0x80004005): c:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\root\26db39f2\2d8cfb4d\App_Web_mypost.cshtml.65793277.dcva9epd.0.cs(1274): error CS1513: } expected
   at System.Web.Compilation.BuildManager.PostProcessFoundBuildResult(BuildResult result, Boolean keyFromVPP, VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetBuildResultFromCacheInternal(String cacheKey, Boolean keyFromVPP, VirtualPath virtualPath, Int64 hashCode, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultFromCacheInternal(VirtualPath virtualPath, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Quản lý tin''', CAST(N'2018-06-25 09:26:33.223' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (30, N'System.Web.HttpCompileException (0x80004005): c:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\root\26db39f2\2d8cfb4d\App_Web_mypost.cshtml.65793277.dnmqy3g8.0.cs(1274): error CS1513: } expected
   at System.Web.Compilation.AssemblyBuilder.Compile()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Quản lý tin''', CAST(N'2018-06-25 09:26:51.963' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (31, N'System.Web.HttpCompileException (0x80004005): c:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\root\26db39f2\2d8cfb4d\App_Web_mypost.cshtml.65793277.dnmqy3g8.0.cs(1274): error CS1513: } expected
   at System.Web.Compilation.BuildManager.PostProcessFoundBuildResult(BuildResult result, Boolean keyFromVPP, VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetBuildResultFromCacheInternal(String cacheKey, Boolean keyFromVPP, VirtualPath virtualPath, Int64 hashCode, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultFromCacheInternal(VirtualPath virtualPath, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Quản lý tin''', CAST(N'2018-06-25 09:26:56.037' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (32, N'System.InvalidOperationException: The model item passed into the dictionary is of type ''System.Collections.Generic.List`1[NYCshop.Models.Product]'', but this dictionary requires a model item of type ''System.Collections.Generic.List`1[NYCshop.Models.ProductManagerViewModel]''.
   at System.Web.Mvc.ViewDataDictionary`1.SetModel(Object value)
   at System.Web.Mvc.ViewDataDictionary.set_Model(Object value)
   at System.Web.Mvc.ViewDataDictionary..ctor(ViewDataDictionary dictionary)
   at System.Web.Mvc.ViewDataDictionary`1..ctor(ViewDataDictionary viewDataDictionary)
   at System.Web.Mvc.WebViewPage`1.SetViewData(ViewDataDictionary viewData)
   at System.Web.Mvc.WebViewPage.set_ViewData(ViewDataDictionary value)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Quản lý tin''', CAST(N'2018-06-25 15:20:05.357' AS DateTime), N'user2608')
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (33, N'System.Web.HttpCompileException (0x80004005): c:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\root\26db39f2\2d8cfb4d\App_Web_login.cshtml.5f83eb8c.bxbcnk6y.0.cs(31): error CS0234: The type or namespace name ''LoginViewModel'' does not exist in the namespace ''NYCshop.Models'' (are you missing an assembly reference?)
   at System.Web.Compilation.AssemblyBuilder.Compile()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Đăng nhập''', CAST(N'2018-06-26 10:37:52.307' AS DateTime), NULL)
INSERT [dbo].[ErrorLogs] ([ErrorID], [ErrorContent], [FunctionName], [OccurDate], [Username]) VALUES (41, N'System.Web.HttpCompileException (0x80004005): c:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\root\26db39f2\2d8cfb4d\App_Web_searchproduct.cshtml.62fd396e.hpuwnvlb.0.cs(37): error CS0234: The type or namespace name ''SearchProductViewModel'' does not exist in the namespace ''NYCshop.Models'' (are you missing an assembly reference?)
   at System.Web.Compilation.AssemblyBuilder.Compile()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__3()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__5(IAsyncResult asyncResult)', N'Lỗi xảy ra ở ''Trang Tìm kiếm sản phẩm''', CAST(N'2018-06-26 13:05:06.547' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ErrorLogs] OFF
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (19, N'/Images/Products/1_1.jpg', 1)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (20, N'/Images/Products/1_2.jpg', 1)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (21, N'/Images/Products/2_1.jpg', 2)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (22, N'/Images/Products/2_2.jpg', 2)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (23, N'/Images/Products/19_1.jpg', 19)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (24, N'/Images/Products/19_2.jpg', 19)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (25, N'/Images/Products/20_1.jpg', 20)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (26, N'/Images/Products/20_2.jpg', 20)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (27, N'/Images/Products/19_3.jpg', 19)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (29, N'/Images/Products/20_3.jpg', 20)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (30, N'/Images/Products/20_4.jpg', 20)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (31, N'/Images/Products/21_1.jpg', 21)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (32, N'/Images/Products/21_2.jpg', 21)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (33, N'/Images/Products/21_3.jpg', 21)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (34, N'/Images/Products/21_4.jpg', 21)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (35, N'/Images/Products/23_1.jpg', 23)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (36, N'/Images/Products/23_2.jpg', 23)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (37, N'/Images/Products/23_3.jpg', 23)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (38, N'/Images/Products/24_1.jpg', 24)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (39, N'/Images/Products/25_1.png', 25)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (40, N'/Images/Products/26_1.jpg', 26)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (41, N'/Images/Products/27_1.jpg', 27)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (43, N'/Images/Products/28_1.jpg', 28)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (44, N'/Images/Products/28_2.jpg', 28)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (45, N'/Images/Products/28_3.jpg', 28)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (46, N'/Images/Products/29_1.jpg', 29)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (47, N'/Images/Products/30_1.jpg', 30)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (48, N'/Images/Products/30_2.jpg', 30)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (49, N'/Images/Products/31_1.jpg', 31)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (50, N'/Images/Products/31_2.jpg', 31)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (51, N'/Images/Products/32_1.jpg', 32)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (52, N'/Images/Products/33_1.jpg', 33)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (53, N'/Images/Products/34_1.jpg', 34)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (54, N'/Images/Products/34_2.jpg', 34)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (55, N'/Images/Products/35_1.jpg', 35)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (57, N'/Images/Products/36_1.jpg', 36)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (58, N'/Images/Products/36_2.jpg', 36)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (62, N'/Images/Products/38_1.jpg', 38)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (63, N'/Images/Products/38_2.jpg', 38)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (64, N'/Images/Products/38_3.jpg', 38)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (65, N'/Images/Products/39_1.png', 39)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (66, N'/Images/Products/39_2.png', 39)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (67, N'/Images/Products/39_3.png', 39)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (68, N'/Images/Products/39_4.png', 39)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (69, N'/Images/Products/39_5.png', 39)
INSERT [dbo].[ImageUrls] ([ImageID], [Url], [ProductID]) VALUES (70, N'/Images/Products/39_6.png', 39)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (1, N'user2712', 13, N'Gấu tình yêu', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'Vừa chia tay người yêu, may mà anh ấy không đòi quà :)', 1, 299000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (2, N'user2712', 13, N'Chăn tình yêu', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'Đêm trước ấm áp bên người yêu, nay chia tay đành bán vậy :(((', 1, 343000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (19, N'user2712', 33, N'Hộp nhạc quả cầu tuyết mùa đông không lạnh', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'Mùa đông này không em, ôi lạnh quá :<', 1, 159000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (20, N'user2712', 29, N'Chó bông đầu to', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'Anh mới vừa tặng em hôm tết, giờ anh đã có người mới :(', 1, 260000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (21, N'user2712', 37, N'Tháp Eiffel Paris', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'Mùa hè năm ấy, anh và em tới Pháp, anh đã mua cho em cái này về làm kỷ niệm. Ngày ấy giờ còn đâu :(((', 1, 175750, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (23, N'user2712', 37, N'Bó hoa sáp 22 bông các màu', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'Anh tặng em dịp 8/3 vừa qua. Giờ bán lại kiếm ít tiền hihi', 1, 249999, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (24, N'user2712', 39, N'Súng nước balo cho bé - Iron man', CAST(N'2018-05-09 00:00:00.000' AS DateTime), N'Lúc nhỏ anh tặng em. Giờ anh đi du học bỏ lại em bơ vơ', 1, 130000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (25, N'user2712', 37, N'Gối "Mãi mãi yêu em"', CAST(N'2018-05-09 00:00:00.000' AS DateTime), N'Đau đớn làm sao, cái gối giả dối. Mọi người mua giúp em để em kiếm ít tiền tiêu huhu', 1, 129000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (26, N'user2712', 32, N'Cót nhà gỗ đựng bút', CAST(N'2018-05-09 00:00:00.000' AS DateTime), N'Ngôi nhà tiện dụng. Người yêu tặng để học tập tốt hơn. Có kèm âm nhạc nghe rất là êm tai :)', 1, 49000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (27, N'user2712', 49, N'Áo thun cặp in My wife màu trắng', CAST(N'2018-05-09 00:00:00.000' AS DateTime), N'Tụi em đã sử dụng 1 vài lần r, nhưng vẫn còn mới', 1, 159000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (28, N'user2712', 52, N'Giày đôi "Trắng tinh"', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Cùng nhau đi khắp thế gian nào', 1, 169000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (29, N'user2712', 58, N'Cặp vòng tay tim lồng đôi', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Con tim vỡ tan. Em nói lời chia tay 2 ngày trước. Muốn quên đi người ấy, mọi người mua về sài nhé, hàng vẫn dùng tốt', 1, 55000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (30, N'user2712', 60, N'Mèo ú vàng khè', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Người yêu cũ tặng 1 năm trước. Giờ không nuôi nổi nữa, ai muốn nuôi thì mua giúp em nhé :)', 1, 1999000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (31, N'user2712', 60, N'Chó mặt xệ', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Vật báu của em người yêu cũ', 1, 2900000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (32, N'user2712', 60, N'Mèo Titanic', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Cặp đôi mèo rằn ri dễ thương', 1, 3199000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (33, N'user2712', 60, N'Vẹt "Anh yêu em"', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Con vẹt siêu phàm được anh người yêu em huấn luyện. Ngoài khả năng bắt chước ra thì những lúc không có anh bên cạnh, nó có thể nói "Anh yêu em". Nay chia tay rồi, em xin nhượng lại cho anh nào muốn đi tán gái', 1, 4999000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (34, N'user2712', 60, N'Chuột Hamster', CAST(N'2018-06-14 00:00:00.000' AS DateTime), N'Chú chuột gắn với biết bao kỷ niệm bên em :(((', 1, 1490000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (35, N'user2712', 60, N'Chú chó hài hước', CAST(N'2018-06-14 00:00:00.000' AS DateTime), N'Mỗi lúc buồn đem nó ra ngắm cũng hiệu quả phết :) Nhớ người yêu cũ :(((', 1, 3600000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (36, N'user2712', 62, N'Iphone X', CAST(N'2018-06-14 00:00:00.000' AS DateTime), N'Người yêu vừa mới mua cho em tuần trước còn nguyên tem. Ai mua em bán lại cho nè hihi :)', 1, 26000000, 0, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (38, N'user2712', 62, N'Samsung J7', CAST(N'2018-06-14 00:00:00.000' AS DateTime), N'Kỷ niệm đôi ta giờ chia 2 ngã huhu', 1, 6900000, 0, 1, 0)
INSERT [dbo].[Products] ([ProductID], [Username], [SubCategoryID], [ProductName], [UploadDate], [Describe], [Quanlity], [Price], [SaleStatus], [Censor], [Viewed]) VALUES (39, N'user2608', 13, N'fghdfhgfhfghfg', CAST(N'2018-06-25 16:56:05.593' AS DateTime), N'dfsđsg', 2, 646465464654, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[Replies] ON 

INSERT [dbo].[Replies] ([ReplyID], [Username], [CommentID], [ReplyContent], [TimeReply]) VALUES (1, N'user2608', 1, N'Bạn gọi điện cho mình để bàn bạc giá cả nha', CAST(N'2018-05-28 16:42:54.987' AS DateTime))
INSERT [dbo].[Replies] ([ReplyID], [Username], [CommentID], [ReplyContent], [TimeReply]) VALUES (2, N'user2608', 1, N'Bạn tranh thủ gọi nha, mình sắp đi du học rồi nên không còn nhiều thời gian nữa :(', CAST(N'2018-05-28 16:55:46.553' AS DateTime))
INSERT [dbo].[Replies] ([ReplyID], [Username], [CommentID], [ReplyContent], [TimeReply]) VALUES (3, N'user2712', 7, N'Bạn điện thoại cho mình nha. Thân ái!', CAST(N'2018-05-28 17:15:11.217' AS DateTime))
INSERT [dbo].[Replies] ([ReplyID], [Username], [CommentID], [ReplyContent], [TimeReply]) VALUES (4, N'user2608', 5, N'fdsfdsfds', CAST(N'2018-06-03 10:42:43.960' AS DateTime))
SET IDENTITY_INSERT [dbo].[Replies] OFF
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (13, 3, N'Quà thả thính')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (14, 3, N'Quà quen nhau')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (28, 6, N'Quà 1 năm')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (29, 6, N'Quà 2 năm')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (31, 6, N'Quà 3 năm')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (32, 6, N'Quà 4 năm')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (33, 6, N'Rất nhiều năm')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (37, 4, N'Ngày Quốc tế phụ nữ 8/3')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (38, 4, N'Ngày Phụ nữ Việt Nam 20/10')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (39, 4, N'Ngày Quốc tế thiếu nhi 1/6')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (40, 4, N'Kỷ niệm xxx tháng/năm yêu nhau')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (41, 4, N'Ngày Valentine 14/2')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (42, 4, N'Ngày Valentine Trắng 14/3')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (43, 4, N'Ngày Quốc tế lao động 1/5')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (44, 4, N'Lễ Giáng sinh 25/12')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (45, 4, N'Tết Dương lịch 1/1')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (46, 4, N'Tết Âm lịch')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (47, 4, N'Giỗ tổ Hùng Vương')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (48, 4, N'Quà Sinh nhật')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (49, 7, N'Áo cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (50, 7, N'Mũ cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (51, 7, N'Quần cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (52, 7, N'Giày cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (53, 7, N'Đồng hồ cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (54, 7, N'Khăn quàng cổ cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (55, 7, N'Dây chuyền cổ cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (56, 7, N'Balo cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (57, 7, N'Găng tay cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (58, 7, N'Vòng đeo tay cặp')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (59, 7, N'Khác')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (60, 8, N'Thú cưng')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (61, 8, N'Quà lưu niệm')
INSERT [dbo].[SubCategories] ([SubCategoryID], [CategoryID], [SubCategoryName]) VALUES (62, 8, N'Khác')
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'admin2712', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', N'phamquangvi456@gmail.com', N'Admin', N'526/1B', N'123456', 1, CAST(N'2018-04-23 14:29:46.437' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'test123', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', N'phamquangvi456@gmail.com', N'User', N'526/1B', N'123456', 1, CAST(N'2018-04-23 19:18:29.707' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'uit2608', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', NULL, N'User', N'fsdfdsf', N'123456', 1, CAST(N'2018-06-26 09:16:58.613' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'uit26080', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', NULL, N'User', N'gfdgfdgfd', N'123456', 1, CAST(N'2018-06-26 09:18:46.373' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'uit260800', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', N'gfdgfd', N'User', N'gfdgfdg', N'123456', 1, CAST(N'2018-06-26 10:39:16.857' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user12345', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', NULL, N'User', N'hjgjhg', N'123456', 1, CAST(N'2018-05-11 16:57:03.560' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user2608', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', N'phamquangvi456@gmail.com', N'User', N'526/1B', N'123456', 1, CAST(N'2018-04-23 18:52:16.893' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user2608000', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', NULL, N'User', N'fdsfds', N'123456', 1, CAST(N'2018-06-26 14:21:48.400' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user2709', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', N'phamquangvi456@gmail.com', N'User', N'526/1B', N'123456', 1, CAST(N'2018-04-23 18:53:13.407' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user2712', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Quang Vĩ', N'phamquangvi2608@gmail.com', N'User', N'526/1B Kha Vạn Cân', N'123456', 1, CAST(N'2018-04-23 14:28:59.357' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user45678', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Vĩ', NULL, N'User', N'fdfd', N'123456', 1, CAST(N'2018-05-14 10:39:27.133' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user5456465', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Quang Vĩ', N'phamquangvi2608@gmail.com', N'User', N'526/1B Kha Vạn Cân', N'123456', 1, CAST(N'2018-05-16 17:46:20.860' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user789', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Quang Vĩ', N'phamquangvi2608@gmail.com', N'User', N'526/1B Kha Vạn Cân', N'123456', 1, CAST(N'2018-05-16 17:37:24.320' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user78910', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Quang Vĩ', N'phamquangvi2608', N'User', N'526/1B Kha Vạn Cân', N'123456', 1, CAST(N'2018-05-16 17:42:00.097' AS DateTime))
INSERT [dbo].[Users] ([Username], [Password], [Name], [Email], [Role], [Address], [Phone], [Active], [JoiningDate]) VALUES (N'user789456123', N'ac5eaf7706088824ace2594b046d5dd0', N'Phạm Quang Vĩ', N'phamquangvi2608@gmail.com', N'User', N'526/1B Kha Vạn Cân', N'123456', 1, CAST(N'2018-05-20 22:19:50.140' AS DateTime))
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.Users_Username] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.Users_Username]
GO
ALTER TABLE [dbo].[ErrorLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ErrorLogs_dbo.Users_Username] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[ErrorLogs] CHECK CONSTRAINT [FK_dbo.ErrorLogs_dbo.Users_Username]
GO
ALTER TABLE [dbo].[ImageUrls]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImageUrls_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImageUrls] CHECK CONSTRAINT [FK_dbo.ImageUrls_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.SubCategories_SubCategoryID] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SubCategories] ([SubCategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.SubCategories_SubCategoryID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Users_Username] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Users_Username]
GO
ALTER TABLE [dbo].[Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Replies_dbo.Comments_CommentID] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comments] ([CommentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Replies] CHECK CONSTRAINT [FK_dbo.Replies_dbo.Comments_CommentID]
GO
ALTER TABLE [dbo].[Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Replies_dbo.Users_Username] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Replies] CHECK CONSTRAINT [FK_dbo.Replies_dbo.Users_Username]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubCategories_dbo.Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_dbo.SubCategories_dbo.Categories_CategoryID]
GO
