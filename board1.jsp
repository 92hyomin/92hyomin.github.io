<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
<h4 style="font-weight: bold; margin-top: 40px;">게시판1</h4>
	<thead class="hm_thead">
		<tr>
			<th width="10%">NO.</th>
			<th width="20%">상품명</th>
			<th width="10%">등급</th>
			<th width="30%">리뷰내용</th>
			<th width="20%">작성일자</th>
		</tr>
	</thead>
	<tbody class="hm_tbody">
	
	<%-- 세미흔적 
	<c:if test="${empty requestScope.reviewList}">
			<tr>
				<td colspan="5">내가 쓴 리뷰가 없습니다.</td>
			</tr>
	</c:if>
	--%>
	
	<tr>
		<td style="vertical-align: middle;">1</td>
		<td id="prodNameTd" style="vertical-align: middle;"><span>게시글 제목1</span></td>
		<td style="vertical-align: middle;">1</td>
		<td style="text-align: left;">꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1꾸릉1</td>
		<td style="vertical-align: middle;">2020.01.08</td>
	</tr>
	
	<tr>
		<td style="vertical-align: middle;">2</td>
		<td id="prodNameTd" style="vertical-align: middle;"><span>게시글 제목2</span></td>
		<td style="vertical-align: middle;">2</td>
		<td style="text-align: left;">꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2꾸릉2</td>
		<td style="vertical-align: middle;">2020.01.08</td>
	</tr>
	
	<tr>
		<td style="vertical-align: middle;">3</td>
		<td id="prodNameTd" style="vertical-align: middle;"><span>게시글 제목3</span></td>
		<td style="vertical-align: middle;">3</td>
		<td style="text-align: left;">꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3꾸릉3</td>
		<td style="vertical-align: middle;">2020.01.08</td>
	</tr>
	
	</tbody>
</table>
