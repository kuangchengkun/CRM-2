<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="js/JQuery-EasyUI-EDT-1.4.3-build1/jquery-easyui-1.4.3/themes/icon.css">
<link rel="stylesheet" type="text/css" href="js/JQuery-EasyUI-EDT-1.4.3-build1/jquery-easyui-1.4.3/themes/default/easyui.css">
<script type="text/javascript" src="js/JQuery-EasyUI-EDT-1.4.3-build1/jquery-easyui-1.4.3/jquery.min.js"></script>
<script type="text/javascript" src="js/JQuery-EasyUI-EDT-1.4.3-build1/jquery-easyui-1.4.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/JQuery-EasyUI-EDT-1.4.3-build1/jquery-easyui-1.4.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function(){
		init();
	})
	function init(){
		$("#stuste").datagrid({
			url:'stuss',
			method:'post',
			pagination:true,
			toolbar:'#tb',
			queryParams:{	
				s_name:$("#s_name").val(),
				s_phone:$("#s_phone").val(),
				s_ispay:$("#s_ispay").val(),				
				s_isvalid:$("#s_isvalid").val(),				
				s_isreturnvist:$("#s_isreturnvist").val(),				
				s_qq:$("#s_qq").val(),				
				s_createtime:$("#s_createtime").datebox("getValue"),				
				s_hometime:$("#s_hometime").datebox("getValue"),				
				s_firstvisittime:$("#s_firstvisittime").datebox("getValue"),				
				s_paytime:$("#s_paytime").datebox("getValue"),				
				s_inclasstime:$("#s_inclasstime").datebox("getValue")		
				
			}
			
		})
		
	}
	function formattercaozuo(value,row,index){
		
		return "<a href='javascript:void(0)' onclick='lookstus("+index+")'>查看</a> <a href='javascript:void(0)' onclick='updatestus("+index+")'>修改</a>  <a href='javascript:void(0)' onclick='deletestu("+index+")'>删除</a>"
	}
	 function formattersex(value,row,index) {
		return value==0? '男':'女';
	}
	function formatterbaobei(value,row,index) {
		return value==0? '是':'否';
	} 
	function formatterispay(value,row,index) {
		return value==0? '是':'否';
	} 
	function formatterisvalid(value,row,index) {
		return value==0? '是':'否';
	} 
	function formatterisreturnvist(value,row,index) {
		return value==0? '是':'否';
	}  
	
	function deletestu(index) {
		var data=$("#stuste").datagrid("getData");
		var row=data.rows[index];
		$.messager.confirm("提示","确认删除么？",function(r){
			if(r){
				$.post("deletestu",{
					s_id:row.id
				},function(res){
					if(res>0){
						
						$("#stuste").datagrid("reload");
						$.messager.alert("提示","删除成功")
					}else{
						
						$.messager.alert("提示","删除失败")
					}
				},"json")
			}
		})
		
	}
</script>
</head>
<body>
	<table id="stuste" style="width:1000px">
		<thead>
			<tr>
				<th data-options="field:'s_id',title:'s_id'">id</th>
				<th data-options="field:'s_name',title:'s_name'">姓名</th>
				<th data-options="field:'s_sex',title:'s_sex',formatter:formattersex">性别</th>
				<th data-options="field:'s_age',title:'s_age'">年龄</th>
				<th data-options="field:'s_phone',title:'s_phone'">电话</th>
				<th data-options="field:'s_education',title:'s_education'">学历</th>			
				<th data-options="field:'s_state',title:'s_state'">状态</th>			
				<th data-options="field:'s_msgsource',title:'s_msgsource'">来源渠道</th>			
				<th data-options="field:'s_sourceurl',title:'s_sourceurl'">来源网站</th>			
				<th data-options="field:'s_sourcekeyword',title:'s_sourcekeyword'">来源关键词</th>			
				<th data-options="field:'s_qq',title:'s_qq'">学员QQ</th>			
				<th data-options="field:'s_weixin',title:'s_weixin'">微信号</th>			
				<th data-options="field:'s_isbaobei',title:'s_isbaobei',formatter:formatterbaobei">是否报备</th>			
				<th data-options="field:'s_content',title:'s_content'">在线备注</th>			
				<th data-options="field:'s_ispay',title:'s_ispay',formatter:formatterispay">是否缴费</th>			
				<th data-options="field:'s_isvalid',title:'s_isvalid',formatter:formatterisvalid">是否有效</th>			
				<th data-options="field:'s_isreturnvist',title:'s_isreturnvist',formatter:formatterisreturnvist">是否回访</th>			
				<th data-options="field:'s_createtime',title:'s_createtime'">创建时间</th>			
				<th data-options="field:'s_hometime',title:'s_hometime'">上门时间</th>			
				<th data-options="field:'s_firstvisittime',title:'s_firstvisittime'">首次回访时间</th>			
				<th data-options="field:'s_paytime',title:'s_paytime'">缴费时间</th>			
				<th data-options="field:'s_inclasstime',title:'s_inclasstime'">进班时间</th>			
				<th	data-options="field:'caozuo',title:'操作',formatter:formattercaozuo" class="right"></th>
			</tr>
		</thead>
	</table>
	<div id="tb">
		<form id="tabfrm" class="easyui-form">
			
			<label for="name">姓名:</label> 
			<input class="easyui-validatebox" type="text" id="s_name" />
			<label for="name">电话:</label> 
			<input class="easyui-validatebox" type="text" id="s_phone" />
			<label for="name">是否缴费:</label> 
			<input class="easyui-validatebox" type="text" id="s_ispay" />
			<label for="name">是否有效:</label> 
			<input class="easyui-validatebox" type="text" id="s_isvalid" />
			<label for="name">是否回访:</label> 
			<input class="easyui-validatebox" type="text" id="s_isreturnvist" />
			<label for="name">QQ:</label> 
			<input class="easyui-validatebox" type="text" id="s_qq"  />
			<label for="name">创建时间:</label> 
			<input type="text" id="s_createtime" class="easyui-datebox" />
			<label for="name">上门时间:</label> 
			<input type="text" id="s_hometime" class="easyui-datebox"/>
			<label for="name">首次回访时间:</label> 
			<input type="text" id="s_firstvisittime" class="easyui-datebox" />
			<label for="name">缴费时间:</label> 
			<input type="text" id="s_paytime" class="easyui-datebox" />
			<label for="name">进班时间:</label> 
			<input type="text" id="s_inclasstime" class="easyui-datebox" />

			 <a href="javascript:void(0)" onclick="init()"	class="easyui-linkbutton"	data-options="iconCls:'icon-search',plain:true">搜索</a>
			 <a href="javascript:void(0)" onclick="tianjiastu()"	class="easyui-linkbutton"	data-options="iconCls:'icon-search',plain:true">添加</a>
		</form>
	</div>
</body>
</html>