<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<link href="assets/css/bootstrap-datetimepicker.css" rel="stylesheet">
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
					<li><a href="teacher_main"><i class="icon-home icon-white"></i>首页</a></li>
					<li><a href="teacher_exam_before"><i class="icon-cog icon-white"></i>考前操作</a></li>
					<li class="dropdown"><a class="dropdown-toggle" role="button"
						aria-expanded="false" aria-haspopup="true" href="#"
						data-toggle="dropdown"><i class="icon-time icon-white"></i>考中管理<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="teacher_manage_summary"><i class="icon-align-justify"></i>考试概况</a></li>
							<li><a href="teacher_manage_student"><i class="icon-list"></i>学生信息</a></li>
							<li><a href="teacher_manage_unlock"><i class="icon-lock"></i>解除锁定</a></li>
							<li><a href="teacher_manage_notify"><i class="icon-bell"></i>通知管理</a></li>
						</ul>
					</li>
					<li><a href="teacher_exam_after"><i class="icon-check icon-white"></i>考后操作</a></li>
				</ul>
				<ul class="nav navbar-nav pull-right">
					<li><span class="brand"><small>欢迎，<s:property
									value="#session.teacher" /></small></span></li>
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
				<form class="exam-form" action="teacher_passwd" method="post">
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
			<img src="assets/img/exam-teacher.png" /> 上机考试管理
		</h1>
