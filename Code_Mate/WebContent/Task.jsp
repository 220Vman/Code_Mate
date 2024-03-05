<%@page import="com.test.mybatis.dto.MemberDTO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

	String login = "";
	String logout = "";
	String name = "";
	
	if(request.getSession().getAttribute("member") != null)
	{
		login = "";
		logout = "display:none;";
		MemberDTO member = (MemberDTO)request.getSession().getAttribute("member");
		
		name = member.getNickname();
	}
	else
	{
		login = "display:none;";
		logout = "";
	}
		
	
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Template.jsp</title>
<!-- BootStrap -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/banner_side.css" />

<!-- JQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ionicons -->
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

<script type="text/javascript">
const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
	
	  $( function () {
	    $( '[data-bs-toggle="popover"]' ).popover()
	  } );
</script>


<style type="text/css">

.page-todo .tasks {
    background: #fff;
    padding: 0;
    border-right: 1px solid #d1d4d7;
    margin: -30px 15px -30px -15px
}

.page-todo .task-list {
    padding: 30px 15px;
    height: 100%
}

.page-todo .graph {
    height: 100%
}

.page-todo .priority.high {
    background: #fffdfd;
    margin-bottom: 1px
}

.page-todo .priority.high span {
    background: #f86c6b;
    padding: 2px 10px;
    color: #fff;
    display: inline-block;
    font-size: 12px
}

.page-todo .priority.medium {
    background: #fff0ab;
    margin-bottom: 1px
}

.page-todo .priority.medium span {
    background: #f8cb00;
    padding: 2px 10px;
    color: #fff;
    display: inline-block;
    font-size: 12px
}

.page-todo .priority.low {
    background: #cfedda;
    margin-bottom: 1px
}

.page-todo .priority.low span {
    background: #4dbd74;
    padding: 2px 10px;
    color: #fff;
    display: inline-block;
    font-size: 12px
}

.page-todo .task {
    border-bottom: 1px solid #e4e5e6;
    margin-bottom: 1px;
    position: relative
}

.page-todo .task .desc {
    display: inline-block;
    width: 75%;
    padding: 10px 10px;
    font-size: 12px
}

.page-todo .task .desc .title {
    font-size: 18px;
    margin-bottom: 5px
}

.page-todo .task .time {
    display: inline-block;
    width: 15%;
    padding: 10px 10px 10px 0;
    font-size: 12px;
    text-align: right;
    position: absolute;
    top: 0;
    right: 0
}

.page-todo .task .time .date {
    font-size: 18px;
    margin-bottom: 5px
}

.page-todo .task.last {
    border-bottom: 1px solid transparent
}

.page-todo .task.high {
    border-left: 2px solid #f86c6b
}

.page-todo .task.medium {
    border-left: 2px solid #f8cb00
}

.page-todo .task.low {
    border-left: 2px solid #4dbd74
}

.page-todo .timeline {
    width: auto;
    height: 100%;
    margin: 20px auto;
    position: relative
}

.page-todo .timeline:before {
    position: absolute;
    content: '';
    height: 100%;
    width: 4px;
    background: #d1d4d7;
    left: 50%;
    margin-left: -2px
}

.page-todo .timeslot {
    display: inline-block;
    position: relative;
    width: 100%;
    margin: 5px 0
}

.page-todo .timeslot .task {
    position: relative;
    width: 44%;
    display: block;
    border: none;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box
}

.page-todo .timeslot .task span {
    border: 2px solid #63c2de;
    background: #e1f3f9;
    padding: 5px;
    display: block;
    font-size: 11px
}

.page-todo .timeslot .task span span.details {
    font-size: 16px;
    margin-bottom: 10px
}

.page-todo .timeslot .task span span.remaining {
    font-size: 14px
}

.page-todo .timeslot .task span span {
    border: 0;
    background: 0 0;
    padding: 0
}

.page-todo .timeslot .task .arrow {
    position: absolute;
    top: 6px;
    right: 0;
    height: 20px;
    width: 20px;
    border-left: 12px solid #63c2de;
    border-top: 12px solid transparent;
    border-bottom: 12px solid transparent;
    margin-right: -18px
}

.page-todo .timeslot .task .arrow:after {
    position: absolute;
    content: '';
    top: -12px;
    right: 3px;
    height: 20px;
    width: 20px;
    border-left: 12px solid #e1f3f9;
    border-top: 12px solid transparent;
    border-bottom: 12px solid transparent
}

