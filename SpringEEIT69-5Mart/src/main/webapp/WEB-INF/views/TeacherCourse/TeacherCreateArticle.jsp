<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>5mart講師頁面</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- jquery -->
<!-- bootstrap -->
<link rel='stylesheet'
	href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
	type="text/css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<link rel='stylesheet'
	href="<c:url value="/assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css"/>"
	type="text/css" />
<!-- bootstrap -->
<!-- ckeditor -->
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/39.0.2/classic/ckeditor.js"></script> -->
<script src="//cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>
<%-- <script src="<c:url value='/assets/js/ckeditor5-build-classic/ckeditor.js' />"></script> --%>
<!-- ckeditor -->
<style type="text/css">
	.nav-link {
	font-weight: bolder;
	}


}
	
</style>
</head>

<script type="text/javascript">
	window.onload = function() {

	}
</script>
<body>
	<div class="d-flex flex-row min-vh-100">
		<div class="col-xxl-2 col-3 d-flex flex-column p-3 bg-light">
			<a href="<c:url value="/homepage"></c:url>"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
				<span style="font-size: 40px;"><i class="bi bi-5-square "></i>
					5mart</span>
			</a>
			<hr>
			<ul class="nav nav-pills flex-column mb-auto">
				<li class="nav-item pb-2"><a
					href="<c:url value="/TeacherMain"></c:url>" class="nav-link active"
					aria-current="page"> <span style="font-size: 32px;"><i
							class="bi bi-display"></i> 課程</span>
				</a></li>

				<li class="nav-item"><a
					href="<c:url value="/TeacherCreate"></c:url>"
					class="nav-link link-dark" aria-current="page"> <span
						style="font-size: 24px;">- 建立課程</span>
				</a></li>
				<li><a
					href="<c:url value="/TeacherCreateFundraisingCourses"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-
							建立募資課程</span>
				</a></li>
				<li class="pe-5"><a
					href="<c:url value="/TeacherCreateArticle"></c:url>"
					class="nav-link active"> <span style="font-size: 24px;">-
							建立文章</span>
				</a></li>
				<li><a href="<c:url value="/TeacherCourseList"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-
							已開課內容 </span>
				</a></li>

				<li><a href="<c:url value="/TeacherComminicate"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 32px;"><i
							class="bi bi-chat-left" style="font-size: 32px;"></i> 學生交流</span>
				</a></li>
				<li><a href="<c:url value="/TeacherDashboard"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 32px;"><i
							class="bi bi-graph-up"></i> 儀表板</span>
				</a></li>
				<li><a href="<c:url value="/TeacherInformation"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 32px;"><i
							class="bi bi-award-fill"></i> 講師個人資料 </span>
				</a></li>
			</ul>
			<hr>
		</div>
		<!-- 		選單右邊 -->
		<div class="col-2"></div>
		<div class="col-6 d-flex flex-column mt-5">
			<h1 class="text-center">建立文章</h1>
			<hr>			
			<form action="<c:url value="/TeacherArticle"/>" method="post" enctype="multipart/form-data">
				<div id="photoContainer">
					<div id="step1" style="">
						<label class="form-label fs-2">上傳文章封面照片</label>				
						<div class="w-100 mb-3 border rounded" style="height: 357px">
							<figure class="figure m-0 d-flex justify-content-center">
							<img src="" class="ifigure-img img-fluid rounded">
							</figure>				
						</div>			
						<input class="form-control form-control-lg" id="imgbtn" type="file" accept="image/*" name="photo" >
						<input type="hidden" value="${member.id}" name="memberId" >
						<div class="pt-2 d-flex justify-content-center">
							<button id="step1NextBtn" class="mx-1 btn btn-secondary" type="button" onclick="next(1)">下一步</button>
						</div>				
					</div>				
				</div>
			
				<div id="step2" style="display:none">
					<label class="form-label fs-2" for="title" >文章標題</label>
					<input class="form-control my-2" type="text" name="title" placeholder="文章標題...">
					<label class="form-label fs-2" for="content" >文章內容</label>
					<textarea name="content" id="editor" placeholder="文章內容...">
						<h1>
							<strong>文章內容</strong>
						</h1>
						<hr>
						<h2>
							<strong>文章大標1</strong>
						</h2>
						<p>你的文章內容，你的文章內容，你的文章內容，你的文章內容。</p>
						<hr>
						<h2>
							<strong>文章大標2</strong>
						</h2>
						<p>你的文章內容，你的文章內容，你的文章內容，你的文章內容。你的文章內容，你的文章內容，你的文章內容，你的文章內容。你的文章內容，你的文章內容，你的文章內容，你的文章內容。</p>
						<hr>		
					</textarea >
					<div class="d-flex justify-content-center">
						<button id="step2PrevBtn" class="mt-3 btn btn-secondary me-2" type="button" onclick="prev(2)">上一步</button>
						<input class="btn btn-secondary mt-3" type="submit" value="建立文章">				
					</div>
				</div>
			</form>
			
<!-- 			<button onclick="getData()">getData</button> -->
			<script>
// 				let editor;
				
// 				ClassicEditor
// 				        .create( document.querySelector( '#editor' ))
// 				        .then( newEditor => {
// 				        		editor = newEditor;
// 				        		newEditor.execute( 'horizontalLine' )
// 				                console.log( editor );
// 				        } )
// 				        .catch( error => {
// 				                console.error( error );
// 				        } );

                CKEDITOR.replace( 'editor' ,{
					contentsCss: ['<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />'],
                });
                CKEDITOR.config.height = 400;
// 				function getData(){
// 					const data = editor.getData();
// 					alert(data)
// 				}
				
				function next(step){
					let nowStep = "step" + step ;
					let nextStep = "step" + (step+1) ;
					$('#'+nowStep).css({ display: "none" });
					$('#'+nextStep).attr('style', '');
					
				}
				
				function prev(step){
					let nowStep = "step" + step ;
					let prevStep = "step" + (step-1) ;
					$('#'+nowStep).css({ display: "none" });
					$('#'+prevStep).attr('style', '');
					
				}
				
			    $('#photoContainer').on("change", "#imgbtn", function () {
			    	
			        image = $(this).prev().children().children()[0]
			        // console.log("test"+video)
			        console.log(image)
			
		            let input = $(this)[0].files;
		            // console.log(input)
		            // console.log(input.length)
		            if (input.length > 0) {
		                let fileReader = new FileReader();

		                let fileToLoad = input[0];
		                console.log("fileToLoad=" + fileToLoad.name);
		                fileReader.onload = function (fileLoadedEvent) {
		                	image.src = fileLoadedEvent.target.result;
		                };
		                fileReader.readAsDataURL(fileToLoad);
		            }
					
		            $('#photoContainer').children().children('div').eq(0).removeAttr('style')
			    })
			</script>
			
		</div>
		<div class="col-xxl-2 col-1"></div>
	</div>

</body>
</html>