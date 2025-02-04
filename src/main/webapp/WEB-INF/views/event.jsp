<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="description" content="" >
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Event Page | Events </title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/bootstrap-theme.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/front/css/style.css">
		<!-- Last Update Top Scrept start-->
			<script type="text/javascript" src="<%=request.getContextPath()%>/resources/front/images_files/jquery00.js"></script>
			<script type="text/javascript" src="<%=request.getContextPath()%>/resources/front/images_files/ticker00.js"></script>
			<script type="text/javascript">
				$(document).ready(function(){
					$('#fade').list_ticker({
						speed:4000,
						effect:'fade'
					});
				
				})
			</script>
		<!-- Last Update Top Scrept End-->		
  		<script src="<%=request.getContextPath() %>/resources/front/js/custom.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
	    <script src="<%= request.getContextPath()%>/resources/admin/js/controller/conf.js"></script>
	    <script src="<%= request.getContextPath()%>/resources/admin/js/controller/event_front.js"></script>
	</head>

    <body ng-app="cityportal" ng-controller="eventCtrl" ng-cloak>
	
    <!-- <section id="ccr-nav-top" class="fullwidth" style="background-color:#423D3C">
		<div class="">
			<div class="container">
				<nav class="top-menu">
					<ul class="left-top-menu">
						<li><a href="index.html">Home</a></li>
						<li><a href="#">Site Map</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul> --><!-- /.left-top-menu

					<ul class="right-top-menu pull-right">
						<li><a href="#">Login</a></li>
						<li><a href="#">Register</a></li>
						<li><a href="#">Search</a></li>
						<li>
							<form class="form-inline" role="form" action="#">
								<input type="search" placeholder="Search here..." required>
								  <button type="submit"><i class="fa fa-search"></i></button>
							</form>
						</li>
					</ul>  /.right-top-menu
				</nav> /.top-menu
			</div>
		</div>	
	</section> -->
	
	<section id="ccr-site-title">
		<div class="container">
			<div class="site-logo">
				<a href="<%=request.getContextPath() %>/" class="navbar-brand">
					<img src="<%=request.getContextPath() %>/resources/front/img/icon/img96trans.png" alt="Side Logo" />
						<h1><span>Events</span></h1>
						<h3>Plan your evenings better and find out what’s happening in Vadodara.</h3>
				</a>
			</div> <!-- / .navbar-header -->

			<div class="add-space">
				<img src="<%=request.getContextPath()%>/resources/front/img/728 x90px-add-Banner.png"/>
		  </div><!-- / .adspace -->
		</div>	<!-- /.container -->
	</section> <!-- / #ccr-site-title -->
	
	<%@ include file="header.jsp" %>
	
	<section id="ccr-main-section">
	<div class="container">

	<section class="col-md-1"></section>
		<section id="ccr-left-section" class="col-md-10">

			<div class="current-page">
				<a href="<%=request.getContextPath() %>/"><i class="fa fa-home"></i> <i class="fa fa-angle-double-right"></i></a>Events
			</div> <!-- / .current-page -->

			<section id="ccr-blog-s3">
				<ul class="blog-s3">
					<li>
						<article ng-repeat="item in getEvents">
							<figure class="blog-thumbnails">
							<a href="<%=request.getContextPath() %>/event_detail?eventid={{item.eventId}}"><img src="{{item.image}}" class="img-responsive" style="width:1500px;height:300px" alt=""></a>
							</figure> <!-- /.blog-thumbnails -->
							<div class="blog-text">
								<h4><a href="<%=request.getContextPath() %>/event_detail?eventid={{item.eventId}}">{{item.eventName}}</a></h4>
								<a class="read-more" href="<%=request.getContextPath() %>/event_detail?eventid={{item.eventId}}"><div ng-bind-html="item.eventdescription | cut:true:500:' ...' | to_trusted"></div></a>

								
								<div class="meta-data">			
									<!-- <a href="#" class="like"><i class="fa fa-thumbs-o-up"></i> 08</a>
									<a href="#" class="comments"><i class="fa fa-comments-o"></i> 49</a>	 -->		
									<span class="read-more"><a href="<%=request.getContextPath() %>/event_detail?eventid={{item.eventId}}">Read More</a></span>
								</div>
							</div> <!-- /.blog-text -->
						</article>
					</li>

