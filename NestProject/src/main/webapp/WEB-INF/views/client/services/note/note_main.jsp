<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<!DOCTYPE html>
<html lang="ko" style="height:100%;width:100%;">

 
  <title>노트</title>
<style>
  
  #chattingContainer{
   width: 700px;
   height:715px; 
   border: 1px solid gray;
   padding-top: 1px;
  }
  
  #chatArea{
 	background:rgb(178,199,217);
 	width:697px;
 	height:600px;
 	overflow:auto;

  }
 
 .chat_Content {
 	background: rgb(255, 255, 102);
 	padding: 10px;
 	border-radius: 10px;
 	display: inline-block;
 	position: relative;
 	margin: 10px;
 	float: right;
 	clear: both;
 }
 
 .chat_Content:after{
 	content: '';
	position: absolute;
	right: 0;
	top: 50%;
	width: 0;
	height: 0;
	border: 20px solid transparent;
	border-left-color: rgb(255, 255, 102);
	border-right: 0;
	border-top: 0;
	margin-top: -3.5px;
	margin-right: -10px;	
 }
 
 .other-Side {
 	background: white;
 	float:left;
 	clear:both;
 }
 
 .other-Side:after{
 	content: '';
	position: absolute;
	left: 0;
	top: 50%;
	width: 0;
	height: 0;
	border: 20px solid transparent;
	border-right-color: white;
	border-left: 0;
	border-top: 0;
	margin-top: -3.5px;
	margin-left: -10px;
 }
</style>



