<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>修改订单</title>
</head>
<body>
<article class="page-container">
	<form action="<%=basePath%>UpdatePrepAdminServlet" method="post" class="form form-horizontal" id="form-member-add">

		<input type="hidden" name="prepId" value="${prep.prepId}">
	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>订单编号：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<input type="text" disabled="disabled" class="input-text" value="${prep.prepId}" placeholder="" id="trainNumber" name="trainNumber">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>会员信息ID：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<input type="text" disabled="disabled" class="input-text" value="${prep.pmemberId}" placeholder="" id="trainNumber" name="trainNumber">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>车次：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<input type="text" disabled="disabled" class="input-text" value="${prep.trainNumber}" placeholder="" id="trainNumber" name="trainNumber">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>起始站：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<input type="text" disabled="disabled" class="input-text" value="${prep.startStation}" placeholder="" id="startStation" name="startStation">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>终点站：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<input type="text" disabled="disabled" class="input-text" value="${prep.endStation}" placeholder="" id="endStation" name="endStation">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>开车时间：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<input type="text" disabled="disabled" class="input-text" value="${prep.startTime}" placeholder="" id="startTime" name="startTime">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>到站时间：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<input type="text" disabled="disabled" class="input-text" value="${prep.endTime}" placeholder="" id="endTime" name="endTime">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>车票价格：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<input type="text" class="input-text" value="${prep.price}" placeholder="" id="price" name="price">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>付款情况：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<select name="way">
					<option value="false">&nbsp;&nbsp;未付款&nbsp;&nbsp;</option>
					<option value="true">&nbsp;&nbsp;已付款&nbsp;&nbsp;</option>
				</select>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>订票时间：</label>
			<div class="formControls col-xs-8 col-sm-9" style="width:300px;">
				<input type="text" disabled="disabled" class="input-text" value="${prep.booktime}" placeholder="" id="endTime" name="endTime">
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>

<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>


