<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="cc.moecraft.web.hytranscript.*" %>
<%
	String s_lang;
	try
	{
		s_lang = request.getParameter("lang").toLowerCase();
	}
	catch (NullPointerException ignored)
	{
%>
<meta http-equiv="Refresh" content="0; url=${requestScope['javax.servlet.forward.request_uri']}?lang=${pageContext.request.locale}">
<%
		return;
	}

	if (!Main.language().hasLanguageFile(s_lang))
	{
		if (s_lang.contains("zh") || s_lang.contains("cn") || s_lang.contains("tw"))
		{
			System.out.println("��ʶ��Ϊ���ĵ�����: " + s_lang);
			s_lang = "zh";
		}
		else if (s_lang.contains("en") || s_lang.contains("us"))
		{
			System.out.println("��ʶ��ΪӢ�ĵ�����: " + s_lang);
			s_lang = "en";
		}
		else
		{
			System.out.println("δʶ�������: " + s_lang);
			s_lang = LanguageFileReader.DEFAULT_LANG;
		}
%>
<meta http-equiv="Refresh" content="0; url=${requestScope['javax.servlet.forward.request_uri']}?lang=<%=s_lang%>">
<%
	}

	LanguageFileReader.LanguageFile language = Main.language().getFile(s_lang);

	PostsDatabase database = Main.database().getFile(s_lang);

	String font = s_lang.equals("zh") ? "\"Microsoft YaHei UI Light\", STXihei, ������ϸ�ڡ�, ��Microsoft YaHei��, ��΢���źڡ�, sans-serif;" : "\"Roboto Slab\", sans-serif;";
