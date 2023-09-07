<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>結帳-2</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <style>
    .navbar-nav .nav-link {
      color: purple !important;
      font-size: small;
      /* 設置文字顏色為紫色 */
      text-decoration: underline !important;
      /* 添加底線 */
    }


    .list-group-item {
      border: 1px solid #ccc;
      max-width: 300px;
      background-color: #fcfafa;
    }

    .price {
      font-size: 18px;
      margin-left: 60px;
    }

    .credit-card-icon {
      width: 20px;
      height: 20px;
      margin-right: 10px;
    }

    .left-background {
      background-color: white;
      height: 100vh;
      display: flex;
      align-items: center;
      /* 垂直居中 */
      justify-content: flex-end;
    }

    .right-background {
      background-color: #f3f1f1;
      height: 100vh;
      /* 確保高度充滿整個螢幕 */

      display: flex;
      /* 使其成為Flex容器 */
      align-items: center;
      /* 垂直居中 */
      justify-content: center;
    }

    .content {
      width: 70%;
    }

    .btn-custom {
      background-color: #b53fe4;
      border-color: #b53fe4;
      color: #fff;
    }
  </style>
</head>


<body>
  <nav class="navbar" style="background-color: #ffffff; box-shadow: 0px 5px 5px rgba(0, 0, 0, 0.1);">
    <div class="container-fluid">
      <span class="navbar-brand mb-0 h1">5MART</span>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="#">取消</a>
        </li>
      </ul>
    </div>
  </nav>




  <div class="container-fluid p-0 ">
    <div class="row no-gutters">
      <div class="col-md-6 left-background">
        <div class="content p-5">
          <h2 style="font-weight: bold;">結帳</h2>
          <br>
          <h4 style="font-weight: bold;">付款方式</h4>
          <br>
          <ul class="list-group">
            <li class="list-group-item">
              <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                    class="bi bi-credit-card-2-back-fill" viewBox="0 0 16 16">
                    <path
                      d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5H0V4zm11.5 1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h2a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-2zM0 11v1a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-1H0z" />
                  </svg>
                  信用卡
                </label>
              </div>
            </li>
            <li class="list-group-item">
              <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
                <label class="form-check-label" for="flexRadioDefault2">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin"
                    viewBox="0 0 16 16">
                    <path
                      d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z" />
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z" />
                  </svg>
                  轉帳
                </label>
              </div>
            </li>
          </ul>
          <br>
          <h4 style="font-weight: bold;">訂單詳細資料</h4>
          <br>
          <p>
            <img src="your-image.jpg" width="50" height="50" /> JSP, Servlets
            and JDBC for Beginners<span class="price">$330</span>
          </p>
        </div>
      </div>
      <div class="col-md-6 right-background">
        <div class="content p-3 ">
          <h4 style="font-weight: bold;">摘要</h4>
          <br>
          <p>金額: <span class="price">$330</span></p>
          <p>折扣: <span class="price">$0</span></p>
          <hr style="width: 40%;">
          <p style="font-weight: bold;">總計: <span class="price">$330</span></p>
          <br>
          <button type="button" class="btn btn-custom">完成結帳</button>
        </div>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
</body>

</html>