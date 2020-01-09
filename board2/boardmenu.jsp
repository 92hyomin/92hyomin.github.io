<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
	.boardContainer {
		width: 70%;
		margin: 0 auto;
		margin-bottom: 10px;
		font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	}
	
	#board .hm_h1{
		text-align: center;
		margin: 0 auto;
		margin-top: 40px;
		margin-bottom: 70px;
		font-weight: bold;
		font-family: 'Notokr', sans-serif;
	}
	
	#board .col-md-4{
		border-bottom: solid 2px #c1c1c1;
	}

	#board .boardTabli span{
		text-align: center;
		font-size: 13pt;
		list-style-type: none;
		cursor: pointer;
		color: black;
	}
	
	#board .boardTabli{
		text-align: center;
		font-size: 15pt;
		font-weight: bold;
		list-style-type: none;
		cursor: pointer;
	}
	
	#board .tabClick{
		border-bottom: solid 2px #9d6849;
	}
	
	#board .tabClick span{
		color: #9d6849;
	}
	
	#board ul.hm{
		display: inline;
	}
	
	#board #top_comment {
		color: gray;
		float: right;
		font-size: 9pt;
	}
	
	<%-- 게시판 내용 CSS 시작 --%>
	#board .hm_thead > tr > th{ 
		font-size: 10pt; 
		text-align: center;
	}
	
	#board .hm_tbody{ 
		font-size: 9pt;  
		text-align: center;
	}
	
	#boardTbl td{
		vertical-align: middle;
	}
	<%-- 게시판 내용 CSS 끝 --%>
	
</style>
<script type="text/javascript">

/*************************************************************/
/*	페이지 새로고침 없이 게시판 변경을 위해 show, hide 사용  */
/*************************************************************/

$(document).ready(function(){
	
	/* 우상단 경로 앞에 들어올 문자열 */
	var top_commentPrev = "Home>Mypage>";
	
 	/* 페이지 로딩 시 첫번째 게시판 출력 */ 
	$(".board").hide();
	$("#board1").show();
	$("#tab1").addClass("tabClick");
	
	/* 우상단 텍스트 표시 */
	var top_comment = $(".tabClick").text();
	$("#top_comment").text(top_commentPrev + top_comment);
	
	/* 탭 클릭시 이벤트: 탭 1개면 클릭이벤트 삭제 */
	$(".tabMenu").click(function(){
		$(".board").hide();
		$(".tabMenu").removeClass("tabClick");
		
		var rel = $(this).attr("rel");
        $("#" + rel).show()
        
		$(this).addClass("tabClick");
        
        /* 우상단 텍스트 현재 게시판 이름으로 변경 */
        var top_comment = $(".tabClick").text();
		$("#top_comment").text(top_commentPrev + top_comment);
	});
	
});//end of $(document).ready(function(){}

</script>

<div id="board" class="boardContainer">
	<span id="top_comment"></span><br>
	
	<h1 class="hm_h1">게시판</h1>
	
	<div class="row" style="margin: 0 auto; ">
		<ul class="hm">
		
			<%--------------------------------------------------
				게시판 갯수 변경시 col-md-4 변경(게시판갯수/12)
				3개 col-md-4
				2개 col-md-6
				1개 col-md-12
			 -------------------------------------------------%>
			<li class="boardTabli"><div id="tab1" class="col-md-4 tabMenu" rel="board1"><span>게시판1</span></div></li>
		    <li class="boardTabli"><div id="tab2" class="col-md-4 tabMenu" rel="board2"><span>게시판2</span></div></li>
		    <li class="boardTabli"><div id="tab3" class="col-md-4 tabMenu" rel="board3"><span>게시판3</span></div></li>
	    </ul>
	</div>
	
	<div id="board1" class="board">
		<jsp:include page="board1.jsp"/>
	</div>
	
	<div id="board2" class="board">
		<jsp:include page="board2.jsp"/>
	</div>
	
	<div id="board3" class="board">
		<jsp:include page="board3.jsp"/>
	</div>
</div>
	