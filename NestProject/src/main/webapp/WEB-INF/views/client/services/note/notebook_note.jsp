<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" style="height:100%;width:100%;">
<head>
<c:import url="../../common/head.jsp">
	<c:param name="titleName" value="휴지통" />
</c:import>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://cdn.tiny.cloud/1/thfe5r10bknp9pbzrorb1rah5doyys51i6hsjncezu0tpruv/tinymce/5/tinymce.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ko_KR.js"></script>

<style>
@media ( min-width : 1200px) {
	
#second_container{
    box-sizing: border-box;
    direction: ltr;
    height:100%;
    position: relative;
    width: 20%;
    will-change: transform;
    
    background: #f5f5f5;
    display: block;
    float: left;
    padding: 0%;
}.whitebox2{
	width: 65%;
	display: inline-block;
}.whitebox2_wide{
	width: 85%;
	display: inline-block;
}#note{
height:auto;
padding:20px;
width:100%;
overflow-y:auto;
}
#whitebox_footer{
bottom: 0; 
position: fixed;
display: inline-block;
height: 50px;
border-top: #d1d1d1 1px solid;
width: 100%;
background: #fff;
}#body_div{
height: auto;
}
}
	
	
@media ( min-width : 400px) {
	
#second_container{
    box-sizing: border-box;
    direction: ltr;
    height:100%;
    position: relative;
    width: 20%;
    will-change: transform;
    
    background: #f5f5f5;
    display: block;
    float: left;
    padding: 0%;
}.whitebox2{
	width: 65%;
	display: inline-block;
}
#whitebox_footer{
bottom: 0; 
position: fixed;
display: inline-block;
height: 50px;
border-top: #d1d1d1 1px solid;
width: 100%;
background: #fff;
}#body_div{
}
}
</style>
<script>
var height;
	$(function(){
		var i = $('#text').css('height');
		var arr = i.split('p');
		
		console.log(arr[0]);
		height=arr[0]-2;
		console.log(height);
		tinymce.init({
			  selector:'textarea',
			  language : 'ko_KR',
			  height: height,
			  plugins: [
			    'link image imagetools table code'
			  ],
			  menubar:false,
			  toolbar: 'undo redo styleselect fontselect fontsizeselect bold italic alignleft aligncenter alignright alignjustify code table imageupload fileupload',
			  allow_script_urls: true,
			  content_css:"https://use.fontawesome.com/releases/v5.2.0/css/all.css",
			  extended_valid_elements: "button[class|id|onclick],script[src|async|defer|type|charset],div,span[*],i[*]",
			  setup: function(editor) {
				  
	              // create input and insert in the DOM
	              var inp2 = $('<input id="tinymce-uploader" type="file" name="pic" style="display:none">');
	              $(editor.getElement()).parent().append(inp2);
	              var inp = $('<input id="tinymce-uploader" type="file" name="pic" accept="image/*" style="display:none">');
	              $(editor.getElement()).parent().append(inp);

	              // add the image upload button to the editor toolbar
	              editor.ui.registry.addButton('imageupload', { 
	                icon: 'image',
	                onAction: function(e) { // when toolbar button is clicked, open file select modal
	                  inp.trigger('click');
	                }
	              });
	              
	              editor.ui.registry.addButton('fileupload', { 
	                icon: 'save',
	                onAction: function(e) { // when toolbar button is clicked, open file select modal
	                  inp2.trigger('click');
	                }
	              });
	              
	              // when a file is selected, upload it to the server
	              inp.on("change", function(e){
	                uploadImage($(this), editor);
	              });
				  
	              inp2.on("change", function(e){
	                uploadFile($(this), editor);
	              });
	              
	            function uploadImage(inp, editor) {
	              var input = inp.get(0);
	              var data = new FormData();
	              data.append('files', input.files[0]);
	              var scriptLoader = new tinymce.dom.ScriptLoader();
	              
	              $.ajax({
	                url: '${pageContext.request.contextPath}/a/images',
	                type: 'POST',
	                data: data,
	                enctype: 'multipart/form-data',
	                dataType : 'json',
	                processData: false, // Don't process the files
	                contentType: false, // Set content type to false as jQuery will tell the server its a query string request
	                content_css:"",
	                success: function(data, textStatus, jqXHR) {
	                  editor.insertContent('<img class="content-img" src="${pageContext.request.contextPath}' + data.location + '" data-mce-src="${pageContext.request.contextPath}' + data.location + '" />');
	                  
	                },
	                error: function(jqXHR, textStatus, errorThrown) {
	                  if(jqXHR.responseText) {
	                    errors = JSON.parse(jqXHR.responseText).errors
	                    alert('Error uploading image: ' + errors.join(", ") + '. Make sure the file is an image and has extension jpg/jpeg/png.');
	                  }
	                }
	              });
	            }
	            
	            function uploadFile(inp, editor) {
	              var input = inp.get(0);
	              var data = new FormData();
	              data.append('files', input.files[0]);
	              var scriptLoader = new tinymce.dom.ScriptLoader();
	              
	              $.ajax({
	                url: '${pageContext.request.contextPath}/a/files',
	                type: 'POST',
	                data: data,
	                enctype: 'multipart/form-data',
	                dataType : 'json',
	                processData: false, // Don't process the files
	                contentType: false, // Set content type to false as jQuery will tell the server its a query string request
	                success: function(data, textStatus, jqXHR) {
	                	var file=data.location.split('/');
	                	console.log(file[file.length-1]);
	                	var fileName=file[file.length-1];
	                	
	                  editor.insertContent('<a href="${pageContext.request.contextPath}'+data.location+'" style="color:gray;font-weight:normal;"><i class="far fa-file-archive"></i> '+fileName+' </a>');
	                  
	                },
	                error: function(jqXHR, textStatus, errorThrown) {
	                  if(jqXHR.responseText) {
	                    errors = JSON.parse(jqXHR.responseText).errors
	                    alert('Error uploading image: ' + errors.join(", ") + '. Make sure the file is an image and has extension jpg/jpeg/png.');
	                  }
	                }
	              });
	            }
	            
	            
	            
	      }
				
		
			  });
	});

