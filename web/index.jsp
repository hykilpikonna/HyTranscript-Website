<%@ page import="cc.moecraft.web.hytranscript.Song" %>
<%@ page import="cc.moecraft.web.hytranscript.Main" %>
<%@ page import="cc.moecraft.web.hytranscript.DownloadLink" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<!-- 直接复制个模板啊哈哈哈哈 -->
<!-- 这是英文网页 -->
<html lang="en">
	<head>
		<meta charset="utf-8">
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
							<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
							<li><a href="#"><i class="fa fa-telegram"></i></a></li>
							<li><a href="#"><i class="fa fa-qq"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
							<li><a href="#"><i class="fa fa-wechat"></i></a></li>
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
										<li><a href="#1-top">Top</a></li>
										<li><a href="#3-introduction">Introduction</a></li>
										<li><a href="#4-downloads">Songs</a></li>
									</ul>
								</nav>
								<div class="kopa-search">
									<button type="button">
										<i class="fa fa-search"></i>
									</button>
									<input type="text" placeholder="Search..." class="">
								</div>
								<!--div class="kopa-hamburger-menu">
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
									<h2>HyTranscript</h2>
									<p>Now you can practice your favorate piano songs with quality sheet musics for free!</p>
									<a href="#" class="button-01">Learn More</a>
									<a href="#" class="button-01">Download Music Sheets</a>
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
								<h3 class="widget-title">Why Us?</h3>
								<h4>because we are the best lolololol (jk</h4>
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
														<a href="#">Holy, It's Free!</a>
													</h4>
													<p>You can download everything and suggest any song for free.</p>
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
													<a href="#">...And No Ads!</a>
												</h4>
												<p>There are no ads on this page except for flat.io and I don't benifit from it.</p>
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
													<a href="#">Suggest Songs!</a>
												</h4>
												<p>You can suggest your favorate piano songs for me to transcribe!</p>
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
													<a href="#">I'm cute</a>
												</h4>
												<p>Totally not (</p>
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
								<h3 class="widget-title">Downloads</h3>
								<h4>even though none of them directly points to a file link...</h4>
							</header>
							<div class="widget-content module-listcourse-04">
								<div class="row">
									<%
                                        ArrayList<Song> songs = Main.database().getSongs();

                                        for (int i = 0; i < songs.size(); i++)
                                        {
                                            Song song = songs.get(i);

                                            int minute = song.getTimeInSeconds() / 60;

                                            int restSeconds = song.getTimeInSeconds() - minute * 60;

                                            String time = minute + ":" + restSeconds;
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
                                                        <%=song.getDifficulty().toString()%>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-thumbs-o-up"></i>
                                                        <%=song.getLikes()%></li>
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
                                                            %>
                                                            <li><a href="<%=link.getUrl()%>"><%=link.getType().toString()%> - <%=link.getDomain().toString()%></a></li>
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
								<h3 class="widget-title">Suggest Songs</h3>
								<h4>public interface comming soon.... currently you can email me if u want to suggest: admin@moecraft.cc</h4>
							</header>
						</div>
					</div>
				</section>
			</div>
			<footer class="kopa-footer style-01">
				<div class="container">
					<p>ahahahahahahah ok idk what to put here</p>
				</div>
			</footer>
		</div>
	</body>
</html>
