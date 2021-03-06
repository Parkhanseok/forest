<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#content{
		width: 1180px;
		margin: 0 auto;		
		height: 1450px;
		overflow: hidden;
	}
	#content_login{
		width: 930px;
		height:77px;
		float: right;
	}
	#content_h3 {
	width: 930px;
	height: 77px;
	border-bottom: 1px solid #ccc;
	}

	#content_h3>h3 {
	padding: 20px 0 15px 0;
	font-size: 32px;
	}
	#content_content {
	width: 99%;
	height: 1350px;
	margin-top: 50px;
	}
	#content_count {
	width: 100%;
	height: 60px;
	line-height: 60px;
	background-color: rgba(213, 213, 213, 0.2);
	border-bottom: 1px solid #ccc;
}

#content_span {
	display: inline-block;
	width: 500px;
	margin-left: 20px;
	font-size: 13px;
	font-weight: 600;
}

#content_count>select {
	width: 110px;
	height: 28px;
}

#content_count>input {
	width: 180px;
	height: 22px;
}

#content_a {
	display: inline-block;
	width: 60px;
	height: 25px;
	border: 1px solid black;
	line-height: 25px;
	background-color: #797d89;
	color: white;
	text-align: center;
}
	#content_qa{
		width: 100%;
		height: 1130px;
		overflow:hidden;
		margin-top: 30px;
		border-top: 2px solid black;
	}
	.content_title{
		width: 100%;
		height: 60px;
		border-bottom: 1px dotted #ccc;
		line-height: 60px;
		overflow: hidden;
	}
	
	.c_no{
		float:left;
		font-size: 20px;
		font-weight: bold;
		width: 100px;
		height: 60px;
		text-align: center;
	}
	.c_title{
		font-size: 20px;
		font-weight: bold;
		width: 530px;
		height: 60px;
		margin-left: 20px;
		text-overflow: ellipsis;
		overflow: hidden;
		white-space: nowrap;
		float:left;
	}
	.c_name{
		float:left;
		display: inline-block;
		width: 90px;
		height: 50px;
		text-align: center;
		color: #2d905b;
		font-weight: bold;
	}
	.c_date{
		float:left;
		display: inline-block;
		width: 100px;
		height: 60px;
		margin-left: 40px;
		text-align: center;
	}
	.content_name{
		width: 100%;
		height: 50px;
		border-bottom: 1px solid #ccc;   
		overflow: hidden;
	}
	.c_img>img{
		margin-top: 10px;
		float:left;
		margin-left: 150px;
	}   
	.c_state{
		display:inline-block;
		margin-top:15px;
		margin-left:10px;
		width: 90px;
		height: 30px;
		color: #2d905b;
		font-weight: bold;
	}
	.c_no{
		border-bottom: 1px solid white !important;
	}
	#div_a {
	width: 100%;
	height: 50px;  
	overflow: hidden;
	text-align: center;
}

#div_left {
	/*  width: 8%; */
	height: 50px;   
	float: left;
	margin-left: 380px;
	margin-right: 3px;
}

#div_left>a>img {
	border: 1px solid #ccc;
}

#div_pagea {
/* 	width: 22%; */
	height: 50px;
	margin: 0 auto;
	float: left;
}

#div_pagea>a {
	display: inline-block;
	width: 32px;
	height: 32px;
	border: 1px solid #ccc;
	text-align: center;
	line-height: 30px;
	font-size: 15px;
	margin-left: 2px;
}

#div_right {
	/* width: 8%; */
	height: 50px;
	float: left;
	margin-left: 3px;
}

#div_right>a>img {
	border: 1px solid #ccc;
}
   
#div_aleft {
	display: none;
}

#div_astart {
	display: none;
}

#div_aright {
	display: none;
}

