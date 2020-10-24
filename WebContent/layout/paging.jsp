<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!-- 페이징을 위한 변수 설정 -->
		<c:choose>
			<c:when test="${empty param.keyword}">  <!-- empty는 공백과 null을 모두 확인해줌 -->
				<c:set var="pagePrev" value="/post?cmd=list&page=${param.page-1}" />
				<c:set var="pageNext" value="/post?cmd=list&page=${param.page+1}" />
			</c:when>
			<c:otherwise>
				<c:set var="pagePrev" value="/post?cmd=search&page=${param.page-1}&keyword=${param.keyword}" />
				<c:set var="pageNext" value="/post?cmd=search&page=${param.page+1}&keyword=${param.keyword}" />
			</c:otherwise>
		</c:choose>
	
	
		<!-- 페이지 부분 시작 -->
		<ul class="pagination justify-content-center">
			<c:choose>
				<c:when test="${param.page == 0}">
					<li class="page-item disabled"><a class="page-link" >Prev</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="${pageScope.pagePrev}">Prev</a></li>
				</c:otherwise>
			</c:choose>
		<!-- if해서 lastpage, param.page 값비교해서 동일하면 Next는 disabled 되야함, prev는 param=0이면 disabled -->
			<c:choose>
				<c:when test="${param.page == lastPage}">
					<li class="page-item disabled"><a class="page-link" >Next</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="${pageScope.pageNext}">Next</a></li>
				</c:otherwise>
			</c:choose>
	</ul>
	<!-- 페이지 부분 끝 -->