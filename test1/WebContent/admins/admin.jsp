<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>上机考试系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- le styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/exam.css" rel="stylesheet">
<style>
body {
	padding-top: 60px;
	/* 60px to make the container go all the way to the bottom of the topbar */
}
</style>
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

<!-- le html5 shim, for ie6-8 support of html5 elements -->
<!--[if lt ie 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>

<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<span class="brand"><strong>上机考试系统</strong></span>

				<ul class="nav navbar-nav">
					<li><a href="admin_main"><i class="icon-home icon-white"></i>首页</a></li>
					<li><a href="admin_teacher"><i class="icon-user icon-white"></i>教师管理</a></li>
					<li><a href="admin_exam"><i class="icon-remove-circle icon-white"></i>考试清理</a></li>
					<li><a href="admin_config"><i class="icon-wrench icon-white"></i>系统配置</a></li>
				</ul>
				<ul class="nav navbar-nav pull-right">
					<li><span class="brand"><small>欢迎，admin</small></span></li>
					<li><a href="#" data-toggle="modal"
		data-target=".bs-example-modal-sm"><i class="icon-pencil icon-white"></i>修改口令</a></li>
					<li><a href="admin_logout"><i class="icon-share icon-white"></i>退出</a></li>
				</ul>

				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="modal fade bs-example-modal-sm span3" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">修改口令</h4>
				</div>
				<div class="modal-body">
				<form class="exam-form" action="admin_passwd" method="post">
					<p>
						<input type="password" name="oldpass" placeholder="原口令" style="width:100%"/>
						<br/>
						<input type="password" name="newpass1" placeholder="新口令" style="width:100%"/>
						<br/>
						<input type="password" name="newpass2" placeholder="重输新口令" style="width:100%"/>
						<br/>
						<input type="submit" class="btn btn-primary" value="修改" style="width:100%"/>
					</p>
				</form>
				</div>
			</div>
		</div>
	</div>

	<div class="container">

		<h1>
			<img src="assets/img/exam-admin.png" /> 系统管理
		</h1>

		
			<div class="exam-alert">没有设置管理员帐号，默认管理员帐号存在安全风险，请尽快处理！</div>
			<br />
		


<div class="container-fluid">
	<div class="row-fluid">
		<div class="span4 exam-desc">
			<strong>教师管理</strong>
			<br/>
			<br/>
			<ul>
				<li>可以对教师用户进行增删改查操作，并可以指定特定教师作为系统管理员</li>
				<li>系统可以有多个管理员</li>
				<li>如果没有任何一个教师具有管理员身份，则默认管理员登录信息有效</li>
			</ul>
		</div>
		<div class="span4 exam-desc">
			<strong>考试清理</strong>
			<br/>
			<br/>
			<ul>
				<li>清除考试的相关数据，包括数据库中的信息、文件系统中的提交文件</li>
				<li>只有在主考教师已经打包下载学生提交文件后才可以进行</li>
				<li>清理后的考试可以删除</li>
			</ul>
		</div>
		<div class="span4 exam-desc">
			<strong>系统配置</strong>
			<br/>
			<br/>
			<ul>
				<li>设置一些全局性的系统选项，包括后台任务的时间周期、分页查询时的每页记录数、手动开启考试的时间阈值、学生上传文件字节数的有效范围等</li>
				<li>可以指定是否允许主考教师清理和删除考试。</li>
			</ul>
		</div>
	</div>
</div>


	</div>
	<!-- /container -->
	<!-- placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
