<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<title>异常界面</title>
 <link href="<%=basePath %>indexue/loginresource/css/404page.css" type="text/css" rel="stylesheet">
</head>
<body class="no-scrollbar" style="padding:0px;margin:0px;width:100%;height:100%;background-color:#EAEAEA">
<div class="header">
    <div class="header-content">
        <div class="header-left"></div>
        <div class="header-right" id="datenow"></div>
    </div>
</div>
<div class="content">
<div class="content-con">
    <div>
        <h1>License已失效，联系管理员!</h1>
    </div>
</div>

</div>
<div class="footer">
    技术支持:四川久远银海软件股份有限公司
</div>
</body>
</html>
<script type="text/javascript">
	window.onload = function () {
        (function(){
            var datenow = document.getElementById("datenow");
            var newdate = new Date();
            var day;
            newdate.getDay() == "1" && (day = "一");
            newdate.getDay() == "2" && (day = "二");
            newdate.getDay() == "3" && (day = "三");
            newdate.getDay() == "4" && (day = "四");
            newdate.getDay() == "5" && (day = "五");
            newdate.getDay() == "6" && (day = "六");
            newdate.getDay() == "0" && (day = "日");
            datenow.innerHTML = "今天是:" + newdate.getFullYear() + "年" + (newdate.getMonth() + 1) + "月" + newdate.getDate() + "号 星期" + day + "";
        }())
    }
</script>
