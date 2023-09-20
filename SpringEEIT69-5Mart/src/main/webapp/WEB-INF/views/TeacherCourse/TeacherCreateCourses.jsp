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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
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
			<a href="<c:url value="/"></c:url>"
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
        <div class="col-4 bs-stepper" style="margin-top: 72px">
            <h1>建立你的課程</h1>
            <hr>
            <div class="bs-stepper-header" role="tablist">
                <!-- your steps here -->
                <div class="step" data-target="#step1">
                    <button type="button" class="step-trigger" role="tab" aria-controls="logins-part"
                        id="step1-trigger">
                        <span class="bs-stepper-circle">1</span> <span class="bs-stepper-label">第一步</span>
                    </button>
                </div>
                <div class="line"></div>
                <div class="step" data-target="#step2">
                    <button type="button" class="step-trigger" role="tab" aria-controls="information-part"
                        id="step2-trigger">
                        <span class="bs-stepper-circle">2</span> <span class="bs-stepper-label">第二步</span>
                    </button>
                </div>
                <div class="line"></div>
                <div class="step" data-target="#step3">
                    <button type="button" class="step-trigger" role="tab" aria-controls="information-part"
                        id="step3-trigger">
                        <span class="bs-stepper-circle">3</span> <span class="bs-stepper-label">第三步</span>
                    </button>
                </div>
                <div class="line"></div>
                <div class="step" data-target="#step4">
                    <button type="button" class="step-trigger" role="tab" aria-controls="information-part"
                        id="step4-trigger">
                        <span class="bs-stepper-circle">4</span> <span class="bs-stepper-label">第四步</span>
                    </button>
                </div>
            </div>
            <div class="bs-stepper-content">
                <!-- your steps content here -->
                <div id="step1" class="content" role="tabpanel" aria-labelledby="step1-trigger">
                    <div class="form-group">
                        <label> 課程標題 </label> <input class="form-control" id="title" name="title" />
                    </div>
                    <div class="form-group">
                        <label> 課程簡介 </label> <input class="form-control" style="height: 10rem" id="introduction"
                            name="introduction" />
                    </div>
                    <div id="photoContainer" class="form-group">
                        <label> 封面照片 </label> <input class="form-control testphoto" type="file" accept="image/*"
                            id="photoBtn" name="photoBtn" />
                        <input type="hidden" id="photoValue" name="photoValue">
                    </div>
                    <div class="form-group">
                        <label>售價</label> <input class="form-control" id="price" name="price" />
                    </div>
                    <div class="pt-3 d-flex justify-content-center">
                        <button class="btn btn-secondary" type="button" onclick="stepper.next()">下一步</button>
                    </div>
                </div>
                <div id="step2" class="content" role="tabpanel" aria-labelledby="step2-trigger">
                    <!-- 章節單元標籤 -->
                    <div id="chapterContainer">
                        <div>
                            <div class="form-group chapter my-2">
                                <span class="chapterIcon">拖拉</span> <span class="py-1">章節
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
                                    <span class="chapterIcon">拖拉</span> <label class="py-1">單元
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
                            <button id="step2NextBtn" class="mx-1 btn btn-secondary" type="button"
                                onclick="stepper.next()">下一步</button>
                        </div>
                    </div>
                </div>
                <div id="step3" class="content" role="tabpanel" aria-labelledby="step3-trigger">

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
                        <button id="step3PrevBtn" class="mx-1 btn btn-secondary" type="button"
                            onclick="stepper.previous()">上一步</button>
                        <button class="mx-1 btn btn-secondary" type="button" onclick="stepper.next()">下一步</button>
                    </div>

                </div>
                <div id="step4" class="content" role="tabpanel" aria-labelledby="step4-trigger">
                    <div class="form-group">
                        <label>這堂課適合甚麼程度的學生?</label>
                        <select class="form-select" aria-label="Default select example" id="level" name="level">
                            <option selected></option>
                            <option value="初學">初學</option>
                            <option value="進階">進階</option>
                            <option value="專業">專業</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>為你的這門課程添加分類吧</label>
                        <select class="form-select" aria-label="Default select example" id="sort" name="sort">
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
                    <div class="pt-2 d-flex justify-content-center">
                        <button class="mx-1 btn btn-secondary" type="button" onclick="stepper.previous()">上一步</button>
                        <button id="submitBtn" class="mx-1 btn btn-secondary" type="button">送出</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-4">test</div>
    </div>
    <script>
        window.onload = function () {
            let chapterAndUnitName = []

            $("#chapterContainer").on("click", ".addChapter", function () {
                let iIndex = $(this).parent().parent().parent().index();
                let html = `
            <div class="form-group chapter my-2">
                <span class="chapterIcon">拖拉</span>
                <span class="py-1">章節 1</span><input class="chapterInput chapterName" type="text" value="">
                <span>
                    <button class="mx-1 btn iconbtn addChapter"><i class="bi bi-plus-circle"></i></button>
                    <button class="mx-1 btn iconbtn chapterDelete"><i class="bi bi-trash"></i></button>
                </span>
            </div>
            <div class="unitGroup">
                <div class="form-group unit my-2">
                    <span class="chapterIcon">拖拉</span>
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
                <span class="chapterIcon">拖拉</span>
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

            $('#chapterContainer').on("click", "#step2NextBtn", function () {
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
                            let html = '<div><div class="form-group chapterVideo my-2"><span class="chapterIcon">拖拉</span><span class="py-1">章節 ' +
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
                            let html = '<div class="form-group unitVideo my-2"><span class="chapterIcon">拖拉</span><label class="py-1">單元 '
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

            $('#step3').on("click", "#step3PrevBtn", function () {
                console.log("empty")
                $('#chapterVideoContainer').empty()
            })


            $('#chapterVideoContainer').on("change", ".videobtn", function () {

                video = $(this).parent().next()[0]
                // console.log("test"+video)
                // console.log(video)

                alert(this)
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
                    };
                    fileReader.readAsDataURL(fileToLoad);
                }

            })//抓影片編碼

            $('#photoContainer').on("change", "#photoBtn", function () {

                photo = $(this).next()[0]
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
                        // img.src = fileLoadedEvent.target.result;
                    };
                    fileReader.readAsDataURL(fileToLoad);
                }

            })//抓照片編碼

            $('#step4').on("click", "#submitBtn", function () {
                let formData = {};
                let unitVideo = {};

                formData.title = $('#title').val();
                formData.introduction = $('#introduction').val();
                formData.photo = $('#photoValue').val();
                formData.price = $('#price').val();
                formData.course = chapterAndUnitName;
                $('input[name^="chapter"]').each(function (index, element) {
                    console.log("start--------------");
                    let idValue = $(this).attr('name');
                    let value = $(this).val();
                    unitVideo[idValue] = value;
                    console.log("end--------------")
                })
                formData.video = unitVideo;
                formData.level = $('#level').val();
                formData.sort = $('#sort').val();

                console.log(formData);

				let curl = '<c:url value="/submitCourse" />';
                $.ajax({
                    url: curl,
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify(formData),
                    success: function(response){
                       	console.log("成功",response);
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