#div_aend {
	visibility: hidden;
}
#board{
	width: 100%;
	height: 50px;
	overflow: hidden;
}
#boardWrite{
	display: inline-block;
	width: 80px;
	height: 30px;
	border: 1px solid #2d905b;
	line-height: 30px;
	text-align: center;
	background-color:#2d905b;
	color: white;
	float: right;
}
.content_d{
	width: 100%;
	height: 50px;
	margin-top: 10px;
}
.content_d>a{
	float:right;
	width: 90px;
	line-height:40px;
	text-align:center;
	height: 40px;
	background-color: #2d905b;
	color: white;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		/* $(".intro_menu").eq(3).css("color","#2d905b"); */
		 $("#intro_qa").css("color","#2d905b");
		
		$("#content_a").click(function(){
			
			var search =$("input[name='name']").val();			
			var sel = $("#sel").val();
			
			if(search.length==0){
				alert("검색할 단어가 없습니다.");
				return false;
			}
			
			
			$.ajax({
				url : "qaBoardUpdate.do",
				type : "post",
				dataType : "json",//서버로 부터 돌려받을 데이터의 타입
				data:{"sel":sel,
					"search":search},
				success : function(data) {
				$("#content_qa").empty();		
				$("#div_a").remove();
				$("#content_span").empty();   
				$("#content_span").append("총 게시글 " + data.question.length+"건");
				
					
				if(data.question.length==0){
			
					var $p = $("<p id='idp'>").html("검색된 결과가 없습니다.");
					$("#content_qa").append($p);
					return false;
				}
				
				 for(var i = 0;i<data.question.length;i++){
					
					var $span_no = $("<span class='c_no'>").html(data.question[i].qNo);
					
					
					var $spnaa = $("<a href='qaBoardRead.do?key="+data.question[i].qNo+"'>").html(data.question[i].qTitle);
					var $span3 = $("<span class='c_title'>").append($spnaa);
					var $span4 = $("<span class='c_name'>").html(data.question[i].user.uName);        
					var date = new Date(data.question[i].qDate);
					var month = date.getMonth() + 1;
						month = String(month);
					var da = date.getDate();
						da = String(da);
					var mon = "";
						if (month.length == 1) {
							mon += "0" + month;
						} else if (month.length == 2) {
							mon += month;
						}
					var d = "";
						if (da.length == 1) {
							d += "0" + da;
						} else if (da.length == 2) {
							d += da;
						}
													   
					var $span5 = $("<span class='c_date'>").html(date.getFullYear()+ "-"+ mon+ "-"+ d);
					
					var $state =data.question[i].qState;
					
					var $img="";
					var $ima_state="";
					if($state==0){
						$img = $("<img src='/forest/css/images/intro/1.png'>");
						$ima_state = $("<span class='c_state'>").append("처리중");
						        
					}else{  
						$img = $("<img src='/forest/css/images/intro/2.png'>");
						$ima_state = $("<span class='c_state'>").append("처리완료");
					}  
						var $span_img= $("<span class='c_img'>").append($img);
					   
					var $divcontent = $("<div class='content_title'>").append($span_no).append($span3).append($span4).append($span5);
					var $divcstate = $("<div class='content_name'>").append($span_img).append($ima_state);
					
					
					$("#content_qa").append($divcontent).append($divcstate);
				} 
				 var $div2 =$("<div class='content_d'>");
					var $div2_a= $("<a href='qaBoard.do'>").html("전체목록 보기");
					$($div2).append($div2_a);
					$("#content_qa").append($div2);
				}
			})
			
			
			
		})
	})
