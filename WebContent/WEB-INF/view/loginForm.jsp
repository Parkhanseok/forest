<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국립자연휴양림관리소-웹고객 가입</title>
<style>
	#content{
		width: 1180px;
		margin: 0 auto;		
		height: 950px;
		overflow: hidden;
	}
	#content_loginForm{
		width: 930px;
		float: right;
	}
	#content_h3{
		width: 930px;
		height: 77px;
		border-bottom: 1px solid #ccc;
	}
	#content_h3>h3{
	 	padding: 20px 0 15px 0;
	 	font-size: 32px;
	}
	#cotent_agree>ul{
		width: 100%;
		height: 66px;
		margin-top: 40px;
		position: relative;
	}
	#cotent_agree>ul>li{
		width: 241px;
		height: 65px;
		background-color:rgba(213,213,213,0.5);
		float: left;
		line-height: 65px;
		border-radius: 50px;
		text-align: center;
		font-size: 15px;
		font-weight: 700;
		position: absolute;
	}
	/* 약관동의위에 */
	#cotent_agree>ul>li:FIRST-CHILD {
		margin-left: 115px;
		
	}
	#cotent_agree>ul>li:NTH-CHILD(2){
		top: 0;
		left: 335px;
		background-color:rgba(41,144,91,1);
		color: white;
		z-index: 5;
	}
	#cotent_agree>ul>li:NTH-CHILD(3){
		top: 0;
		left: 560px;
	}
	#content_number{
		margin-top:15px;
		width: 100%;
		height: 37px;
	}
	#content_number>ul>li{
		float: left;
		width: 200px;
		text-align: center;
	}
	#content_number>ul>li:FIRST-CHILD{
		margin-left: 140px;
	}
	#content_number>ul>li:NTH-CHILD(2){
		margin-left: 20px;
	}
	#content_number>ul>li:NTH-CHILD(3){
		margin-left: 20px;
	}
	#content_number>ul>li>span{
		display: inline-block;
		line-height: 37px;
	}
	#content_number>ul>li>.content_num{
		width: 37px;
		height: 37px;
		border-radius: 50px;
		background-color: #6F6F6F;
		color: white;
		font-weight: bold;
		margin-left: 3px;
		margin-right: 5px;
	}
	.content_com{
		color:#ccc;
		font-size: 5px;
		letter-spacing: 5px;
	}
	#content_join{
		width: 100%;
		height: 45px;
		margin-top: 40px;	
		margin-bottom: 10px;
	}
	#content_joinSpan{
		float:left;
		margin-left:10px;
		width:50px;
		border-top: 2px solid #2d905b;
	}
	#content_joinH4{
		font-size: 18px;
		font-weight: 600;
		clear:both;
		margin-left: 10px;
		line-height: 37px;
	}
	#content_joinForm{
		width: 98%;
		margin:0 auto;
		height: 486px;
		background-color:rgba(213,213,213,0.3);
	}
	#content_joinForm div{
		width: 100%;
		border-bottom: 1px solid #ccc;		
	}
	
	.form_none{
		height: 40px;
		line-height: 40px;
	
	}
	.form_one{
		height: 60px;
		margin-top: 10px;	
	}
	.form_one label{
		line-height: 40px;
	}
	.form_tw{
		height: 120px;
	}
	.form_tw label{
		line-height: 120px;
	}
	#content_joinForm label{
		width: 100px;
		float: left;
		margin-left: 20px;
		color:#29905B;
		font-weight: 600;
	}
	#content_joinForm input{
		height: 20px;
		font-size: 11px;
	}
	.sub{
		margin-left: 34px;
		font-size: 13px;
		color:#4375DB;
	
	}
	.subphone{
		margin-left: 34px;
		font-size: 13px;
		color:red;
	}
	.star{
		color: red;
		font-size: 10px;
		margin-right: 20px;
	}
	#duplicationId{
		display:inline-block;
		width: 80px;
		height: 30px;
		line-height: 30px;
		margin-left: 20px;
		text-align: center;
		color: white;
		background-color: #797d89;
	}
	#searchAddr{
		display:inline-block;
		width: 100px;
		height: 30px;
		line-height: 30px;
		margin-left: 20px;
		text-align: center;
		color: white;
		background-color: #797d89;
	}
	.subaddr{
		width: 500px;
		margin-left: 33px;
		margin-top: 5px;
	}
	#sub_e{
		width: 200px;
	}
	#sub_sel{
		width: 150px;
		height: 25px;
	}
	#btn{
		width: 90%;
		height: 40px;
		margin-top: 40px;
		text-align: center;
	}
	#btn > input{
		width: 100px;
		height: 40px;
		line-height: 30px;
		margin-left: 20px;
		text-align: center;
		color: white;
		background-color: #29905B;
		font-size: 15px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	/* 웹고객가입 색 */
	$("#loginSide_web").css("color","#2d905b");
	
	
	$("#searchAddr").click(function(){
		window.open("searchAddr.do","pop1","width=580,height=580,right=600,top=300,scrollbars=no");
		
 		return false;
 	})
 	$("#btn").click(function(){
 		return false;
 	})
})
</script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="content">
		<jsp:include page="loginSide.jsp"/>
		<div id="content_loginForm">
			<div id="content_h3">
				<h3>웹고객 가입</h3>
			</div>
			<div id="cotent_agree">
				<ul>
					<li>약관동의</li>
					<li>정보입력</li>
					<li>가입완료</li>
				</ul>
			</div>
			<div id="content_number">
				<ul>
					<li><span class="content_com">●●●</span><span class="content_num">01</span><span class="content_com">●●●</span></li>
					<li><span class="content_com">●●●</span><span class="content_num">02</span><span class="content_com">●●●</span></li>
					<li><span class="content_com">●●●</span><span class="content_num">03</span><span class="content_com">●●●</span></li>
				</ul>
			</div>
			
		<div id="content_join">
			<span id="content_joinSpan"></span>
			<div id="content_joinH4">
			기본정보
			</div>
		</div>
		<div id="content_joinForm">
			<form action="loginResult.do" method="post">
				<div class="form_none">
					<label>이름</label><span class="star">★</span>
					<input type="text" name="name">
				</div>
				<div class="form_one">
					<label>아이디</label><span class="star">★</span>
					<input type="text" name="id">
					<a href="#" id="duplicationId">중복확인</a><br>
					<span class="sub">＊ 6-12자 이내로 입력하세요.</span>
				</div>
				<div class="form_one">
					<label>비밀번호</label><span class="star">★</span>
					<input type="password" name="pass1"><br>
					<span class="sub">＊ 10~16자리 영문+숫자+특수문자[불가능문자:^,;,:,&,',',/]</span>
				</div>
				<div class="form_one">
					<label>비밀번호 확인</label><span class="star">★</span>
					<input type="password" name="pass2"><br>
					<span class="sub">＊ 입력 오류 방지를 위하여 똑같이 한번 더 입력합니다.</span>
				</div>
				<div class="form_tw">
					<label>주소</label><span class="star">★</span>
					<input type="text" name="addr1">
					<button id="searchAddr">도로명 찾기</button><br>
					<input type="text" name="addr2" class="subaddr"><br>
					<input type="text" name="addr3" class="subaddr">
				</div>
				<div class="form_one">
					<label>휴대전화</label><span class="star">★</span>
					<input type="text" name="phone"><br>
					<span class="subphone">＊'-'를 제외한 전화번호를 입력해주세요.</span>
				</div>
				<div class="form_none">
					<label>이메일</label><span class="star">★</span>
					<input type="text" name="e1">
					@
					<input type="text" name="e1" id="sub_e">
					<select name="sel" id="sub_sel">
						<option>직접입력</option>
						<option>naver.com</option>
						<option>chol.com</option>
						<option>dreamwiz.com</option>
						<option>empal.com</option>
						<option>freechal.com</option>
						<option>gmail.com</option>
						<option>hanafos.com</option>
						<option>hanmail.net</option>
						<option>hanmir.com</option>
						<option>hitel.net</option>
						<option>hotmail.com</option>
						<option>korea.com</option>
						<option>lycos.co.kr</option>
						<option>nate.com</option>
						<option>netian.com</option>
						<option>paran.com</option>
					</select>
				</div>
				<p id="btn">
					<input type="submit" value="웹고객가입">
				</p>
			</form>
		</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>