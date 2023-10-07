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
<!-- stepper -->
<link rel='stylesheet'
	href="https://cdn.jsdelivr.net/npm/bs-stepper/dist/css/bs-stepper.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>
<!-- stepper -->
<!-- ckeditor -->
<script src="//cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>
<!-- ckeditor -->
<style>
.chapter {
	border: 1px solid rgba(0, 0, 0, 0.12);
	border-radius: var(--bs-border-radius);
	padding: 0.375rem 0.75rem;
	color: rgb(155, 155, 155);
	display: flex;
}

.chapterVideo {
	border: 1px solid rgba(0, 0, 0, 0.12);
	border-radius: var(--bs-border-radius);
	padding: 0.375rem 0.75rem;
	color: rgb(155, 155, 155);
	display: flex;
}

.chapterInput {
	flex: 1 1 0%;
	border: transparent;
	background: transparent;
	margin-left: 10px;
	outline: none;
}

.chapterIcon {
	transform: translateX(-130%);
	padding: 4px 10px;
	position: absolute;
}

.unit {
	border: 1px solid rgba(0, 0, 0, 0.12);
	border-radius: var(--bs-border-radius);
	padding: 0.375rem 0.75rem;
	color: rgb(155, 155, 155);
	display: flex;
	margin-left: 50px;
}

.unitVideo {
	border: 1px solid rgba(0, 0, 0, 0.12);
	border-radius: var(--bs-border-radius);
	padding: 0.375rem 0.75rem;
	color: rgb(155, 155, 155);
	display: flex;
	margin-left: 50px;
}

.iconbtn {
	padding: 3px 0px 0px 0px;
}

.videobtn {
	border: transparent;
	background: transparent;
	width: 230px;
	padding: 0.2rem 0.75rem;
}

.nav-link {
	font-weight: bolder;
}
</style>
</head>
<!-- 
<script>
	var stepperElem = document.querySelector('.bs-stepper');
	var stepper = new Stepper(stepperElem);
	var done = false;
	var currStep = 1;
	history.pushState(currStep, '');
	//切換到步驟前觸發，呼叫e.preventDefault()可阻止切換
	stepperElem.addEventListener("show.bs-stepper", function(e) {
		if (done) { //若程序完成，不再切換
			e.preventDefault();
			return;
		}
	});
	//切換到步驟後觸發，e.detail.indexStep為目前步驟序號(從0開始)
	stepperElem.addEventListener("shown.bs-stepper", function(e) {
		var idx = e.detail.indexStep + 1;
		currStep = idx;
		//pushState()記下歷程以支援瀏覽器回上頁功能
		history.pushState(idx, '');
	})
	//瀏覽器上一頁下一頁觸發
	window.onpopstate = function(e) {
		if (e.state && e.state != currStep)
			stepper.to(e.state);
	};
	//模擬送出表單，註記已完成，不再允許切換步驟
	function simulateSubmit() {
		stepper.next();
		done = true;
	}
</script>
 -->