<!-- 					<li>
						<article>
							<figure class="blog-thumbnails">
							<img src="img/blog-s3-2.jpg" alt="Article Image ">
							</figure> /.blog-thumbnails
							<div class="blog-text">
								<h4><a href="single.html">This is the sample post title of the blog page for Daily News Template</a></h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, provident, nam sint iure excepturi possimus dolor et iusto id praesentium! Quaerat veritatis placeat ut ad repellendus maxime quos id consequuntur. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, provident, nam sint iure excepturi possimus dolor et iusto id praesentium! Quaerat veritatis placeat ut ad repellendus maxime quos id consequuntur.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, provident, nam sint iure excepturi possimus dolor et iusto id praesentium! Quaerat veritatis placeat ut ad repellendus maxime quos id consequuntur.
								</p>
								
								<div class="meta-data">			
									<a href="#" class="like"><i class="fa fa-thumbs-o-up"></i> 08</a>
									<a href="#" class="comments"><i class="fa fa-comments-o"></i> 49</a>			
									<span class="read-more"><a href="#">Read More</a></span>
								</div>
							</div> /.blog-text
						</article>
					</li>

					<li>
						<article>
							<figure class="blog-thumbnails">
							<img src="img/blog-s3-3.jpg" alt="Article Image ">
							</figure> /.blog-thumbnails
							<div class="blog-text">
								<h4><a href="single.html">This is the sample post title of the blog page for Daily News Template</a></h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, provident, nam sint iure excepturi possimus dolor et iusto id praesentium! Quaerat veritatis placeat ut ad repellendus maxime quos id consequuntur. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, provident, nam sint iure excepturi possimus dolor et iusto id praesentium! Quaerat veritatis placeat ut ad repellendus maxime quos id consequuntur.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, provident, nam sint iure excepturi possimus dolor et iusto id praesentium! Quaerat veritatis placeat ut ad repellendus maxime quos id consequuntur.
								</p>
								
								<div class="meta-data">			
									<a href="#" class="like"><i class="fa fa-thumbs-o-up"></i> 08</a>
									<a href="#" class="comments"><i class="fa fa-comments-o"></i> 49</a>			
									<span class="read-more"><a href="#">Read More</a></span>
								</div>
							</div> /.blog-text
						</article>
					</li>

					<li>
						<article>
							<figure class="blog-thumbnails">
							<img src="img/blog-s3-1.jpg" alt="Article Image ">
							</figure> /.blog-thumbnails
							<div class="blog-text">
								<h4><a href="single.html">This is the sample post title of the blog page for Daily News Template</a></h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, provident, nam sint iure excepturi possimus dolor et iusto id praesentium! Quaerat veritatis placeat ut ad repellendus maxime quos id consequuntur. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, provident, nam sint iure excepturi possimus dolor et iusto id praesentium! Quaerat veritatis placeat ut ad repellendus maxime quos id consequuntur.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, provident, nam sint iure excepturi possimus dolor et iusto id praesentium! Quaerat veritatis placeat ut ad repellendus maxime quos id consequuntur.
								</p>
								
								<div class="meta-data">			
									<a href="#" class="like"><i class="fa fa-thumbs-o-up"></i> 08</a>
									<a href="#" class="comments"><i class="fa fa-comments-o"></i> 49</a>			
									<span class="read-more"><a href="#">Read More</a></span>
								</div>
							</div> /.blog-text
						</article>
					</li> -->
				</ul>
				
				
				<div class="clearfix"></div>
				<nav class="nav-paging pull-center">
					<div class="row">								
						<div class="col-md-5"  style="float:left">
							<div class="hint-text">Showing <b>
								<select id="pageSize" name="pageSize" ng-model="pageSize" ng-options="item for item in pages" class="form-control" ng-change="changePage()" style="width: auto; display: inline;">
								</select>
								</b>entries
							</div>
						</div>
						<div class="col-md-7 text-right">
							<button type="submit" class="btn btn-sm" ng-disabled="currentPage <= 0" ng-click="prev()">
								<i class="fa fa-step-backward"></i>
							</button>
										
							{{currentPage+1}}
										
							<button type="submit" class="btn btn-sm" ng-disabled="getEvents.length ==  0" ng-click="next()">
								<i class="fa fa-step-forward"></i>
							</button>
						</div>
					</div>
					<!-- <ul>
						<li><a href="#pre"><i class="fa fa-chevron-left"></i></a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><span class="current">3</span></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#next"><i class="fa fa-chevron-right"></i></a></li>
					</ul> -->
				</nav>



			</section> <!-- /#ccr-blog-s3 -->
			

		</section><!-- /.col-md-8 / #ccr-left-section -->
		<section class="col-md-1"></section>
	</div><!-- /.container -->
</section><!-- / #ccr-main-section -->
 	<%@ include file="footer.jsp" %>
    
    </body>
  </html>