</script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<div id="content">
		<jsp:include page="introductionSide.jsp"/>
		<div id="content_login">
		<div id="content_h3">
				<h3>질문과 답변</h3>
			
		</div>
		
		<!-- 안에내용 -->
		<div id="content_content">
			<div id="content_count">
					<span id="content_span">총 게시글 ${quesize }건</span>
					 <select name="sel" id="sel">
						<option value="제목">제목</option>
						<option value="작성자">작성자</option>
					</select> 
					<input type="text" name="name"> 
					<a href="#" id="content_a">검색</a>
				</div>
				
				
				
			<div id="content_qa">
			
				<c:forEach var="list" items="${que }">
				<div class="content_title">
					<span class="c_no">${list.qNo }</span>
					<span class="c_title"><a href="qaBoardRead.do?key=${list.qNo }">${list.qTitle }</a></span>
					<span class="c_name">${list.user.uName}</span>
					<span class="c_date">
					<fmt:formatDate value="${list.qDate }" pattern="yyyy-MM-dd"/>
					</span>
				</div>			
				<div class="content_name">		
					<c:choose>
						<c:when test="${list.qState==1 }">
							<span class="c_img">
							<img src="/forest/css/images/intro/2.png"></span>
						</c:when>
						<c:otherwise>
							<span class="c_img">
							<img src="/forest/css/images/intro/1.png"></span>
						</c:otherwise>
					</c:choose>
				
				
				
					
					
					<span class="c_state">
					
					<c:choose>
						<c:when test="${list.qState==1 }">
							처리완료
						</c:when>
						<c:otherwise>
							처리중
						</c:otherwise>
					</c:choose>
					
					</span>
				</div>
			</c:forEach>
				
			
			</div>
			<c:if test="${id !=null }">
			<div id="board">
				<a href="qaBoardWrite.do" id="boardWrite">글쓰기</a>
			</div>
			</c:if>
			
			
			<div id="div_a">
				
					<div id="div_left">
					
					<c:if test="${pagestart > 1}">
					<a href="qaBoard.do?pa=${1 }" >
					<img src="/forest/css/images/login/startpage.png" id="div_astart"></a>
					<script type="text/javascript">
					$("#div_astart").show();
					</script>
					</c:if>
			
					<c:if test="${pages > 5 }">
						<a href="qaBoard.do?pa=${(pages-5) }&key=left" >
						<img src="/forest/css/images/login/left.png" id="div_aleft"></a>
						
					</c:if>
					<script type="text/javascript">
					$("#div_aleft").show();
					</script>
					</div>

					
					<div id="div_pagea">
					<c:if test="${page > 5 }"> 
					<c:forEach var="p" begin="${pages }" end="${page}"> 	
					<c:if test="${p <pages+5 }">
						<a href="qaBoard.do?pa=${p }">${p }</a>
					</c:if>
					</c:forEach>
					</c:if>  
			
			
					<c:if test="${page <= 5 }">
					<c:forEach var="p" begin="${pages }" end="${page}"> 	
						<a href="qaBoard.do?pa=${p }">${p }</a>
					</c:forEach>
					</c:if>
					</div>
					
					<div id="div_right">
					<c:if test="${page > 5||(page-pages)>5 }">
					<a href="qaBoard.do?pa=${(pages+5) }&key=right"><img src="/forest/css/images/login/right.png" id="div_aright"></a>					
					<script type="text/javascript">
					$("#div_aright").show();
					</script>
					</c:if>	
					<c:if test="${(page-pages)<5 }">
					<script type="text/javascript">
					$("#div_aright").css("display","none");
					</script>
					</c:if>
					
					
					<c:if test="${page > 5  || (page-pages)>5}">
					<a href="qaBoard.do?pa=${page }"><img src="/forest/css/images/login/endpage.png" id="div_aend"></a>
					<script type="text/javascript">
					$("#div_aend").css("visibility","visible");
					</script>
					</c:if> 	
					<c:if test="${(page-pages)<5 }">
					
					<script type="text/javascript">
					$("#div_aend").css("visibility","hidden");
					</script>
					</c:if>
					   
					</div> 
		
			
		</div>
		
		</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"/>
	
	<c:if test="${tf>0 }">
		<script type="text/javascript">
			alert("등록 되었습니다.");   
			location.href="qaBoard.do?pa=1";
		</script>
	</c:if>
	
	<c:if test="${deletf>0 }">
		<script type="text/javascript">
			alert("삭제 되었습니다.");   
			location.href="qaBoard.do?pa=1";
		</script>
	</c:if>
	
	<c:if test="${update>0 }">
		<script type="text/javascript">
			alert("수정 되었습니다.");   
			location.href="qaBoard.do?pa=1";
		</script>
	</c:if>
	
</body>
</html>