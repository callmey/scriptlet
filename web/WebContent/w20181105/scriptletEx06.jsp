<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex06</title>
</head>
<body>
	<%
		String name = "홍길동";
		int ko = 90;
		int eng = 95;
		int math = 100;
		int sum = sum(ko, eng, math);
		//double avg = avg(sum);
	%>
	
	<%!
		public int sum(int x, int y, int z){
			return x+y+z;
		}
		
		public double avg(int sum) {
			return sum/3.0;
		}
	%>
	
	<!-- 
		출력 ( 총점과 평균은 메소드로 만들어서 출력해보세요 )
		성적표 : h1
		div (size - 24 px)
		한 줄 내리고
		성명 :
		국어 :
		영어 :
		총점 : 
		평균 :
	 -->
	 
	 <h1>성적표</h1>
	<div style="font-size: 24px">
	----------------------------------<br />
	성명 : <%=name %> <br />
	국어 : <%=ko %> <br />
	영어 : <%=eng %> <br />
	수학 : <%=math %> <br />
	총점 : <%=sum%> <br />
	평균 : <%=avg(sum)%>
	</div>
	 
	 
</body>
</html>