<body style="height:100%;width:100%;">
  <div style="height:100%;width:100%;">
  
   <c:import url="../../common/navi.jsp"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.2.0/socket.io.js" integrity="sha256-yr4fRk/GU1ehYJPAs8P4JlTgu0Hdsp4ZKrx8bDEDC3I=" crossorigin="anonymous"></script>

    <!--=======================================노트 목록=========================================================-->







    <!--===========================노트 흰색=====================================================================-->
    <section id="box2" class="whitebox col-md-7 col-xs-9">

      <div id="top_line">
      
        <!---============  클릭시 확장 div,스크립트  ==============---->
        <div style=" margin-top: 30px; display: inline-block;">
          <span id="sizeBtn" onclick="sizeChange();" style="cursor: pointer;"><i class="fas fa-expand"  style="font-size:20px; margin-right: 10px;"></i>화면
                    크게
          </span>
          <button type="button" class="btn btn-primary btn-sm"
            style="margin-left: 20px; background: #F28B30; border: none; color: #fff;">공유하기</button>

	    </div>
        <div class="input-group mb-3" style="width: 280px;
             float: right;
             margin-top: 20px;">
          <input style="width: 200px;" type="text" class="form-control" aria-label="Recipient's username"
            aria-describedby="button-addon2">
          <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="button" id="button-addon2">검색</button>
          </div>
        </div>

        <!---============   ==============---->



      </div>




      <!------------------------------------------------------------------------------------------------------------------------------------------>
      <div id="note" style="overflow-y: auto; height: 900px;">
        
         <!------------------------------------- 메신저 테스트 영역 --------------------------------------- -->
      	<div style="width:700px; height:200px; border: 1px solid black;">
      		<ul>
      			<c:forEach items="${bizMemberList}" var="bizList">
      				<li class="bizMembers" style="cursor:pointer;" onclick="chatStartFn('${bizList.nickName}');">${bizList.nickName}</li>
      			</c:forEach>
      		</ul>	
      	</div>
      	
      	<br>
      <div id="chattingContainer">	
   
      	   <div id="chatArea"></div>	

      	   <div id="msgInputBox" style="width:700px; height:110px;">
	     		<div>
	      			<textArea id="msgContent" style="width:620px; height:110px; background:white; border:none;"></textArea>
	      			<div style="float:right; "><button class="btn btn-warning" id="sendMsg" style="background:rgb(255,236,66); width:60px; margin: 10px 10px 0px 0px">전송</button></div>
	      		</div>
           </div>
          
     </div>       
           
           
      <script>
      
      $("#msgContent").keyup(function(e){
  		if(e.key == 'Enter'){
  			$("#sendMsg").trigger('click');
  		}
  	  });
      
      function scrollDown(){
      	$('#chatArea').animate({
              scrollTop: $('#chatArea').get(0).scrollHeight
          }, 100);
      }
      
      
      
      
        var receiver = "";
        var roomNo = 0; // 현재 채팅상대를 판별하기 위한 전역변수
    	  var socket = io("localhost:3000");

          socket.on('connect',function(){
              console.log('서버와 연결');
      	  });
          
          
    	  
		  // 채팅을 시작시켜주는 함수(상대방 닉네임 누르는 순간)
          function chatStartFn(nickName){
			  // 로그인한 사용자의 닉네임과 대화를 하고자하는 상대의 닉네임으로 RoomNo 생성 Or 조회
        	  
			  $.ajax({
					url : '${pageContext.request.contextPath}/space/selectChatRoomNo.do?chatter1='+ '${member.nickName}' + '&chatter2=' + nickName,
					type : 'get',
				    dataType : 'json',
				    success : function(data){
				    	
				    	window.roomNo = data;
				    	socket.emit('joinRoom',{roomNo : data});
					
				    }, error : function(msg){
				    	console.log("에러 발생");
				    }
				  
        	  });
      		
			  window.receiver = nickName;
        	  $('#chatArea').children().remove();
      		 // 기존 채팅 내역 가져오기
      		 socket.emit('callChatLogs',{receiver: receiver, sender: '${member.nickName}'});
      
          }	 
          	
		  // 메세지 전송 이벤트 발생
           $('#sendMsg').on('click',function(){
			
        	 
         	  msgContent = $('#msgContent').val();
       
         	  socket.emit('sendMsg',{msg : msgContent, sender: '${member.nickName}', receiver: receiver,roomNo:roomNo});
         	  
         	  $('#msgContent').val('');
           });
        
		  // 전송한 메세지 서버로부터 응답받는 이벤트 핸들러
           socket.on('serverResponse',function(data){
        	
        	  if(data.sender == '${member.nickName}'){
    
        		 $('#chatArea').append("<div class='chat_Content'>" + data.sender  + " : <br> " + data.msg+ "</div>"); 
        		 focus();
        	  }else{
		  
        		  $('#chatArea').append("<div class='chat_Content other-Side'>" + data.sender  + " : <br> " + data.msg+ "</div>"); 
        	  }
				scrollDown();
            });
       
           socket.on('returnChatLogs',function(data){
        	   var printHtml = "";

        	   for(var logs in data.logs){
        		
        		   if(data.logs[logs].sender == '${member.nickName}'){
       	 			printHtml+= "<div class='chat_Content'>" + data.logs[logs].sender  + ": <br>"+ data.logs[logs].content + "</div>";
       	 			
       	 			}else{	
       	 				printHtml+= "<div class='chat_Content other-Side'>" + data.logs[logs].sender  + ": <br>" +data.logs[logs].content + "</div>";
       	 			/* $('#chatArea').append($('<div>/',{text:element.content}));	 */
       	 			}
        	   }
        	   
        		 $('#chatArea').append(printHtml);

           });
			

      
      </script>
       
      <div id="whitebox_footer">
        <i class="fas fa-tags" style="font-size: 20px; color: #b8b8b8 ; margin-right: 10px;"></i>
        <input type="text" placeholder="태그추가" style="border: none; width: 400px;">
      </div>

    </section>
  </div>
  <script>
    function sizeChange(){
          if(document.getElementById('second_container').classList.toggle('hide-element')){
            document.getElementById('second_container').style.display = 'none';
          } else {
            document.getElementById('second_container').style.display = 'block';
          }
          document.getElementById('box2').classList.toggle('col-md-7');
          document.getElementById('box2').classList.toggle('col-md-10');
    }
  </script>


</body>

</html>