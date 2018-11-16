<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write.jsp</title>
<style type="text/css">

	#container{
		margin : 0 auto;
		width :600px;
		border : 1px solid black;
	}
	#top{
		text-align: center;
		color: #ff6c00;
		border : 1px solid black;
	}
	#context{
		margin-left:7px;
	}
	#button{
		margin-left: 20px;
	}
	#writer, #title {
		margin-left : 20px;	
	}
</style>


<script type="text/javascript" src="../se/js/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript">


	//스마트 에디터 화면에 띄우기 위한 부분
	var oEditors = [];
	
	window.onload = function(){
		
		nhn.husky.EZCreator.createInIFrame({
			
		    oAppRef: oEditors, //name : value (jquery)
		
		    elPlaceHolder: "ct",//textarea id로 바꿈
		
		    sSkinURI: "../se/SmartEditor2Skin.html", //원래 se2인데 내건 폴더이름이 se
		
		    fCreator: "createSEditor2"
		
		});	
	}
	
	//스마트 에디터 textarea에 작성한 데이터 전달하기 
	
	// ‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.

	function submitContents(elClickedObj) {

	    // 에디터의 내용이 textarea에 적용된다.
	
	    oEditors.getById["ct"].exec("UPDATE_CONTENTS_FIELD", []);
	
	 
	
	    // 에디터의 내용에 대한 값 검증은 이곳에서
	
	    // document.getElementById("ir1").value를 이용해서 처리한다.
	
	 
	
	    try {
	
	        elClickedObj.form.submit();
	
	    } catch(e) {}
		

	}
</script>

</head>
<body>

	<form action="writeOk.jsp">
		<div id="container">
			<div id="top">
				<p>
					<h3>하고 싶은 얘기가 있나요?</h3>
				</p>
			</div>
			
			<div id="writer">
				<p>WRITER : 
					<input type="text" name="wr" id="wr" />
				</p>
			</div>
			
			<div id="title">
				<p>TITLE : &nbsp;
					<input type="text" name="ti" id="ti" />
				</p>
			</div>
			
			<div id="context">
				<p>
					<textarea name="ct" id="ct" cols="37" rows="10"></textarea>
				</p>
				<!-- 메모장처럼 넓게 textarea -->
			</div>
			
			<div id="button">
				<input type="button" value="목록보기" />
				<input type="submit" value="작성하기" onclick="submitContents(this)"/><!-- 내 textarea내용 보낼거.. -->
				<input type="reset" value="다시쓰기" />
			</div>
			
		</div>
	</form>
</body>
</html>