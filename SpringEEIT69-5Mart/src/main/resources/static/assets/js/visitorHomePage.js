/**
 * 
 */
$(document)
	.ready(
		function() {
			// 輪播圖相關設定
			var myCarousel = document
				.querySelector("#carouselExampleIndicators");
			var carousel = new bootstrap.Carousel(myCarousel, {
				interval: 4000, // 自動輪播的延遲時間
				pause: false,
				// 滑鼠碰到圖片時，輪播不會停止;改成"hover"時，輪播會停止
			});

			$(".slick-card")
				.slick(
					{
						dots: true, // 顯示圓點指示器
						infinite: false, // 無限循環滑動
						prevArrow: '.arrow-prev',
						nextArrow: '.arrow-next',
						speed: 300,
						slidesToShow: 4,
						responsive: [{
							breakpoint: 768,
							settings: {
								slidesToShow: 1,
							},
						}, {
							breakpoint: 500,
							settings: {
								slidesToShow: 2,
							},
						},],
					});

			$(".slick-card1")
				.slick(
					{
						dots: true, // 顯示圓點指示器
						infinite: false, // 無限循環滑動
						prevArrow: '.arrow-prev1',
						nextArrow: '.arrow-next1',
						speed: 300,
						slidesToShow: 4,
						responsive: [{
							breakpoint: 768,
							settings: {
								slidesToShow: 1,
							},
						}, {
							breakpoint: 500,
							settings: {
								slidesToShow: 2,
							},
						},],
					});

			$(".card").mouseenter(function() {
				$(this).addClass("shadow");
			}).mouseleave(function() {
				$(this).removeClass("shadow");
			});

			// 愛心滑鼠經過點擊變化
			var heartcount = false;
			$(".fa-heart").click(
				function() {
					if (!heartcount) {
						$(this).addClass("fa-solid")
							.removeClass("fa-regular").css(
								"color", "#D40202");
						heartcount = true;
					} else {
						heartcount = false;
						$(this).addClass("fa-regular")
							.removeClass("fa-solid").css(
								"color", "#f70000");
					}
				})

			$(".fa-heart").mouseenter(
				function() {
					if (!heartcount) {
						$(this).addClass("fa-solid")
							.removeClass("fa-regular");
					}
				})

			$(".fa-heart").mouseleave(
				function() {
					if (!heartcount) {
						$(this).addClass("fa-regular")
							.removeClass("fa-solid");
					}
				})

			// 回到頂部的按鈕顯示和消失
			$(window).scroll(function() {
				if ($(window).scrollTop() > 300) {
					$('#return-top').fadeIn(300);
				} else {
					$('#return-top').fadeOut(200);
				}
			})

			// 點擊回到頂部按鈕，回到頁面頂部
			$("#return-top").click(function() {
				scrollTo(0, 0);
			});

		});