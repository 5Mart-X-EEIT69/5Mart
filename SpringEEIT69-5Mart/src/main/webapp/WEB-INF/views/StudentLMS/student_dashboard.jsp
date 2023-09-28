<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>index-templates</title>
            <!-- jquery -->
            <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
            <!-- jquery -->
            <!-- bootstrap -->
            <link rel='stylesheet' href="<c:url value='/assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.css' />"
                type="text/css" />
            <link rel='stylesheet' href="<c:url value="
                /assets/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css" />" type="text/css" />
            <!-- bootstrap -->
        </head>

        <body>

            <body>
                <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow"><a
                        class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">5MART</a>
                    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button"
                        data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu"
                        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
                    </button>
                    <input class="form-control form-control-dark w-100" type="text" placeholder="Search"
                        aria-label="Search">
                    <ul class="navbar-nav px-3">
                        <li class="nav-item text-nowrap"><a class="nav-link" href="#">登出</a>
                        </li>
                    </ul>
                </header>
                <div class="container-fluid">
                    <div class="row">
                        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                            <div class="position-sticky pt-3">
                                <ul class="nav flex-column">
                                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="#"> <svg
                                                xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-home">
                                                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                                <polyline points="9 22 9 12 15 12 15 22"></polyline>
                                            </svg>
                                            Dashboard </a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-file">
                                                <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z">
                                                </path>
                                                <polyline points="13 2 13 9 20 9"></polyline>
                                            </svg>&nbsp;課程中心</a>
                                        <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-file">
                                                <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z">
                                                </path>
                                                <polyline points="13 2 13 9 20 9"></polyline>
                                            </svg>&nbsp;進行中的課程</a>
                                        <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-file">
                                                <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z">
                                                </path>
                                                <polyline points="13 2 13 9 20 9"></polyline>
                                            </svg>&nbsp;已結束的課程</a>
                                        <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-file">
                                                <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z">
                                                </path>
                                                <polyline points="13 2 13 9 20 9"></polyline>
                                            </svg>&nbsp;我的評論</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-shopping-cart">
                                                <circle cx="9" cy="21" r="1"></circle>
                                                <circle cx="20" cy="21" r="1"></circle>
                                                <path
                                                    d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6">
                                                </path>
                                            </svg>&nbsp;商務中心</a>
                                        <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-shopping-cart">
                                                <circle cx="9" cy="21" r="1"></circle>
                                                <circle cx="20" cy="21" r="1"></circle>
                                                <path
                                                    d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6">
                                                </path>
                                            </svg>&nbsp;願望清單</a>
                                        <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-shopping-cart">
                                                <circle cx="9" cy="21" r="1"></circle>
                                                <circle cx="20" cy="21" r="1"></circle>
                                                <path
                                                    d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6">
                                                </path>
                                            </svg>&nbsp;購物車</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-users">
                                                <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="9" cy="7" r="4"></circle>
                                                <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                                <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                            </svg>&nbsp;通知中心</a>
                                        <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-users">
                                                <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="9" cy="7" r="4"></circle>
                                                <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                                <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                            </svg>&nbsp;訊息</a>
                                        <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-users">
                                                <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="9" cy="7" r="4"></circle>
                                                <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                                <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                            </svg>&nbsp;師生交流</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-bar-chart-2">
                                                <line x1="18" y1="20" x2="18" y2="10"></line>
                                                <line x1="12" y1="20" x2="12" y2="4"></line>
                                                <line x1="6" y1="20" x2="6" y2="14"></line>
                                            </svg>&nbsp;報表</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-layers">
                                                <polygon points="12 2 2 7 12 12 22 7 12 2"></polygon>
                                                <polyline points="2 17 12 22 22 17"></polyline>
                                                <polyline points="2 12 12 17 22 12"></polyline>
                                            </svg>&nbsp;帳號中心</a>
                                    </li>
                                </ul>
                                <h6
                                    class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                                    <span>我的最愛</span> <a class="link-secondary" href="#" aria-label="Add a new report">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round"
                                            class="feather feather-plus-circle">
                                            <circle cx="12" cy="12" r="10"></circle>
                                            <line x1="12" y1="8" x2="12" y2="16"></line>
                                            <line x1="8" y1="12" x2="16" y2="12"></line>
                                        </svg> </a> </h6>
                                <ul class="nav flex-column mb-2">
                                    <li class="nav-item"><a class="nav-link" href="#"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-file-text">
                                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z">
                                                </path>
                                                <polyline points="14 2 14 8 20 8"></polyline>
                                                <line x1="16" y1="13" x2="8" y2="13"></line>
                                                <line x1="16" y1="17" x2="8" y2="17"></line>
                                                <polyline points="10 9 9 9 8 9"></polyline>
                                            </svg>&nbsp;課程1</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-file-text">
                                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z">
                                                </path>
                                                <polyline points="14 2 14 8 20 8"></polyline>
                                                <line x1="16" y1="13" x2="8" y2="13"></line>
                                                <line x1="16" y1="17" x2="8" y2="17"></line>
                                                <polyline points="10 9 9 9 8 9"></polyline>
                                            </svg>&nbsp;課程2</a>
                                    </li>
                                    <li class="nav-item">
                                    </li>
                                    <li class="nav-item">
                                    </li>
                                </ul>
                            </div>
                        </nav>
                        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                            <div class="chartjs-size-monitor">
                                <div class="chartjs-size-monitor-expand">
                                    <div class=""></div>
                                </div>
                                <div class="chartjs-size-monitor-shrink">
                                    <div class=""></div>
                                </div>
                            </div>
                            <div
                                class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Dashboard</h1>
                                <div class="btn-toolbar mb-2 mb-md-0">
                                    <div class="btn-group me-2">
                                        <button type="button" class="btn btn-sm btn-outline-secondary">分享</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">匯出</button>
                                    </div>
                                    <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round"
                                            class="feather feather-calendar">
                                            <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                            <line x1="16" y1="2" x2="16" y2="6"></line>
                                            <line x1="8" y1="2" x2="8" y2="6"></line>
                                            <line x1="3" y1="10" x2="21" y2="10"></line>
                                        </svg> &nbsp;本週&nbsp;
                                    </button>
                                </div>
                            </div>
                            <canvas class="my-4 w-100 chartjs-render-monitor" id="myChart" width="2304" height="972"
                                style="display: block; height: 486px; width: 1152px;"></canvas>
                            <div class="my-3 p-3 bg-white rounded shadow-sm">
                                <h6 class="border-bottom pb-2 mb-0">最新訊息</h6>
                                <div class="d-flex text-muted pt-3">
                                    <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
                                        xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
                                        preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title>
                                        <rect width="100%" height="100%" fill="#007bff"></rect>
                                        <text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text>
                                    </svg>
                                    <p class="pb-3 mb-0 small lh-sm border-bottom"> <strong
                                            class="d-block text-gray-dark">@username</strong>
                                        Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac
                                        cursus commodo, tortor
                                        mauris condimentum nibh, ut fermentum massa justo sit amet risus. </p>
                                </div>
                                <div class="d-flex text-muted pt-3">
                                    <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
                                        xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
                                        preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title>
                                        <rect width="100%" height="100%" fill="#e83e8c"></rect>
                                        <text x="50%" y="50%" fill="#e83e8c" dy=".3em">32x32</text>
                                    </svg>
                                    <p class="pb-3 mb-0 small lh-sm border-bottom"> <strong
                                            class="d-block text-gray-dark">@username</strong>
                                        Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac
                                        cursus commodo, tortor
                                        mauris condimentum nibh, ut fermentum massa justo sit amet risus. </p>
                                </div>
                                <div class="d-flex text-muted pt-3">
                                    <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
                                        xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
                                        preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title>
                                        <rect width="100%" height="100%" fill="#6f42c1"></rect>
                                        <text x="50%" y="50%" fill="#6f42c1" dy=".3em">32x32</text>
                                    </svg>
                                    <p class="pb-3 mb-0 small lh-sm border-bottom"> <strong
                                            class="d-block text-gray-dark">@username</strong>
                                        Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac
                                        cursus commodo, tortor
                                        mauris condimentum nibh, ut fermentum massa justo sit amet risus. </p>
                                </div><small class="d-block text-end mt-3"> <a href="#">全部資訊</a> </small>
                            </div>
                            <h2>我的學習</h2>
                            <div class="table-responsive">
                                <table class="table table-striped table-sm">
                                    <thead>
                                        <tr>
                                            <th>課程代碼</th>
                                            <th>課程名稱</th>
                                            <th>Header</th>
                                            <th>Header</th>
                                            <th>Header</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1,001</td>
                                            <td>Lorem</td>
                                            <td>ipsum</td>
                                            <td>dolor</td>
                                            <td>sit</td>
                                        </tr>
                                        <tr>
                                            <td>1,002</td>
                                            <td>amet</td>
                                            <td>consectetur</td>
                                            <td>adipiscing</td>
                                            <td>elit</td>
                                        </tr>
                                        <tr>
                                            <td>1,003</td>
                                            <td>Integer</td>
                                            <td>nec</td>
                                            <td>odio</td>
                                            <td>Praesent</td>
                                        </tr>
                                        <tr>
                                            <td>1,003</td>
                                            <td>libero</td>
                                            <td>Sed</td>
                                            <td>cursus</td>
                                            <td>ante</td>
                                        </tr>
                                        <tr>
                                            <td>1,004</td>
                                            <td>dapibus</td>
                                            <td>diam</td>
                                            <td>Sed</td>
                                            <td>nisi</td>
                                        </tr>
                                        <tr>
                                            <td>1,014</td>
                                            <td>per</td>
                                            <td>inceptos</td>
                                            <td>himenaeos</td>
                                            <td>Curabitur</td>
                                        </tr>
                                        <tr>
                                            <td>1,015</td>
                                            <td>sodales</td>
                                            <td>ligula</td>
                                            <td>in</td>
                                            <td>libero</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </main>
                    </div>
                </div>
                <!-- <script src="assets/js/popper.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script> -->
                <script src="<c:url value=" /assets/vendor/bootstrap-5.3.1-dist/bootstrap.min.js" />"></script>
                <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
                    integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
                    integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
                    crossorigin="anonymous"></script>
                <script>
                    /* globals Chart:false, feather:false */

                    (function () {
                        'use strict'

                        feather.replace()

                        // Graphs
                        var ctx = document.getElementById('myChart')
                        // eslint-disable-next-line no-unused-vars
                        var myChart = new Chart(ctx, {
                            type: 'line',
                            data: {
                                labels: [
                                    'Sunday',
                                    'Monday',
                                    'Tuesday',
                                    'Wednesday',
                                    'Thursday',
                                    'Friday',
                                    'Saturday'
                                ],
                                datasets: [{
                                    data: [
                                        15339,
                                        21345,
                                        18483,
                                        24003,
                                        23489,
                                        24092,
                                        12034
                                    ],
                                    lineTension: 0,
                                    backgroundColor: 'transparent',
                                    borderColor: '#007bff',
                                    borderWidth: 4,
                                    pointBackgroundColor: '#007bff'
                                }]
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: false
                                        }
                                    }]
                                },
                                legend: {
                                    display: false
                                }
                            }
                        })
                    })()
                </script>
            </body>
        </body>

        </html>