.page-todo .timeslot .icon {
    position: absolute;
    border: 2px solid #d1d4d7;
    background: #2a2c36;
    -webkit-border-radius: 50em;
    -moz-border-radius: 50em;
    border-radius: 50em;
    height: 30px;
    width: 30px;
    top: 0;
    left: 50%;
    margin-left: -17px;
    color: #fff;
    font-size: 14px;
    line-height: 30px;
    text-align: center;
    text-shadow: none;
    z-index: 2;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box
}

.page-todo .timeslot .time {
    background: #d1d4d7;
    position: absolute;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    top: 1px;
    left: 50%;
    padding: 5px 10px 5px 40px;
    z-index: 1;
    margin-top: 1px
}

.page-todo .timeslot.alt .task {
    margin-left: 56%;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box
}

.page-todo .timeslot.alt .task .arrow {
    position: absolute;
    top: 6px;
    left: 0;
    height: 20px;
    width: 20px;
    border-left: none;
    border-right: 12px solid #63c2de;
    border-top: 12px solid transparent;
    border-bottom: 12px solid transparent;
    margin-left: -18px
}

.page-todo .timeslot.alt .task .arrow:after {
    top: -12px;
    left: 3px;
    height: 20px;
    width: 20px;
    border-left: none;
    border-right: 12px solid #e1f3f9;
    border-top: 12px solid transparent;
    border-bottom: 12px solid transparent
}

.page-todo .timeslot.alt .time {
    top: 1px;
    left: auto;
    right: 50%;
    padding: 5px 40px 5px 10px
}

@media only screen and (min-width:992px) and (max-width:1199px) {
    .page-todo task .desc {
        display: inline-block;
        width: 70%;
        padding: 10px 10px;
        font-size: 12px
    }
    .page-todo task .desc .title {
        font-size: 16px;
        margin-bottom: 5px
    }
    .page-todo task .time {
        display: inline-block;
        float: right;
        width: 20%;
        padding: 10px 10px;
        font-size: 12px;
        text-align: right
    }
    .page-todo task .time .date {
        font-size: 16px;
        margin-bottom: 5px
    }
}

@media only screen and (min-width:768px) and (max-width:991px) {
    .page-todo .task {
        margin-bottom: 1px
    }
    .page-todo .task .desc {
        display: inline-block;
        width: 65%;
        padding: 10px 10px;
        font-size: 10px;
        margin-right: -20px
    }
    .page-todo .task .desc .title {
        font-size: 14px;
        margin-bottom: 5px
    }
    .page-todo .task .time {
        display: inline-block;
        float: right;
        width: 25%;
        padding: 10px 10px;
        font-size: 10px;
        text-align: right
    }
    .page-todo .task .time .date {
        font-size: 14px;
        margin-bottom: 5px
    }
    .page-todo .timeslot .task span {
        padding: 5px;
        display: block;
        font-size: 10px
    }
    .page-todo .timeslot .task span span {
        border: 0;
        background: 0 0;
        padding: 0
    }
    .page-todo .timeslot .task span span.details {
        font-size: 14px;
        margin-bottom: 0
    }
    .page-todo .timeslot .task span span.remaining {
        font-size: 12px
    }
}

@media only screen and (max-width:767px) {
    .page-todo .tasks {
        position: relative;
        margin: 0!important
    }
    .page-todo .graph {
        position: relative;
        margin: 0!important
    }
    .page-todo .task {
        margin-bottom: 1px
    }
    .page-todo .task .desc {
        display: inline-block;
        width: 65%;
        padding: 10px 10px;
        font-size: 10px;
        margin-right: -20px
    }
    .page-todo .task .desc .title {
        font-size: 14px;
        margin-bottom: 5px
    }
    .page-todo .task .time {
        display: inline-block;
        float: right;
        width: 25%;
        padding: 10px 10px;
        font-size: 10px;
        text-align: right
    }
    .page-todo .task .time .date {
        font-size: 14px;
        margin-bottom: 5px
    }
    .page-todo .timeslot .task span {
        padding: 5px;
        display: block;
        font-size: 10px
    }
    .page-todo .timeslot .task span span {
        border: 0;
        background: 0 0;
        padding: 0
    }
    .page-todo .timeslot .task span span.details {
        font-size: 14px;
        margin-bottom: 0
    }
    .page-todo .timeslot .task span span.remaining {
        font-size: 12px
    }
}
	
	.bootdeys{margin-top: 90px;}
</style>

</head>
<body>

