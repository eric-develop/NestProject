<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html>
<html style="height:100%">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://cdn.tiny.cloud/1/thfe5r10bknp9pbzrorb1rah5doyys51i6hsjncezu0tpruv/tinymce/5/tinymce.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ko_KR.js"></script>
<style>
	.container2>div{
		height:100%;border:1px solid black; display:inline-block; float:left	
	}
	.tablebutton{
		background:lightblue;
	}
	.setTable{
		position:absolute;
		padding:5px;
		margin-top:3px;
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
	  //https://stackoverflow.com/questions/44694579/how-to-upload-images-in-spring-mvc-from-tinymce-editor
		/*function insertNote(){
			var ncontent = tinyMCE.activeEditor.getContent();
			var ntitle = $('#ntitle').val();
			console.log($('#ncontent').html());
			console.log(ntitle);
			
			location.href="${pageContext.request.contextPath}/note/insertNote.do?ntitle="+ntitle+"&ncontent="+ncontent;
		};*/
		
		
		
	</script>
</head>
<body style="height:100%">
	<div class="container2" style="height:100%">
		<div style="width:20%;">
			<div style="margin: 23px;">
				<h3>모든 노트</h3>
				<button style="color: red;" onclick="deleteOneNote()">삭제하기</button>
				<button style="color: blue;"onclick="deleteAllNote()">전체삭제</button>
				<button id="modal" style="color: hotpink;">노트북으로 이동</button>
			</div>
			
			<ul>
				<c:forEach var="note" items="${list}" varStatus="status">
				<li>
				
				<input class="noteCheck" type="checkbox" value="${note.nno}"/>
					<b>${note.ntitle}</b>
					<br />
				</li>
				</c:forEach>
			</ul>
			
		</div>
		<div style="width:80%;">
			<div style="height:100%">
		<div class="container" style="width:100%; height:100%; padding:none;">
		
			<div style="height:5%">
				<div style="border-bottom:1px solid #ededed;padding:5px 0;" >
					<div style="width:50%;display:inline-block;float:left">
						<h4>NoteBook</h2>
					</div>
					<div style="width:50%; text-align:right;display:inline-block;">
						<button class="btn" onclick="saveNote();" style="background:#e8a121;color:#fff;font-weight:500">저장하기</button>
					</div>
				</div>
			</div>
			<div class="note-Editor" style="width:100%; height:95%; padding:0 15px;">
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
				<script>
					
				</script>
			</div>	
							
		</div>
	</div>
		</div>
	</div>
	<script>
	var i;
	var obj;
	$(function(){ // 처음 페이지 열 때
		$('.noteCheck').eq(0).prop('checked',true);
		i=$('.noteCheck').eq(0).val();
		obj=$('.noteCheck').eq(0);
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
					tinyMCE.activeEditor.setContent(data.ncontent);
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
	</script>
</body>
</html>