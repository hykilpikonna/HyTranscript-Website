<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="cc.moecraft.web.hytranscript.*" %>
<%
    String s_lang = request.getParameter("lang");
    if (s_lang == null)
    {
%>
<meta http-equiv="Refresh" content="0; url=${requestScope['javax.servlet.forward.request_uri']}?lang=${pageContext.request.locale}">
<%
        return;
    }

    LanguageFileReader.LanguageFile language = Main.language().getFile(s_lang);

	PostsDatabase database = Main.database().getFile(s_lang);

	String font = s_lang.equals("zh") ? "\"Microsoft YaHei UI Light\", STXihei, “华文细黑”, “Microsoft YaHei”, “微软雅黑”, sans-serif;" : "\"Roboto Slab\", sans-serif;";
%>
<!DOCTYPE html>
<!-- 直接复制个模板啊哈哈哈哈 -->
<!--html lang="en"-->
<html lang="<%=Main.language().getLang(s_lang)%>">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>Home</title>
		
		<!-- 字体 -->
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
		
		<script src="js/jquery-2.2.4.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/jquery.sliderPro.min.js"></script>
		<script src="js/imagesloaded.pkgd.min.js"></script>
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.waypoints.min.js"></script>
		<script src="js/jquery.counterup.min.js"></script>
		<script src="js/jquery.mCustomScrollbar.js"></script>
		<script src="js/viewportchecker.min.js"></script>
		<script src="js/custom.js"></script>
		
		<!-- View Responsive -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<style>
			h2
			{
				font-family: "Roboto Slab", sans-serif;
			}

			h1,
			h3,
			h4,
			h5,
			h6
			{
				font-family: <%=font%>
			}
		</style>

	</head>
	<body>
		<div id="main-container">
			<header id="0-header" class="kopa-header-01">
				<div class="container">
					<div class="top-header">
						<!--div class="kopa-login">
							<a href="#">
								<i class="fa fa-sign-in"></i>
								login
							</a>
						</div>
						<div class="kopa-register">
							<a href="#">
								<i class="fa fa-unlock"></i>
								register
							</a>
						</div-->
						<ul>
							<li />
							<li><a href="https://www.youtube.com/channel/UCCwz4RuQr1Glln359nuj2vw"><i class="fa fa-youtube-play"></i></a></li>
							<li><a href="https://github.com/hykilpikonna"><i class="fa fa-github"></i></a></li>
							<li><a href="https://flat.io/hykilpikonna"><i class="fa fa-music"></i></a></li>
							<li><a href="http://wpa.qq.com/msgrd?v=3&uin=871674895&site=qq&menu=yes"><i class="fa fa-qq"></i></a></li>
							<!--li><a href="#"><i class="fa fa-wechat"></i></a></li-->
						</ul>
					</div>
					<div class="bottom-header style-01">
						<div class="clearfix">
							<div class="pull-left">
								<h1 class="kopa-logo">
									<a href="#">
										<img src="img/icon/logo.png" alt="" width=194px>
									</a>
								</h1>
							</div>
							<div class="pull-right">
								<nav class="kopa-main-menu style-01">
									<ul>
										<li><a href="#">&nbsp;</a></li>
										<li><a href="#">&nbsp;</a></li>
										<li><a href="#">&nbsp;</a></li>
										<li><a href="#">&nbsp;</a></li>
										<li><a href="#1-top"><%=language.get("INDEX-1-TOP-BAR-LINK-1")%></a></li>
										<li><a href="#3-introduction"><%=language.get("INDEX-1-TOP-BAR-LINK-2")%></a></li>
										<li><a href="#4-downloads"><%=language.get("INDEX-1-TOP-BAR-LINK-3")%></a></li>
										<li><i class="fa fa-search"></i></li>
									</ul>
								</nav>
								<!--div class="kopa-search">
									<button type="button">
										<i class="fa fa-search"></i>
									</button>
									<input type="text" placeholder="Search..." class="">
								</div>
								<div class="kopa-hamburger-menu">
									<i class="fa fa-bars"></i>
								</div-->
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
								<img src="img/index-1/1@noborder.png" alt="">
								<div class="content">
									<h2><%=language.get("INDEX-1-CENTER-TEXT-1")%></h2>
									<p><%=language.get("INDEX-1-CENTER-TEXT-2")%></p>
									<a href="#3-introduction" class="button-01"><%=language.get("INDEX-1-CENTER-BUTTON-1")%></a>
									<a href="#4-downloads" class="button-01"><%=language.get("INDEX-1-CENTER-BUTTON-2")%></a>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section id="2-middle-bar" class="kopa-area-nospace">
					<div class="container">
						<div class="widget kopa-widget-advanced_search">
							<div class="widget-content module-advanced_search-01">
								<div class="custom-bg-0"></div>
								<div class="custom-bg">
									<form>
										<!--p class="arrow-select">
											<select name="untitled">
												<option value="*">1</option>
												<option value="1">1</option>
												<option value="2">2</option>
											</select>
										</p>
										<p class="arrow-select">
											<select name="difficulty">
												<option value="*">Difficulty</option>
												<option value="1">Easy</option>
												<option value="2">Medium</option>
												<option value="3">Hard</option>
												<option value="4">Insane</option>
											</select>
										</p>
										<p><input type="text" placeholder="Keywords..."></p>
										<p><button type="submit" class="button-01">Search</button></p-->
										
										<!-- 占位置用hhhh -->
										<p><button type="submit" class="button-01">s</button></p>
									</form>
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
													<img src="img/icon/2.png" alt="">
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
												<img src="img/icon/3.png" alt="">
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
												<img src="img/icon/4.png" alt="">
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
												<img src="img/icon/5.png" alt="">
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
                                    %>
                                    <div class="col-md-4 col-sm-4 col-xs-12">
                                        <article class="entry-item kopa-item-course-01">
                                            <div class="entry-thumb">
                                               <img src="<%=song.getImageURL()%>" alt="">
                                            </div>
                                            <div class="entry-content">
                                                <a href="#" class="course-category"><%=song.getName()%></a>
                                                <h4 class="entry-title">
                                                    <a href="#"><%=song.getSubtitle()%></a>
                                                </h4>
                                                <a href="#" class="course-author"><%=song.getAuthor()%></a>

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
                                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse<%=i%>" aria-expanded="false" aria-controls="collapse<%=i%>">
                                                        <span class="price">Download Links:</span>
                                                    </a>
                                                </div>
                                                <div id="collapse<%=i%>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <%
                                                                for (DownloadLink link : song.getLinks())
                                                                {
                                                                    String linkText;

                                                                    switch (link.getType())
																	{
																		case Video:
																			linkText = language.get("INDEX-4-PLACEHOLDERS-LINK-TYPE-1");
																			break;
																		case Sheet:
																			linkText = language.get("INDEX-4-PLACEHOLDERS-LINK-TYPE-1");
																			break;
																		case Misc:
																			linkText = language.get("INDEX-4-PLACEHOLDERS-LINK-TYPE-1");
																			break;
																		default:
																		    linkText = "Link";
																		    break;
																	}

																	linkText += " - " + link.getDomain().toString();
                                                            %>
                                                            <li><a href="<%=link.getUrl()%>"><%=linkText%></a></li>
                                                            <%
                                                                }
                                                            %>
                                                        </ul>
                                                    </div>
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
