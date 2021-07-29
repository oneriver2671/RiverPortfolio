<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "board.BoardDTO" %>
<%@ page import = "vo.PageInfo" %>
<%
  // 로그인 성공 후, 정보 가져오기
  request.setCharacterEncoding("utf-8");
  String id = (String)session.getAttribute("id");
  if(id == null){
	  id = "";		// 로그인 안했을 시, id값을 null 대신 공백으로 처리.
  }
%>

<%
	/* ListAction에서 넘어온 것들 */
	ArrayList<BoardDTO> articleList = (ArrayList<BoardDTO>)request.getAttribute("articleList");
  PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= request.getParameter("sort") %></title>
  <!-- CSS 파일 -->
  <link rel="stylesheet" type="text/css" href="../River_Board/style/music_list_style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="../River_Index/header_style.css" media="screen" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

  <!-- Font Awesome CDN -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">

  <!-- jQuery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/music_list.js"></script>
</head>
<script>
function loginCheck(id){
	var id;
	if(id == ""){		
		alert('로그인 후 작성할 수 있습니다.');
	} else{
		location.href='../River_Board/board_write.jsp';
	}
}
</script>

<body>
<jsp:include page="../River_Index/searchBar.jsp"></jsp:include>		<!-- 검색창 담겨있음 -->
<jsp:include page="../River_Index/header.jsp"></jsp:include>		<!-- header 담겨있음 -->
<div id="wrap">
  <section>
  	<div id="main_section">	  	
				<h2><%= request.getParameter("sort") %></h2> 
	  		<table class="main_table">
	  			<thead>
	  				<tr>
	  					<th>말머리</th>
	  					<th>제목</th>
	  					<th class="mainT_writer">작성자</th>
	  					<th class="mainT_date">작성일</th>
	  					<th class="mainT_num">조회</th>
	  					<th class="mainT_num">좋아요</th>
	  				</tr>
	  			</thead>
	  			<tbody>
  			<%
						for(int i=0; i<articleList.size(); i++){
							BoardDTO dto = articleList.get(i);
				%>
						<tr>
							<td><%= dto.getOrders() %></td>
							<td><a href="boardDetail.bo?orders=<%=dto.getOrders()%>&sort=<%=request.getParameter("sort")%>&id=<%=id%>"><%= dto.getTitle()%></a></td>
							<td><%= dto.getWriter_id() %></td>
							<td><%= dto.getWrited_date().substring(0, 4)%>.<%=dto.getWrited_date().substring(5, 7)%>.<%=dto.getWrited_date().substring(8, 10)%></td>
							<td><%= dto.getCheck_num() %></td>
							<td><%= dto.getLike_num() %></td>
						</tr>
						<% } %>	 <!-- for문 종료 -->
	  			</tbody>
	  		</table>
		
  		<div class="write_blank">
  			<div id="write_btn" onclick="loginCheck('<%= id %>')"  >글쓰기</div>
  		</div>
  		<div id="bot_section">
  			<div>
  			<!-- 5페이지 이상 넘어가면, >표시로 6~10페이지 출력되게. -->
 					<%if(nowPage>1){ %>
						<a href="boardList.bo?sort=<%=request.getParameter("sort")%>&page=<%=nowPage-1 %>">◀</a>&nbsp;
					<%} %>
				
					<%for(int a=startPage; a<=endPage; a++){
							if(a==nowPage){%>
								[<%=a %>]
						<%} else{ %>
							<a href="boardList.bo?sort=<%=request.getParameter("sort")%>&page=<%=a %>">[<%=a %>]
						</a>&nbsp;
							<%} %>
					<%} %>
						
					<%if(nowPage<maxPage){ %>
						<a href="boardList.bo?sort=<%=request.getParameter("sort")%>&page=<%=nowPage+1 %>">▶</a>
						<%} %> 
  			</div>
  			<div>
  				<!-- 검색 기능 -->
  				<form name="board_search" class="board_search" action="boardSearch.bo?sort=<%= request.getParameter("sort") %>" method="POST">
  					<select name="search_by_day">
  						<option>전체기간</option>
  						<option>1일</option>
  						<option>1주</option>
  						<option>1개월</option>
  						<option>6개월</option>
  						<option>1년</option>
  						<!-- 밑에 기간 입력 칸도 만들고 싶음. -->
  					</select>
  					<select name="search_by_content">
  						<option>제목+내용</option>
  						<option>제목만</option>
  						<option>글 작성자</option>
  						<option>댓글 내용</option>
  						<option>댓글 작성자</option>
  					</select>
  					<input type="text" name="search_value" placeholder="검색어를 입력해주세요" class="searchBar">
  					<input type="submit" value="검색" class="search_btn">
  				</form>
  			</div>
  		</div>
  	</div>
  </section>
<!-- footer -->
  <footer>
    <div id="footer_bar">
      <ul class="footer_linkBox">
        <li>사이트맵</li>
        <li>개인정보처리방침</li>
        <li>이용약관</li>
      </ul>
      <ul class="footer_snsBox">
        <li><img src="../River_Index/images/footer/footer-icon01.gif"></li>
        <li><img src="../River_Index/images/footer/footer-icon03.gif"></li>
        <li><img src="../River_Index/images/footer/footer-icon04.gif"></li>
        <li><img src="../River_Index/images/footer/footer-icon07.gif"></li>
      </ul>
    </div>
  </footer>		<!-- footer 끝 -->
</div> 	<!-- wrap 끝 -->

</body>
</html>