</script>    
</head>
<body style="height:100%; width:100%;">
  
  
   <c:import url="../../common/navi.jsp"/>


    <!--=======================================노트 목록=========================================================-->


    <div id="second_container" value="slide">
      <div id="sc1" style="border-bottom: 1px solid #1a1a1a; padding: 14px;">
        <h5 id="toptext">${nbtitle}</h5>
        <p id="sclist">0개의 노트</p>
      </div>
      <div id="sc2">
        <div style="padding:10px;">
          <i class="far fa-lightbulb"></i>
          <span>
            노트 활용 Tip !
            NEST에 오신 것을 환영합니다.
            NEST는 노트 필기, 작업 관리, 프로젝트 진행, 자료 진행, 자료 정리를 위한 최적의…
          </span>
        </div>
      </div>
      <style>
      	li{
      		list-style:none;
      	}
      </style>
      <ul>
		<c:forEach var="note" items="${list}" varStatus="status">
			<li>
				<div id="sc3">
				<input class="noteCheck" type="checkbox" value="${note.nno}"/>
				<b>${note.ntitle}</b>
					<br />
				</div>
			</li>
		</c:forEach>
	</ul>
 </div>





    <!--===========================노트 흰색=====================================================================-->
    <div id="body_div">
    <div id="top_line">

        <!---============  클릭시 확장 div,스크립트  ==============---->
        <div style=" margin-top: 30px; display: inline-block;">
          <span style="padding-left:20px;" id="sizeBtn" onclick="sizeChange();" style="cursor: pointer;"><i class="fas fa-expand"  style="font-size:20px; margin-right: 10px;"></i>화면
            크게</span>
          <button type="button" class="btn btn-primary btn-sm"
            style="margin-left: 20px; background: #F28B30; border: none; color: #fff;">공유하기</button>
		  <button class="btn" onclick="saveNote()" style="margin-left: 20px; background: #F28B30; border: none; color: #fff;">저장하기</button>
		  <button class="btn" onclick="goTrash()" style="margin-left: 20px; background: #F28B30; border: none; color: #fff;">삭제하기</button>
        </div>
        <div class="input-group mb-3" style="    width: 280px;
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
    
    <section id="box2" class="whitebox2">

      




      <!------------------------------------------------------------------------------------------------------------------------------------------>
      <div id="note" style="height: 800px;">
        <div class="Editor-Title" style="width:100%;height:7.33333%">
			<div class="Title" style="width:100%;border-bottom:1px solid lightgray;height:100%">
				<input type="text" id="ntitle" name="ntitle" placeholder="제목 없음" style="font-size:30px;width:100%; height:100%; border:none; padding-left:10px" />
			</div>
		</div>
		<div id="text" style="overflow:auto;height:92.66666%;k">	
				<textarea id="ncontent" name="ncontent" style="border-color:transparent"><b>테스트입니다.</b></textarea>
		</div>
		<style>
			.tox-tinymce{
				border:none;
			}
			.tox-toolbar__group{
				display:none;
			}
		</style>
      </div>
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
          document.getElementById('box2').classList.toggle('whitebox2');
          document.getElementById('box2').classList.toggle('whitebox2_wide');
    }
  </script>


