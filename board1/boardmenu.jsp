<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
	#login_container {
		/* border: dashed 1px gray; */
		width: 70%;
		margin: 0 auto;
		margin-bottom: 10px;
		font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
		color: black;
	}
	
	.hm_h1{
		text-align: center;
		margin: 0 auto;
		margin-top: 40px;
		margin-bottom: 70px;
		font-weight: bold;
		font-family: 'Notokr', sans-serif;
	}

	.boardTabli span{
		text-align: center;
		font-size: 13pt;
		list-style-type: none;
		cursor: pointer;
		color: black;
	}
	
	.hm_thead > tr > th{ 
		font-size: 10pt; 
		text-align: center;
	}
	
	.hm_tbody{ 
		font-size: 9pt;  
		text-align: center;
	}
	
</style>
<script type="text/javascript">

/***************************************************************/
/*	페이지 새로고침 없이 게시판 변경을 위해 show, hide로 구현  */
/***************************************************************/

$(document).ready(function(){
 	/* 페이지 로딩 시 첫번째 게시판 출력 */ 
	$(".board").hide();
	$("#board1").show();
	$("#tab1").addClass("active");

	/* 탭 클릭시 이벤트 */
	$(".tabMenu").click(function(){
 		$(".board").hide();
 		$(".boardTabli").removeClass("active");
 		$(this).parent().addClass("active");

 		var rel = $(this).attr("rel");
        $("#" + rel).show()
	});
	
});//end of $(document).ready(function(){}

</script>

<h1 class="hm_h1">게시판</h1>

<div class="tabMenuDiv" style="margin: 0 auto; ">
	<ul class="hm nav nav-tabs">
		<li id="tab1" class="boardTabli"><a href="#" class="tabMenu" rel="board1"><span>게시판1</span></a></li>
	    <li id="tab2" class="boardTabli"><a href="#" class="tabMenu" rel="board2"><span>게시판2</span></a></li>
	    <li id="tab3" class="boardTabli"><a href="#" class="tabMenu" rel="board3"><span >게시판3</span></a></li>
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
	