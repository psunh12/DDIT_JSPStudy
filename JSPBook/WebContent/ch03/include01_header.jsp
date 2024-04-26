<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<%!	// 선언문
// 	// 전역변수
// 	int pageCount =0;
// 	// 전역메소드. 리턴타입은 없음
// 	void addCount(){
// 		// 증감연산자
// 		pageCount++;
// 	}
%>
<%	// 스크립틀릿
	// 전역메소드 호출 ==> 방문수를 1 증가
// 	addCount();
// 	int pageCount =0;
// 	pageCount++;
%>
<p>이사이트 방문은 <span id="spnCounter">1</span>번째 입니다.</p>
<script type="text/javascript">
// 전역변수
// let pageCount =0;
// document 내의 모든 요소들이 로딩된 후에 실행
$(function(){
   if(sessionStorage.getItem("counter")==""){
      sessionStorage.setItem("counter",Number("1"));
   }else{
      sessionStorage.setItem("counter",Number(sessionStorage.getItem("counter"))+1);
   }
   $("#spnCounter").text(sessionStorage.getItem("counter"));
});
</script>