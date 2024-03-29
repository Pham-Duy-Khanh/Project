<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<title>Khách hàng có tài khoản</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../public/css/khach_hang_dang_nhap/welcome_user.css">
	<link rel="stylesheet" type="text/css" href="../public/css/style_nav.css">
	<link rel="stylesheet" type="text/css" href="../public/css/style_main.css">
	<link rel="stylesheet" type="text/css" href="../public/css/style_footer.css">
	<script type="text/javascript" src="https://itexpress.vn/API/files/it.snow.js"></script> 
	<style>
	.tab-content{
			border-bottom: 1px solid white;
			margin: 80px 10px 15px 10px;
			padding-bottom: 5px;
		}
	.title h1{
			
			margin-bottom:10px;

		}
	}
	.content_detail{
    line-height: 2.5;
}


	</style>
</head>
<body>
	<?php require_once('check_kh.php'); ?>
	<div class="page_wrapper">
		<!-- HEADER -->
		<header class>
			<div class="container-content">
				<div class="wrapper">
					<div class="logo">
						<a href="index_auto.php">
							<img src="https://tromoi.com/logo_text_blue.png">
						</a>
					</div>
					<div class="box-search">
						<form class="top-search" id="top-search">
							<?php
							$tim_kiem = "";
							if(isset($_GET['tim_kiem'])){
								$tim_kiem = $_GET['tim_kiem'];
							}
							?>
							<label class="search-form_label">
								<input type="text" name="tim_kiem" value="<?php echo $tim_kiem ?>" placeholder="Tìm kiếm nhanh" class="search-form_input">
								<button class="search-btn" style="float: left;position: absolute;background: #fff;border: 1px">
									<i  style="line-height: 32px;width: 22px; background: #fff" class="fa fa-search" aria-hidden="true"></i>
								</button>
							</label>
						</form>
					</div>
					<div class="box-user">
						<div class="box-user_1">
							<a class="appWrapper-Header-navItemLink" href="../dang_phong/dang_phong.php">Đăng tin</a>
						</div>
						<div class="box-user_2">
							<a class="appWrapper-Header-navItemLink" href="tin_tuc.php">Tin tức</a>
						</div>
						<div class="box-user_3">
							<a class="appWrapper-Header-navItemLink" href="#">Hướng dẫn</a>
						</div>			
					</div>
				</div>
				<div class="user_login">
					<ul class="nav_login"> 
						<li class="open">
							<a href="#" class="dropp">
								<img style="width: 90%;height: 90%; margin-top: 2px; margin-left: 2px;border-radius: 50%;" src="../public/images/default-avatar.png" alt="">
							</a>
							<ul class="dropdown_menu" role="menu">
								<li>
									<?php  if (isset($_SESSION['ten_khach_hang'])) : ?>

										Tài khoản: <strong><?php echo $_SESSION['ten_khach_hang']; ?></strong>

									<?php endif ?>
								</li>
								<li class="divider"></li>
								<li>
									<a href="../tin_luu/tin_da_luu.php">
										<i style="color: red" class="fa fa-heart" aria-hidden="true"></i>
										Tin đã lưu
									</a>
								</li>
								<li>
									<a href="../dang_phong/dang_phong.php">
										<i class="fa fa-plus-square" aria-hidden="true"></i>
										Đăng tin
									</a>
								</li>
								<li>
									<a href="../quan_li_phong/quan_li_phong_dang.php">
										<i class="fa fa-address-card" aria-hidden="true"></i>
										Quản lí tin đăng
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<a style="margin-top: 0px" href="../thong_tin_user/thong_tin.php">
										<i class="fa fa-user" aria-hidden="true"></i>
										Thông tin cá nhân
									</a>
								</li>
								<li>
									<a style="margin-top: 0px" href="../thong_tin_user/doi_mk.php">
										<i class="fa fa-lock" aria-hidden="true"></i>
										Đổi mật khẩu
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<a style="margin-top: 0px" href="../logout.php">
										<i class="fa fa-power-off"></i>
										Đăng xuất
									</a>
								</li>
							</ul>
						</li>
					</ul>		
				</div>
			</div>
		</header>
		<div style="background: white; width: 100%; height: 1000px">
		<div style="width: 10%; height: 100%; background: white; float: left">
		</div>
		<div style="width: 80%; height: 100%; background: white; float: left;position: relative">
			<div class="tab-content">
				<div class="page_header">
            <h1 class="page_title">Hướng dẫn tìm phòng trọ</h1>
        </div>
				<div class="content">
					<div class="content_detail"><p>Website tìm kiếm phòng trọ, nơi t&igrave;m kiếm ph&ograve;ng trọ phổ biến nhất hiện nay ở c&aacute;c th&agrave;nh phố lớn H&agrave; Nội, Huế, Đ&agrave; Nẵng, Hồ Ch&iacute; Minh. Vậy khi v&agrave;o website n&agrave;y bạn đ&atilde; tận dụng được hết c&aacute;c t&iacute;nh năng của web để t&igrave;m ph&ograve;ng chưa?</p>

					<p>Sau đ&acirc;y l&agrave; video hướng dẫn c&aacute;ch t&igrave;m kiếm ph&ograve;ng trọ tr&ecirc;n trang web</p>

					<p>&nbsp;</p>

					<p style="text-align:center"><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/UnnszyAb4qw" width="560"></iframe></p>

					<p style="text-align:center">Video hướng dẫn c&aacute;ch t&igrave;m kiếm ph&ograve;ng trọ</p>

					<p style="text-align:center">&nbsp;</p>

					<p style="text-align:center">&nbsp;</p>

					<p dir="ltr">V&agrave; hơn hết tromoi.com&nbsp;l&agrave; nơi cập nhật tin trọ nhanh ch&oacute;ng, đầy đủ th&ocirc;ng tin cho người d&ugrave;ng. Cũng l&agrave; hệ thống c&oacute; được đầy đủ danh s&aacute;ch c&aacute;c chủ ph&ograve;ng trọ uy t&iacute;n nhất tr&ecirc;n địa b&agrave;n th&agrave;nh phố H&agrave; Nội, Huế, Đ&agrave; Nẵng, S&agrave;i G&ograve;n,...&nbsp;&nbsp;N&ecirc;n những th&ocirc;ng tin trọ được đăng l&ecirc;n website sẽ được đảm bảo về t&iacute;nh ch&iacute;nh x&aacute;c v&agrave; an to&agrave;n nhất đến người d&ugrave;ng.</p>

					<p dir="ltr">Ch&uacute;c c&aacute;c bạn t&igrave;m được ph&ograve;ng trọ, nơi ở hợp &yacute; với nhu cầu của m&igrave;nh!</p>

					<p dir="ltr">Nếu cần tư vấn bất cứ th&ocirc;ng tin g&igrave;, bạn h&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để được hỗ trợ.</p>

					<ul>
						<li>Email:phamduykhanhbkc09k9@gmail.com</li>
						<li>Số&nbsp;điện thoại số: 086.99.88.279</li>
					</ul>
					</div>
		</div>
			<div id="footer_body">
			<div class="footer_main">
				<div class="footer_img">
					<img src="https://tromoi.com/logo.png">
				</div>
				<div class="footer_font">
					<p style="font-family: 'UVNHONGHAHEP'; font-size: 28px;color: #FFF;">PHÒNG TRỌ SINH VIÊN</p>
					<span class="span">Email:  </span>
					 duykhanhth1999@gmail.com<br>
					<span class="span">Điện thoại:</span>
					0978751451<br>
					<span class="span">Facebook:</span>
					https://www.facebook.com/khanhs.IT<br>
					<span class="span">Copyright:</span>
					© 2015 - 2018
				</div>
				<div class="footer_dong">
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>