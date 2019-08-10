<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<title>人事管理系统——修改职位</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
	<meta http-equiv="description" content="This is my page" />
	<link href="${ctp}/css/css.css" type="text/css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="${ctp}/js/ligerUI/skins/Aqua/css/ligerui-dialog.css"/>
	<link href="${ctp}/js/ligerUI/skins/ligerui-icons.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${ctp }/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="${ctp }/js/jquery-migrate-1.2.1.js"></script>
	<script src="${ctp}/js/ligerUI/js/core/base.js" type="text/javascript"></script>
	<script src="${ctp}/js/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script> 
	<script src="${ctp}/js/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
	<script src="${ctp}/js/ligerUI/js/plugins/ligerResizable.js" type="text/javascript"></script>
	<link href="${ctp}/css/pager.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript">
	 $(function(){
	    	/** 职位表单提交 */
			$("#jobForm").submit(function(){
				var name = $("#name");
				var remark = $("#remark");
				var msg = "";
				if ($.trim(name.val()) == ""){
					msg = "进行修改时所有输入不能为空！";
					name.focus();
				}else if ($.trim(remark.val()) == ""){
					msg = "进行修改时所有输入不能为空！";
					remark.focus();
				}
				if (msg != ""){
					$.ligerDialog.error(msg);
					return false;
				}else{
					return true;
				}
				$("#salaryForm").submit();
			});
	    });
		

	</script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr><td height="10"></td></tr>
  <tr>
    <td width="15" height="32"><img src="${ctp}/img/main_locleft.gif" width="15" height="32"></td>
	<td class="main_locbg font2"><img src="${ctp}/img/pointer.gif">&nbsp;&nbsp;&nbsp;当前位置：职位管理  &gt; 修改职位</td>
	<td width="15" height="32"><img src="${ctp}/img/main_locright.gif" width="15" height="32"></td>
  </tr>
</table>
<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor">
  <tr valign="top">
    <td>
    	 <form action="${ctp}/salary/updateSalary" id="salaryForm" method="post">
    	 	<!-- 隐藏表单，flag表示添加标记 -->
    	 	<input type="hidden" name="flag" value="2">
    	 	<input type="hidden" name="id" value="${salary.id}">	
    	 	<input type="hidden" name="job_id" value="${job.id }">
		  <table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab">
		    <tr><td class="font3 fftd">
		    	<table>
		    		<tr>
		    			<td class="font3 fftd">基础薪资：<input type="text" name="basic_salary" id="name" size="20" value="${salary.basic_salary }"/></td>
		    			<td class="font3 fftd">奖金：<input type="text" name="bonus" id="remark" size="20" value="${salary.bonus}"/></td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">罚金：<input type="text" name="fine" id="name" size="20" value="${salary.fine }"/></td>
		    			<td class="font3 fftd">实发工资：<input type="text" name="real_wage" id="remark" size="20" value="${salary.real_wage}"/></td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">录入年份：<input type="text" name="year" id="name" size="20" value="${salary.year }"/></td>
		    			<td class="font3 fftd">录入月份：<input type="text" name="month" id="remark" size="20" value="${salary.month}"/></td>
		    		</tr>
		    			
		    	</table>
		    </td></tr>
			<tr><td class="main_tdbor"></td></tr>
			
			<tr><td align="left" class="fftd"><input type="submit" value="修改 ">&nbsp;&nbsp;<input type="reset" value="取消 "></td></tr>
		  </table>
		 </form>
	</td>
  </tr>
</table>
<div style="height:10px;"></div>
</body>
</html>