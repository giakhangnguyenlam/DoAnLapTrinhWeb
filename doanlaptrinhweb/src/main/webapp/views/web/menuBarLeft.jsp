<div class="product">
			<div class="container">
				<div class="col-md-3 product-price">
					  
				<div class=" rsidebar span_1_of_left">
					<div class="of-left">
						<h3 class="cate">Categories</h3>
					</div>
		 <ul class="menu">
		
		<li class="item1"><a
							href="${pageContext.request.contextPath}/product?idProduct=computer">Laptop</a>
							<ul class="cute">
								<li class="subitem1"><a
									href="${pageContext.request.contextPath}/product?idProduct=LTApple">Apple</a></li>
								<li class="subitem2"><a
									href="${pageContext.request.contextPath}/product?idProduct=LTAcer">Acer</a></li>
								<li class="subitem3"><a
									href="${pageContext.request.contextPath}/product?idProduct=LTAssus">ASUS</a></li>
							</ul></li>
						<li class="item2"><a
							href="${pageContext.request.contextPath}/product?idProduct=accessories">Accessories</a>
							<ul class="cute">
								<li class="subitem1"><a
									href="${pageContext.request.contextPath}/product?idProduct=cpu">CPU</a></li>
								<li class="subitem2"><a
									href="${pageContext.request.contextPath}/product?idProduct=ram">RAM</a></li>
								<li class="subitem3"><a
									href="${pageContext.request.contextPath}/product?idProduct=harddrive">Hard
										Drive</a></li>
							</ul></li>
			
		 </ul>
		</div>
				<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
<!---->
	<div class="product-middle">
		
					<div class="fit-top">
						<h6 class="shop-top">Macbook pro 2020</h6>
						<a href="single.html" class="shop-now">SHOP NOW</a>
						<div class="clearfix"></div>
					</div>
		</div>	 

				<!---->
				<div class="product-bottom">
					<div class="of-left-in">
								<h3 class="best">Best Sellers</h3>
							</div>
					<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.html"><img class="img-responsive " src="images/s3.png" alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href="${pageContext.request.contextPath}/productservlet?idProduct=LTApple02">Macbook pro 2020</a></h6>
								
								<span class=" price-in1"> $40.00</span>
							</div>
								
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
						<div class=" fashion-grid">
									<a href="${pageContext.request.contextPath}/productservlet?idProduct=LTAssus01"><img class="img-responsive " src="images/s2.png" alt=""></a>
									
								</div>
							<div class="fashion-grid1">
								<h6 class="best2"><a href="single.html" >Asus Vivobook S15</a></h6>
								
								<span class=" price-in1"> $40.00</span>
							</div>
								
							<div class="clearfix"> </div>
							</div>
					
				</div>
	<!-- <div class=" per1">
				<a href="single.html" ><img class="img-responsive" src="images/pro.jpg" alt="">
				<div class="six1">
					<h4>DISCOUNT</h4>
					<p>Up to</p>
					<span>60%</span>
				</div></a>
			</div>-->
				</div>