%>
<!DOCTYPE html>
<!-- ֱ�Ӹ��Ƹ�ģ�尡�������� -->
<html lang="<%=Main.language().getLang(s_lang)%>">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>Home</title>
		
		<!-- ���� -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,600,700|Roboto+Slab:300,400,700" rel="stylesheet">

		<!-- Css -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/themify-icons.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/owl.theme.css">
		<link rel="stylesheet" href="css/owl.transitions.css">
		<link rel="stylesheet" href="css/slick.css">
		<link rel="stylesheet" href="css/slider-pro.min.css">
		<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
		<link rel="stylesheet" href="css/animate.css">
		<link rel="stylesheet" href="style.css">

		<script src="../js/jquery-2.2.4.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script src="../js/custom.js"></script>
		<script src="../js/imagesloaded.pkgd.min.js"></script>
		<script src="../js/jquery.counterup.min.js"></script>
		<script src="../js/jquery.sliderPro.min.js"></script>
		<script src="../js/slick.min.js"></script>
		<script src="../js/jquery.validate.min.js"></script>
		<script src="../js/owl.carousel.min.js"></script>
		<script src="../js/jquery.waypoints.min.js"></script>
		<script src="../js/jquery.mCustomScrollbar.js"></script>
		<script src="../js/viewportchecker.min.js"></script>
		
		<!-- View Responsive -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<style>
			h2 {
				font-family: "Roboto Slab", sans-serif;
			}

			h1, h3, h4, h5, h6 {
				font-family: <%=font%>
			}

			.entry-title {
				font-family: "Microsoft YaHei UI Light", STXihei, ������ϸ�ڡ�, ��Microsoft YaHei��, ��΢���źڡ�, sans-serif;
			}

			body {
				font-family: "Microsoft YaHei UI Light", STXihei, ������ϸ�ڡ�, ��Microsoft YaHei��, ��΢���źڡ�, sans-serif;
				font-weight: 400;
				color: #2c3e50;
				background: #fff;
				font-size: 13px;
			}
		</style>

		<script>
            $(document).ready(function(){
                $('[data-toggle="popover"]').popover({html:true});
            });
		</script>

	</head>
	<body>
		<div id="main-container">
			<header class="kopa-header-01">
				<div class="container">
					<div class="bottom-header style-01">
						<div class="clearfix">
							<div class="pull-left">
								<h1 class="kopa-logo">
									<a href="#">
										<img src="../img/icon/logo.png" alt="" width=194px>
									</a>
								</h1>
							</div>
							<div class="pull-right">
								<div class="kopa-search">
									<button type="button">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<div id="main-content">
				<section id="1-top" class="kopa-area-nospace">
					<div class="widget kopa-widget-slider">
						<div class="widget-content module-slider-01">
							<div class="container">
								<div class="content">
									<h2><%=language.get("INDEX-1-CENTER-TEXT-1")%></h2>
									<p><%=language.get("INDEX-1-CENTER-TEXT-2")%></p>
									<a href="#4-downloads" class="button-01"><%=language.get("INDEX-1-CENTER-BUTTON-2")%></a>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section id="3-introduction" class="kopa-area kopa-area-01">
					<div class="container">
						<div class="widget kopa-widget-features">
							<header class="widget-header style-01">
								<h3 class="widget-title"><%=language.get("INDEX-3-HEADER-TEXT-1")%></h3>
								<h4><%=language.get("INDEX-3-HEADER-TEXT-2")%></h4>
							</header>
							<div class="widget-content module-features-01">
								<div class="row">
									<div class="col-md-3 col-sm-6 col-xs-12">
										<article class="entry-item">
											<div class="custom">
												<div class="entry-thumb">
													<img src="../img/icon/2.png" alt="">
												</div>
												<div class="entry-content">
													<h4 class="entry-title">
														<%=language.get("INDEX-3-CONTENT-TITLE-TEXT-1")%>
													</h4>
													<p><%=language.get("INDEX-3-CONTENT-DESCRIPTION-TEXT-1")%></p>
												</div>
											</div>
										</article>
									</div>
									<div class="col-md-3 col-sm-6 col-xs-12">
										<article class="entry-item">
											<div class="entry-thumb">
												<img src="../img/icon/3.png" alt="">
											</div>
											<div class="entry-content">
												<h4 class="entry-title">
													<%=language.get("INDEX-3-CONTENT-TITLE-TEXT-2")%>
												</h4>
												<p><%=language.get("INDEX-3-CONTENT-DESCRIPTION-TEXT-2")%></p>
											</div>
										</article>
									</div>
									<div class="col-md-3 col-sm-6 col-xs-12">
										<article class="entry-item">
											<div class="entry-thumb">
												<img src="../img/icon/4.png" alt="">
											</div>
											<div class="entry-content">
												<h4 class="entry-title">
													<%=language.get("INDEX-3-CONTENT-TITLE-TEXT-3")%>
												</h4>
												<p><%=language.get("INDEX-3-CONTENT-DESCRIPTION-TEXT-3")%></p>
											</div>
										</article>
									</div>
									<div class="col-md-3 col-sm-6 col-xs-12">
										<article class="entry-item">
											<div class="entry-thumb">
												<img src="../img/icon/5.png" alt="">
											</div>
											<div class="entry-content">
												<h4 class="entry-title">
													<%=language.get("INDEX-3-CONTENT-TITLE-TEXT-4")%>
												</h4>
												<p><%=language.get("INDEX-3-CONTENT-DESCRIPTION-TEXT-4")%></p>
											</div>
										</article>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section id="4-downloads" class="kopa-area kopa-area-02 white-text-style">
					<div class="container">
						<div class="widget kopa-widget-listcourse">
							<header class="widget-header style-01">
								<h3 class="widget-title"><%=language.get("INDEX-4-HEADER-TEXT-1")%></h3>
								<h4><%=language.get("INDEX-4-HEADER-TEXT-2")%></h4>
							</header>
							<div class="widget-content module-listcourse-04">
								<div class="row">
									<%
										ArrayList<Song> songs = database.getSongs();

										for (int i = 0; i < songs.size(); i++)
										{
											Song song = songs.get(i);

											int minute = song.getTimeInSeconds() / 60;
											int restSeconds = song.getTimeInSeconds() - minute * 60;
											String time = minute + ":" + restSeconds;

											String difficultyText;

											switch (song.getDifficulty())
											{
												case Easy:
													difficultyText = language.get("INDEX-4-PLACEHOLDERS-DIFFICULTY-1");
													break;
												case Medium:
													difficultyText = language.get("INDEX-4-PLACEHOLDERS-DIFFICULTY-2");
													break;
												case Hard:
													difficultyText = language.get("INDEX-4-PLACEHOLDERS-DIFFICULTY-3");
													break;
												case Expert:
													difficultyText = language.get("INDEX-4-PLACEHOLDERS-DIFFICULTY-4");
													break;
												default:
													difficultyText = "Unknown";
													break;
											}

											String popover = "<a href=\"#!\" role=\"button\" class=\"btn popovers#ADDITIONAL_CLASS#\" data-container=\"body\" data-toggle=\"popover\" title=\"\" data-placement=\"bottom\" data-content=\"#DOWNLOAD_LINKS#\" data-original-title=\"#LINK_TITLE#\">%s</a>";;
											StringBuilder linksHTML = new StringBuilder();

											for (DownloadLink link : song.getLinks())
											{
												String linkText;

												switch (link.getType())
												{
													case Video:
														linkText = language.get("INDEX-4-PLACEHOLDERS-LINK-TYPE-1");
														break;
													case Sheet:
														linkText = language.get("INDEX-4-PLACEHOLDERS-LINK-TYPE-2");
														break;
													case Misc:
														linkText = language.get("INDEX-4-PLACEHOLDERS-LINK-TYPE-3");
														break;
													default:
														linkText = "Link";
														break;
												}

												linksHTML.append(String.format("<a href='%s'>%s - %s</a><br>\n", link.getUrl(), linkText, link.getDomain().toString()));
											}

											popover = popover.replace("#DOWNLOAD_LINKS#", linksHTML).replace("#LINK_TITLE#", language.get("INDEX-4-POPOVER-TITLE"));

									%>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<article class="entry-item kopa-item-course-01">
											<div class="entry-thumb">
												<img src="<%=song.getImageURL()%>" alt="">
											</div>
											<div class="entry-content">
												<a class="course-category"><%=song.getName()%></a>
												<!--%=String.format(popover, song.getName()).replace("#ADDITIONAL_CLASS#", " course-category")%-->
												<h4 class="entry-title">
													<%=song.getSubtitle()%>
													<!--%=String.format(popover, song.getSubtitle()).replace("#ADDITIONAL_CLASS#", "")%-->
												</h4>
												<a class="course-author"><%=song.getAuthor()%></a>

												<ul class="course-detail">
													<li>
														<i class="fa fa-clock-o"></i>
														<%=time%>
													</li>
													<li>
														<i class="fa fa-flash"></i>
														<%=difficultyText%>
													</li>
													<li>
														<i class="fa fa-calendar"></i>
														<%=song.getDateReleased()%>
													</li>
												</ul>
												<div class="course-price">
													<%=String.format(popover, "<span class=\"price\">" + language.get("INDEX-4-POPOVER-BUTTON") + "</span>").replace("#ADDITIONAL_CLASS#", "")%>
												</div>
											</div>
										</article>
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="kopa-area kopa-area-01">
					<div class="container">
						<div class="widget kopa-widget-features">
							<header class="widget-header style-01">
								<h3 class="widget-title"><%=language.get("INDEX-5-HEADER-TEXT-1")%></h3>
								<h4><%=language.get("INDEX-5-HEADER-TEXT-2")%></h4>
							</header>
						</div>
					</div>
				</section>
			</div>
			<footer class="kopa-footer style-01">
				<div class="container">
					<p><%=language.get("INDEX-FOOTER-TEXT-1")%></p>
				</div>
			</footer>
		</div>
	</body>
</html>