<script type="text/javascript">
// ing functionalism
function widthResize(){
	if(parseInt($('#body_div').css('width')) >= 1200){
	   $('#second_container').css('height', $('#body_div').css('height'));
	   $('#left_navi').css('height', $('#body_div').css('height'));
	} else {
		$('#left_navi').css('height', '70px');
	}
}
//최초 실행시 
$(function(){
	if(parseInt($('#body_div').css('width')) >= 1200){
		   $('#second_container').css('height', $('#body_div').css('height'));
		   $('#left_navi').css('height', $('#body_div').css('height'));
		} else {
			$('#left_navi').css('height', '70px');
		}
});
// 화면 사이즈 변경시 
$(window).on('resize', function(){
	if(parseInt($('#body_div').css('width')) >= 1200){
	   $('#second_container').css('height', $('#body_div').css('height'));
	   $('#left_navi').css('height', $('#body_div').css('height'));
	} else {
		$('#left_navi').css('height', '70px');
	}
});
</script>
<script>
	var find=true;
	var i;
	var obj;
	$(function(){ // 처음 페이지 열 때
		$('.noteCheck').eq(0).prop('checked',true);
		i=$('.noteCheck').eq(0).val();
		obj=$('.noteCheck').eq(0);
		console.log(i+"/"+obj);
		check($('.noteCheck').eq(0).prop('checked'),obj);
	});
	
	$('.noteCheck').click(function(){ // 노트 선택 시 
		i = $(this).val();
		console.log(i);
		
		var checked = $(this).prop('checked');
		obj = $(this);
		console.log(checked);
		
		check(checked,obj);
		
	});
	
	function check(checked,obj){
		if(checked){
			$('.noteCheck').prop('checked', false);
			obj.prop('checked', true);
			
			$.ajax({
				url:'${pageContext.request.contextPath}/note/noteDetail.do',
				data:{nno:i},
				dataType:'json',
				success:function(data){
					$('#ntitle').val(data.ntitle);
					if(find) $('#ncontent').html(data.ncontent);
					else tinyMCE.activeEditor.setContent(data.ncontent);
					find=false;
				},error : function(request,status,error){
    			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    			}
			});
		}
	}
	
	
	function deleteOneNote(){
		location.href="${pageContext.request.contextPath}"
            +"/note/goBackTrash.do?nno="+i+"&trashcan=Y";
	}
	
	function deleteAllNote(){
		location.href="${pageContext.request.contextPath}"
            +"/note/goAllTrash.do?mno=1&trashcan=Y";
	}
	function saveNote(){
		var ntitle = $('#ntitle').val();
		var ncontent = tinyMCE.activeEditor.getContent();
		$.ajax({
			url:'${pageContext.request.contextPath}/note/saveNote.do',
			type: 'POST',
			data:{nno:i,ntitle:ntitle,ncontent:ncontent},
			dataType:'json',
			success:function(data){
				if(data){
					alert("저장성공");
					console.log(obj.parent().children(1).text().trim());
					obj.parent().children(1).text(ntitle);
				}else{
					alert("저장실패");}				
				
			},error : function(request,status,error){
			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
function goTrash(){
		
		$.ajax({
			url:'${pageContext.request.contextPath}/notebook/trashGo.do',
			type: 'POST',
			data:{nno:i,trashcan:"Y"},
			dataType:'json',
			success:function(data){
				if(data){
					//alert("삭제성공");
					obj.parent().remove();
					$('.noteCheck').eq(0).prop('checked',true);
					check($('.noteCheck').eq(0).prop('checked'),$('.noteCheck').eq(0));
				}else{
					alert("삭제실패");}				
				
			},error : function(request,status,error){
			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
	</script>
</body>

</html>