<div class="row mainArea">

	<div class="col-12 bannerMain">
		<div class="row bannerArea">
			<nav class="navbar bg-body-tertiary">
			  <div class="container-fluid nav nav-underline bannerMainBox">
			    
			 	<!--===========[Logo]===========-->
				<a class="navbar-brand bannerLogo link" href="Code_Mate.action">
					<img alt="Logo" class="LogoImage d-inline-block align-text-top" src="img/TestLogo.png" >
				</a>
				<!--===========[Logo]===========-->
				
				<span class="nav-link"><a href="#" class="link">프로젝트 게시판</a></span>
				<span class="nav-link"><a href="#" class="link">커리어 게시판</a></span>
				<span class="nav-link"><a href="#" class="link">포트폴리오 게시판</a></span>
			
			    
			    <!--=======[ member Icon ]=======-->
			    <div class="oneMember">
					<div class="buttonBox">
						<!--======[ search Button ]======-->
						<button id="searchButton" class="btn banner-btn search-btn " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">
							<ion-icon name="search-outline" class="banner-btn-icon"></ion-icon>
						</button>
						<!--======[ search Button ]======-->
		
						<!--======[ alarmButton ]======-->
						<button type="button" class="btn btn-secondary alarm-btn" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="bottom" data-bs-content="Bottom popover" style="<%=login%>">
						  <ion-icon name="notifications" class="banner-btn-icon"></ion-icon>
						</button>			
						<!--======[ alarmButton ]======-->

				    </div><!-- end .buttonBox -->
				    <a href="mypage.action">
						<div id="profile" style="<%=login%>">
							<img class="memberImg" src="img/profileImg_1.png">
						</div>
						<span class="nickname" id="mem1" style="<%=login%>">${member.nickname }</span>
						<div class="gradeIcon" style="<%=login%>">
							🌱
						</div>
					</a>
					 <!-- 로그인/회원가입으로 이동 -->
					<span class="nav-link log" ><a href="Login.action" class="link upside" style="<%=logout%>">로그인/회원가입</a></span>
				</div><!-- end .oneMember -->
			    <!--=======[ member Icon ]=======-->
			    </div>
			  	</div><!-- end .container-fluid -->
			</nav>
		</div><!-- end .row .bannerArea  -->
	</div>

	
	<!--===========[offCanvas]===========-->
	<div class="col-12">
		
		
		<div class="offcanvas offcanvas-top topoff" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
		  
		  
		  <!--[ 검색창을 열었을 때 보여지는 내용 ]-->
		  <div class="offcanvas-body ">
		  
		  	<div class="searchFormArea">
		  	
				<div class="search-Area">
					<ion-icon name="search-circle"></ion-icon>
				</div><!-- end .col-1 -->
				
				<div style="width: 100%">
				    <!--===========[searchForm]===========-->
				    <form class="d-flex" role="search">
				      <input class="form-control me-2 searchTextForm" type="search" placeholder="검색어를 입력하세요." aria-label="Search">
				      <button class="btn btn-outline-success" type="submit">Search</button>
				    </form>
				    <!--===========[searchForm]===========-->
			    </div><!-- end .col-8 -->
			    
		    </div><!-- end .row -->
		    
		  </div><!-- end .offcanvas-body -->
		</div>
	</div>
	<!--===========[offCanvas]===========-->
	
	
	
	<div class="flex">
		<div class="col-6 menuArea">
			<div class="leftmenuBarBox">
				<div class="leftmenuBar">
				
					<!--===========[Logo]===========-->
					<a class="navbar-brand mainLogo link" href="#">
						<img alt="Logo" class="LogoImageBanner d-inline-block align-text-top lastchange" src="img/TestLogo.png" >
					</a>
					<!--===========[Logo]===========-->
					
					
					<div class="menuOptions nav nav-underline" id="nav">
						<ul class="nav-item">
							<a href="#" class="majorTopic nav-link link">프로젝트12345123<ion-icon class="menuIcon" name="terminal-outline"></ion-icon></a>
							<li class="miniMenuOption">
								<ul>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item ">
							<a href="#" class="majorTopic nav-link link">프로젝345<ion-icon class="menuIcon" name="desktop-outline"></ion-icon></a>
							<li  class="miniMenuOption">
								<ul>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item">
							<a href="#" class="majorTopic nav-link link">프로젝트123415<ion-icon class="menuIcon" name="reader-outline"></ion-icon></a>
							<li class="miniMenuOption">
								<ul>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item">
							<a href="#" class="majorTopic nav-link link">프로젝2345<ion-icon class="menuIcon" name="person-outline"></ion-icon></a>
							<li class="miniMenuOption">
								<ul>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item">
							<a href="#" class="majorTopic nav-link link">프로젝2345<ion-icon class="menuIcon" name="person-outline"></ion-icon></a>
							<li class="miniMenuOption">
								<ul>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트121231345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
									<li class="miniMenuOption"><a href="#" class="nav-link link">프로젝트12345</a></li>
								</ul>
							</li>
						</ul>
						
					</div><!-- end .menuOptions -->
				</div><!-- end .leftmenuBar -->
			</div><!-- end .leftmenuBarBox -->
		</div><!-- end .col-6 .menuArea -->
		
		<!-- 본문 영역 -->
		<div class="row main-text">
			<div class="col-9">
				
				<div class="container page-todo bootstrap snippets bootdeys">
					<div class="col-sm-7 tasks">
						<div class="task-list">
							<h1>Tasks</h1>
							<div class="priority high"><span>일주일 내 마감</span></div>
							<div class="task high">
								<div class="desc">
									<div class="title">Lorem Ipsum</div>
									<div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</div>
								</div>
								<div class="time">
									<div class="date">Jun 1, 2012</div>
									<div> 1 day</div>
								</div>
							</div>
							<div class="task high last">
								<div class="desc">
									<div class="title">Lorem Ipsum</div>
									<div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</div>
								</div>
								<div class="time">
									<div class="date">Jun 1, 2012</div>
									<div>1 day</div>
								</div>
							</div>
					
							<div class="priority medium"><span>여유 있음</span></div>
					
							<div class="task medium">
								<div class="desc">
									<div class="title">Lorem Ipsum</div>
									<div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</div>
								</div>
								<div class="time">
									<div class="date">Jun 1, 2012</div>
									<div> 1 day</div>
								</div>
							</div>
							<div class="task medium last">
								<div class="desc">
									<div class="title">Lorem Ipsum</div>
									<div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</div>
								</div>
								<div class="time">
									<div class="date">Jun 1, 2012</div>
									<div> 1 day</div>
								</div>
							</div>
					
							<div class="priority low"><span>완료된 항목</span></div>

							<div class="task low">
								<div class="desc">
									<div class="title">Lorem Ipsum</div>
									<div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</div>
								</div>
								<div class="time">
									<div class="date">Jun 1, 2012</div>
									<div> 1 day</div>
								</div>
							</div>
							<div class="task low">
								<div class="desc">
									<div class="title">Lorem Ipsum</div>
									<div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</div>
								</div>
								<div class="time">
									<div class="date">Jun 1, 2012</div>
									<div> 1 day</div>
								</div>
							</div>
							<div class="clearfix"></div>		
						</div>		
					</div>
					</div>
				
			</div>
			<div class="col-2" style="margin-top: 12%;">
				<div class="memberlistall">
						<h4>MEMBERLIST</h4>
						<div class="memberlist">
							<div class="leader">
								<c:forEach items="${leader }" var="item">
							      	<span><img src="<%=cp %>/img/crown.png" class="leadericon"/> Leader : </span>
									<div class="membername">
											<img src="<%=cp %>/img/pompomLove.png" class="memberimg"/>
											<span class="member-name">${item.nickname }</span>
									</div>
							    </c:forEach>
							</div>
							
							<div class="front-back">
								<div class="front-all">
									<h5 class="job-type">FRONT-END <span class="membernum">${frontList.size() }명</span></h5>
									<div class="front">
										<c:forEach items="${frontList }" var="item">
											<div class="membername">
													<img src="<%=cp %>/img/pompomLove.png" class="memberimg"/>
													<span class="member-name">${item.nickname }</span>
											</div>
									    </c:forEach>
									</div>
									
								</div>
								<div class="back-all">
									<h5 class="job-type">BACK-END <span class="membernum">${backList.size() }명</span></h5>
									<div class="back">
										<c:forEach items="${backList }" var="item">
											<div class="membername">
													<img src="<%=cp %>/img/pompomLove.png" class="memberimg"/>
													<span class="member-name">${item.nickname }</span>
											</div>
									    </c:forEach>
									</div>
								</div>
							</div><!-- close.front-back -->
						</div><!-- close.memberlist -->
					</div><!-- close.memberlistall -->
			</div>
		</div>
		
</div><!-- end .row -->

</body>
</html>