<body>
	<div class="d-flex flex-row min-vh-100">
		<div class="col-2 d-flex flex-column p-3 bg-light">
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

				<li class="nav-item pe-5"><a
					href="<c:url value="/TeacherCreate"></c:url>"
					class="nav-link active " aria-current="page"> <span
						style="font-size: 24px;">- 建立課程</span>
				</a></li>

				<li><a
					href="<c:url value="/TeacherCreateFundraisingCourses"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-
							建立募資課程</span>
				</a></li>
				<li><a href="<c:url value="/TeacherCreateArticle"></c:url>"
					class="nav-link link-dark"> <span style="font-size: 24px;">-
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
		<div class="col-4 bs-stepper" style="margin-top: 32px">
			<h1>建立你的課程</h1>
			<hr>
			<div class="bs-stepper-header" role="tablist">
				<!-- your steps here -->
				<div class="step" data-target="#step1">
					<button type="button" class="step-trigger" role="tab"
						aria-controls="logins-part" id="step1-trigger">
						<span class="bs-stepper-circle">1</span> <span
							class="bs-stepper-label">第一步</span>
					</button>
				</div>
				<div class="line"></div>
				<div class="step" data-target="#step2">
					<button type="button" class="step-trigger" role="tab"
						aria-controls="information-part" id="step2-trigger">
						<span class="bs-stepper-circle">2</span> <span
							class="bs-stepper-label">第二步</span>
					</button>
				</div>
				<div class="line"></div>
				<div class="step" data-target="#step3">
					<button type="button" class="step-trigger" role="tab"
						aria-controls="information-part" id="step3-trigger">
						<span class="bs-stepper-circle">3</span> <span
							class="bs-stepper-label">第三步</span>
					</button>
				</div>
				<div class="line"></div>
				<div class="step" data-target="#step4">
					<button type="button" class="step-trigger" role="tab"
						aria-controls="information-part" id="step4-trigger">
						<span class="bs-stepper-circle">4</span> <span
							class="bs-stepper-label">第四步</span>
					</button>
				</div>
				<div class="line"></div>
				<div class="step" data-target="#step5">
					<button type="button" class="step-trigger" role="tab"
						aria-controls="information-part" id="step4-trigger">
						<span class="bs-stepper-circle">5</span> <span
							class="bs-stepper-label">第五步</span>
					</button>
				</div>
				
			</div>
			<div class="bs-stepper-content">
				<!-- your steps content here -->
				<div id="step1" class="content" role="tabpanel"
					aria-labelledby="step1-trigger">
					<div class="form-group">
						<label class="fs-2"> 課程標題 </label> <input class="form-control" id="title"
							name="title" placeholder="輸入你的課程標題..."/>
					</div>
					<div class="form-group">
						<label class="fs-2"> 課程簡介 </label> <input class="form-control"
							style="height: 7rem" id="introduction" name="introduction" placeholder="輸入你的課程簡介..." />
					</div>
					<div class="form-group">
						<label class="fs-2" >售價</label> <input class="form-control" id="price"
							name="price" placeholder="輸入你的售價..." />
					</div>
					<div id="photoContainer" class="form-group">
						<label class="fs-2"> 封面照片 </label>
						<div class="w-100 mb-3 border rounded" style="height: 200px">
							<figure class="figure m-0 d-flex justify-content-center">
								<img src="" class="ifigure-img img-fluid rounded">
							</figure>
						</div>
						<input class="form-control testphoto" type="file" accept="image/*" id="photoBtn" name="photoBtn" />
						<input type="hidden" id="photoValue" name="photoValue">
					</div>

					<div class="pt-3 d-flex justify-content-center">
						<button class="btn btn-secondary" type="button"
							onclick="stepper.next()">下一步</button>
					</div>
				</div>
				<div id="step2" class="content" role="tabpanel"
					aria-labelledby="step1-trigger">
					<label class="fs-2"> 課程內容 </label>
					<textarea name="content" id="editor" placeholder="文章內容...">
							<p>
								<strong></strong>以下為建議填寫的課程資訊，可以依使用者需求客製化內容<strong></strong><br>
							</p>
							<h1>
								<strong>課程介紹</strong>
							</h1>
							<hr>
							<h2>
								<strong>課程內容</strong>
							</h2>
							<p>在這裡介紹你的課程內容</p>
							<hr>
							<h2>
								<strong>此課程您可以學到</strong>
							</h2>
							<p>在這裡介紹你此課程可以學到甚麼</p>
							<hr>
							<h2>
								<strong>此課程適合那些人</strong>
							</h2>
							<p>在這裡介紹你的課程適合哪些族群</p>
							<hr>
							<h2>
								<strong>課前準備</strong>
							</h2>
							<p>在這裡介紹你的課程需要甚麼課前準備</p>
					</textarea>
					<div class="pt-2 d-flex justify-content-center">
							<button class="mx-1 btn btn-secondary" type="button"
								onclick="stepper.previous()">上一步</button>
							<button id="step2NextBtn" class="mx-1 btn btn-secondary"
								type="button" onclick="stepper.next()">下一步</button>
						</div>
				</div>
				<div id="step3" class="content" role="tabpanel"
					aria-labelledby="step2-trigger">
					<!-- 章節單元標籤 -->
					<div id="chapterContainer">
						<div>
							<div class="form-group chapter my-2">
								<span class="chapterIcon"></span> <span class="py-1">章節
									1</span><input class="chapterInput chapterName" type="text" value="">
								<span>
									<button class="mx-1 btn iconbtn addChapter">
										<i class="bi bi-plus-circle"></i>
									</button>
									<button class="mx-1 btn iconbtn chapterDelete">
										<i class="bi bi-trash"></i>
									</button>
								</span>
							</div>
							<div class="unitGroup">
								<div class="form-group unit my-2">
									<span class="chapterIcon"></span> <label class="py-1">單元
										1</label><input class="chapterInput unitName" type="text" value="">
									<span>
										<button class="mx-1 btn iconbtn addUnit">
											<i class="bi bi-plus-circle"></i>
										</button>
										<button class="mx-1 btn iconbtn unitDelete">
											<i class="bi bi-trash"></i>
										</button>
									</span>
								</div>
							</div>
						</div>
						<div class="pt-2 d-flex justify-content-center">
							<button class="mx-1 btn btn-secondary" type="button"
								onclick="stepper.previous()">上一步</button>
							<button id="step3NextBtn" class="mx-1 btn btn-secondary"
								type="button" onclick="stepper.next()">下一步</button>
						</div>
					</div>
				</div>
				<div id="step4" class="content" role="tabpanel"
					aria-labelledby="step3-trigger">
					<form id="videoFrom" action="<c:url value="/createCourseVideo" />" method="post" enctype="multipart/form-data">
					<div id="chapterVideoContainer">

						<!-- <div>
                            <div class="form-group chapterVideo my-2">
								<span class="chapterIcon">拖拉</span> <span class="py-1">章節
                                    1</span><label class="py-1 chapterInput">字元字元字元字元字元字元字元字元</label>
                                </div>
							<div class="unitGroup">
                                <div class="form-group unitVideo my-2">
                                    <span class="chapterIcon">拖拉</span> <label class="py-1">單元
                                        1</label><label class="pe-3 py-1 chapterInput">字元字元字元字元字元</label> <input
										class="form-control videobtn" type="file" />
                                    </div>
							</div>
						</div> -->
					</div>
					<div class="pt-2 d-flex justify-content-center">
						<button id="step4PrevBtn" class="mx-1 btn btn-secondary"
							type="button" onclick="stepper.previous()">上一步</button>
						<button class="mx-1 btn btn-secondary" type="button"
							onclick="stepper.next()">下一步</button>
					</div>
					</form>
				</div>
				<div id="step5" class="content" role="tabpanel"
					aria-labelledby="step4-trigger">
					<div class="form-group">
						<label>這堂課適合甚麼程度的學生?</label> <select class="form-select"
							aria-label="Default select example" id="level" name="level">
							<option selected></option>
							<option value="初學">初學</option>
							<option value="進階">進階</option>
							<option value="專業">專業</option>
						</select>
					</div>
					<div class="form-group">
						<label>為你的這門課程添加分類吧</label> 
						<select class="form-select"
							aria-label="Default select example" id="sort" name="sort">
							<option selected></option>
							<option value="語言">語言</option>
							<option value="開發">開發</option>
							<option value="行銷">行銷</option>
							<option value="投資理財">投資理財</option>
							<option value="音樂">音樂</option>
							<option value="攝影">攝影</option>
							<option value="設計">設計</option>
							<option value="職場技能">職場技能</option>
							<option value="其他">其他</option>
						</select>
					</div>
					<div class="form-group">
						<label>填寫更詳細的分類!</label>
						<select class="form-select"
							aria-label="Default select example" id="detailSort" name="detailSort">
							<option selected></option>
						</select>
					</div>
					<div class="pt-2 d-flex justify-content-center">
						<button class="mx-1 btn btn-secondary" type="button"
							onclick="stepper.previous()">上一步</button>
						<button id="submitBtn" class="mx-1 btn btn-secondary"
							type="button">送出</button>
					</div>
				</div>
			</div>
		</div>

		<div class="col-4">test</div>
	</div>
	<script>
        window.onload = function () {
            let chapterAndUnitName = []
        	CKEDITOR.replace( 'editor' ,{
        		contentsCss: ['<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />'],
        	});
        	CKEDITOR.config.height = 450;
        	
        	
            $("#chapterContainer").on("click", ".addChapter", function () {
                let iIndex = $(this).parent().parent().parent().index();
                let html = `
            <div class="form-group chapter my-2">
                <span class="chapterIcon"></span>
                <span class="py-1">章節 1</span><input class="chapterInput chapterName" type="text" value="">
                <span>
                    <button class="mx-1 btn iconbtn addChapter"><i class="bi bi-plus-circle"></i></button>
                    <button class="mx-1 btn iconbtn chapterDelete"><i class="bi bi-trash"></i></button>
                </span>
            </div>
            <div class="unitGroup">
                <div class="form-group unit my-2">
                    <span class="chapterIcon"></span>
                    <label class="py-1">單元 1</label><input class="chapterInput unitName" type="text" value="">
                    <span>
                        <button class="mx-1 btn iconbtn addUnit"><i class="bi bi-plus-circle"></i></button>
                        <button class="mx-1 btn iconbtn unitDelete"><i class="bi bi-trash"></i></button>
                    </span>
                </div>
            </div>   
            `;
                $(this).parent().parent().parent().append(html);
                chapterRename();
            });//動態增加章節單元元素

            $("#chapterContainer").on("click", ".addUnit", function () {
                let iIndex = $(this).parent().parent().index();
                let html = `
            <div class="form-group unit my-2">
                <span class="chapterIcon"></span>
                <label class="py-1">單元 ${iIndex + 2}</label><input class="chapterInput unitName" type="text" value="">
                <span>
                    <button class="mx-1 btn iconbtn addUnit"><i class="bi bi-plus-circle"></i></button>
                    <button class="mx-1 btn iconbtn unitDelete"><i class="bi bi-trash"></i></button>
                </span>
            </div>
            `;
                $(this).parent().parent().after(html);
                unitRename();
            })//動態增加單元元素


            $("#chapterContainer").on("click", ".chapterDelete", function () {
                let iIndex = $(this).parent().parent().index()
                console.log($(this).parent().parent().index())
                $(this).parent().parent().parent().children().eq(iIndex + 1).remove()
                $(this).parent().parent().parent().children().eq(iIndex).remove()
                chapterRename()
            })//章節及單元刪除

            $("#chapterContainer").on("click", ".unitDelete", function () {

                console.log($(this).parent().parent().parent().children().length)
                let count = $(this).parent().parent().parent().children().length;
                if (count != 1) {
                    let iIndex = $(this).parent().parent().remove()
                    unitRename()
                } else {
                    alert("每個章節至少需要一個單元!")
                }

            })//單元刪除

            function chapterRename() {
                $(".chapter").each(function (index, element) {
                    $(this).children("span").eq(1).html("章節 " + (index + 1))
                })
            }//章節重新命名
            function unitRename() {
                $(".unitGroup").each(function (index, element) {
                    $(this).children("div").each(function (index, element) {
                        $(this).children("label").eq(0).html("單元 " + (index + 1))
                    })
                })
            }//單元重新命名

            $('#chapterContainer').on("click", "#step3NextBtn", function () {
                let allNameValue = [];
                $(".chapterName").each(function (index, element) {
                    let chapterAndUnitNameVlaue = {};
                    chapterAndUnitNameVlaue["chapter" + (index + 1)] = $(this).val();
                    $(this).closest('.chapter').next('.unitGroup').children().children(".unitName").each(function (index, element) {
                        // console.log(index);
                        chapterAndUnitNameVlaue["unit" + (index + 1)] = $(this).val();
                    })
                    allNameValue.push(chapterAndUnitNameVlaue);

                });
                chapterAndUnitName = allNameValue;
                console.log(allNameValue,"區域變數")
                $(allNameValue).each(function (index, element) {
                    let i = 1
                    $.each(element, function (key, value) {
                        if (i == 1) {
                            // let html = `
                            // <div>
                            //     <div class="form-group chapterVideo my-2">
                            //         <span class="chapterIcon">拖拉</span>
                            //         <span class="py-1">章節 ${index+1}</span>
                            //         <label class="py-1 chapterInput">${value}</label>
                            //     </div>
                            // </div>
                            // <div class="unitGroup">
                            // </div>
                            // `
                            let html = '<div><div class="form-group chapterVideo my-2"><span class="chapterIcon"></span><span class="py-1">章節 ' +
                                (index + 1) +
                                '</span><label class="py-1 chapterInput">' +
                                value +
                                '</label></div></div><div class="unitGroup"></div>'
                            $('#chapterVideoContainer').append(html)
                            i++;
                        } else {
                            // let html = `
                            // 	<div class="form-group unitVideo my-2">
                            //         <span class="chapterIcon">拖拉</span>
                            //         <label class="py-1">單元 ${i-1}</label>
                            //         <label class="pe-3 py-1 chapterInput">${value}</label>
                            //         <input class="form-control videobtn" type="file" />
                            //     </div>
                            // `
                            let html = '<div class="form-group unitVideo my-2"><span class="chapterIcon"></span><label class="py-1">單元 '
                                + (i - 1) + '</label><label class="pe-3 py-1 chapterInput">' + value + '</label><input id="inputFileToLoad" class="form-control videobtn" type="file" accept="video/*" /></div><input type="hidden" id="video" name="video">'
                            $('#chapterVideoContainer').children('.unitGroup').eq(index).append(html)
                            i++;
                        }
                    })
                })//根據第二頁表單內容產生第三頁表單

                $('input[name="video"]').each(function (index, element) {
                    let chapterIndex = ($(this).parent().prev().index()) / 2 + 1
                    console.log("chapter" + chapterIndex)
                    // console.log("unit"+ $(this).prev().index())
                    let unitIndex = ($(this).prev().index()) / 2 + 1
                    console.log("unit" + unitIndex)
                    $(this).attr('name', 'chapter' + chapterIndex + '-' + unitIndex)
                    $(this).attr('id', 'chapter' + chapterIndex + '-' + unitIndex)
                })//更新放置影片編碼的id跟name
            })

            $('#step4').on("click", "#step4PrevBtn", function () {
                console.log("empty")
                $('#chapterVideoContainer').empty()
            })


            $('#chapterVideoContainer').on("change", ".videobtn", function () {

                video = $(this).parent().next()[0]
                // console.log("test"+video)
                // console.log(video)

                alert(this)
                console.log($(this)[0].files)
                let input = $(this)[0].files;
                // console.log(input)
                // console.log(input.length)
                if (input.length > 0) {
                    let fileReader = new FileReader();
                    let fileToLoad = input[0];
                    console.log("fileToLoad=" + fileToLoad.name);
                    fileReader.onload = function (fileLoadedEvent) {
                        video.value = fileLoadedEvent.target.result;
                        // img.src = fileLoadedEvent.target.result;
                    };//這裡只是寫屬性，還沒執行，底下readAsDataURL執行後觸發onload才會進入onload
                    console.log("測試進入點")
                    fileReader.readAsDataURL(fileToLoad);
                }

            })//抓影片編碼

            $('#photoContainer').on("change", "#photoBtn", function () {

                photo = $(this).next()[0]
                image = $(this).prev().children().children()[0]
                // console.log("test"+photo)
                // console.log(photo)

                alert(this)
                let input = $(this)[0].files;
                // console.log(input)
                // console.log(input.length)
                if (input.length > 0) {
                    let fileReader = new FileReader();

                    let fileToLoad = input[0];
                    console.log("fileToLoad=" + fileToLoad.name);
                    fileReader.onload = function (fileLoadedEvent) {
                        photo.value = fileLoadedEvent.target.result;
                        image.src = fileLoadedEvent.target.result;
                    };
                    fileReader.readAsDataURL(fileToLoad);
                }
                $('#photoContainer').children('div').eq(0).removeAttr('style')
            })//抓照片編碼
            
            let detailSortData =new Array();
            detailSortData[0] = ["英文","日文","韓文","西班牙文",]
            detailSortData[1] = ["網頁開發","程式語言","遊戲開發","資料庫設計與開發","軟體測試"]
            detailSortData[2] = ["數位行銷","社群行銷","數據分析","行銷策略","文案撰寫","創業"]
            detailSortData[3] = ["個人理財","投資觀念","財務分析","量化交易","財務管理","股票分析"]
            detailSortData[4] = ["樂器","音樂軟體","音樂基礎","音樂創作","聲樂"]
            detailSortData[5] = ["商業攝影","影像創作","後製剪輯","攝影理論",]
            detailSortData[6] = ["平面設計","室內設計","建築設計","網頁設計","遊戲設計","設計理論"]
            detailSortData[7] = ["生產力工具","求職技巧","創業","職場溝通","獨立接案"]
            detailSortData[8] = ["其他"]
            $('#sort').on("change", function () {
            	console.log($(this)[0].selectedIndex)
            	let index = ($(this)[0].selectedIndex-1);
            	alert(detailSortData[index]);
            	$('#detailSort').empty();
            	$('#detailSort').append('<option selected></option>')
            	for(var i=0;i<detailSortData[index].length;i++){
            		$('#detailSort').append('<option value="' + detailSortData[index][i] + '">' + detailSortData[index][i] + '</option>')            		
            	}
            })
            

            $('#step5').on("click", "#submitBtn", async function () {
                let formData = {};
                let unitVideo = {};
                let videoName = {};
                console.log($('#detailSort').val());
                formData.courseContent = CKEDITOR.instances.editor.getData();
                formData.title = $('#title').val();
                formData.introduction = $('#introduction').val();
                formData.photo = $('#photoValue').val();
                formData.price = $('#price').val();
                formData.course = chapterAndUnitName;
                formData.level = $('#level').val();
                formData.sort = $('#sort').val();
                formData.detailSort = $('#detailSort').val();
				formData.userId = ${member.id}
                console.log(formData);

                let courseId ;
				let curl = '<c:url value="/submitCourse" />';
				await $.ajax({
                    url: curl,
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify(formData),
                    success: function(response){
                       	console.log("成功",response);
                       	courseId = response;
//                        	window.location.href = '<c:url value="/TeacherCourseList" />';
                    },
                    error: function(response){
                        console.log("失敗",response);
                    }
                })
                alert("課程ID:"+courseId)
                let videoData = new FormData();
				videoData.append("courseId",courseId)

                $('input[name^="chapter"]').each(function (index, element) {
                	if($(this).val()){
                    console.log("start--------------");
                    let chapterAndUnitNumber = $(this).attr('name');//章節單元名稱
                    let value = $(this).prev().children('input')[0].files[0]
                    console.log(value);
                    videoData.append("chapterAndUnitNumber",chapterAndUnitNumber);
                    videoData.append("videos",value);
					
                    console.log("end--------------")                		
                	}
                })
				for (let pair of videoData.entries()) {
				    console.log(pair[0] + ', ' + pair[1]);
				}
                console.log(videoData);                   
                let cvurl = '<c:url value="/createCourseVideo" />';
                $.ajax({
                    url: cvurl,
                    type: 'POST',
                    cache: false,
                    contentType: false,
                    processData: false,
                    data: videoData,
                    success: function(response){
                       	console.log("成功上傳影片",response);
//                        	window.location.href = '<c:url value="/TeacherCourseList" />';
                    },
                    error: function(response){
                        console.log("失敗",response);
                    }
                })
                
                
            })
        }
    </script>

</body>
<script type="text/javascript">
	
    var stepper;
    var stepperElem = document.querySelector('.bs-stepper')
    document.addEventListener('DOMContentLoaded', function () {
        stepper = new Stepper(document.querySelector('.bs-stepper'))
    });//步進表單stepper
    // console.log(stepperElem)

    stepperElem.addEventListener("shown.bs-stepper", function (e) {
        var idx = e.detail.indexStep + 1;
        currStep = idx;
        //pushState()記下歷程以支援瀏覽器回上頁功能
        history.pushState(idx, '');
    })
    //瀏覽器上一頁下一頁觸發
    window.onpopstate = function (e) {
        if (e.state && e.state != currStep)
            stepper.to(e.state);
    };
</script>
</html>