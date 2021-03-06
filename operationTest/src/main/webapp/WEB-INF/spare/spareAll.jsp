<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <title>中国移动4G车联网</title>
    <link rel="stylesheet" href="${contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${contextPath}/css/bootstrap-table.css">
    <link rel="stylesheet" href="${contextPath}/css/clw4G.css">
    <link rel="stylesheet" href="${contextPath}/css/20161110.css">
    <script src="${contextPath}/js/jquery-1.11.3.js"></script>
    <script src="${contextPath}/js/bootstrap.js"></script>
    <script src="${contextPath}/js/bootstrap-table.js"></script>
    <script src="${contextPath}/js/echarts.js"></script>
    <script src="${contextPath}/js/base.js"></script>
    <script src="${contextPath}/js/ajaxfileupload.js"></script>
    <script src="${contextPath}/js/laytpl.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap-table/1.9.1/locale/bootstrap-table-zh-CN.min.js"></script>   
</head>
<body>
	<nav class="navbar navbar-inverse" role="navigation">
    	<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
			  	</button>
			  	<a class="navbar-brand" href="#">
					<img id="logo" src="${contextPath}/images/obd_logo.png">
				</a>
			</div>
        	<div id="navbar" class="navbar-collapse collapse">
                <jsp:include page="/WEB-INF/basicPage/deviceMenu.jsp">
					<jsp:param name="title" value="登录页面" />
				</jsp:include>
           <jsp:include page="/WEB-INF/basicPage/groupMenu1.jsp">
             <jsp:param name="title" value="登录页面"/> 
            </jsp:include>
	        <jsp:include page="/WEB-INF/basicPage/firstSearch.jsp">
             <jsp:param name="title" value="登录页面"/> 
            </jsp:include>
        	</div>
    	</div>
    </nav>
    
    <div class="container-fluid">
    	<div class="row">
    		<div class="col-sm-6 col-md-6">
    			<div class="qgfh-outbox">
    			<div class="ecCharLoading" id="ecCharLoading1"></div>
    				<div class="qgfh-inbox">
    					<div id="main" style="width: 100%; height: 100%;"></div>
    				</div>
    			</div>
			</div>
    		<div class="col-sm-6 col-md-6">
    			<div class="qgfh-outbox">
    				<div class="qgfh-inbox">
    				<div class="ecCharLoading" id="ecCharLoading2"></div>
    					<div id="main2" style="width: 100%; height: 100%;"></div>
    				</div>
    			</div>
			</div>
    	</div>
    	
    	<script>
		function placeNameToEn(value){
			var enPlaceName;
			switch(value){
				case '广东':
					enPlaceName = 'guangdong';
				break;
				case '安徽':
					enPlaceName = 'anhui';
				break;
				case '澳门':
					enPlaceName = 'aomen';
				break;
				case '北京':
					enPlaceName = 'beijing';
				break;
				case '重庆':
					enPlaceName = 'chongqing';
				break;
				case '福建':
					enPlaceName = 'fujian';
				break;
				case '甘肃':
					enPlaceName = 'gansu';
				break;
				case '广西':
					enPlaceName = 'guangxi';
				break;
				case '贵州':
					enPlaceName = 'guizhou';
				break;
				case '海南':
					enPlaceName = 'hainan';
				break;
				case '河北':
					enPlaceName = 'hebei';
				break;
				case '黑龙江':
					enPlaceName = 'heilongjiang';
				break;
				case '河南':
					enPlaceName = 'henan';
				break;
				case '湖北':
					enPlaceName = 'hubei';
				break;
				case '湖南':
					enPlaceName = 'hunan';
				break;
				case '江苏':
					enPlaceName = 'jiangsu';
				break;
				case '江西':
					enPlaceName = 'jiangxi';
				break;
				case '吉林':
					enPlaceName = 'jilin';
				break;
				case '辽宁':
					enPlaceName = 'liaoning';
				break;
				case '内蒙古':
					enPlaceName = 'neimenggu';
				break;
				case '宁夏':
					enPlaceName = 'ningxia';
				break;
				case '青海':
					enPlaceName = 'qinghai';
				break;
				case '山东':
					enPlaceName = 'shandong';
				break;
				case '上海':
					enPlaceName = 'shanghai';
				break;
				case '山西':
					enPlaceName = 'shanxi';
				break;
				case '四川':
					enPlaceName = 'sichuan';
				break;
				case '天津':
					enPlaceName = 'tianjin';
				break;
				case '香港':
					enPlaceName = 'xianggang';
				break;
				case '新疆':
					enPlaceName = 'xinjiang';
				break;
				case '西藏':
					enPlaceName = 'xizang';
				break;
				case '云南':
					enPlaceName = 'yunnan';
				break;
				case '浙江':
					enPlaceName = 'zhejiang';
				break;
			}
			return enPlaceName;
		}
		// 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
 	   var regionCode;
 	   var option;
 	   //点击跳转页面；
		myChart.on('click', function(parmas){
			console.log(parmas.name);
			var mapName = placeNameToEn(parmas.name);
			if(!mapName){
				return false;
			}
			//查询编码；
			 $.post("${contextPath}/controller/codeRegion3", {
				name : parmas.name,
			}, function(result) {
				if(result.state=="0")
					{
					regionCode= result.result[0].c_code;
					var mainUrl = "${contextPath3}";
					window.location.href = mainUrl+"spare"+"?mapName="+mapName+"&regionCode="+regionCode+"&name="+parmas.name;;
					}
			
				//跳转页面；
				
			});

		});	
 		
 	  //初始化安装激活等信息；地图信息；
 	 // spareShowMap
 	 		var data1=[];
			var data2=[];
			var data3=[];
			var data4=[];
 	     $.post("${contextPath}/controller/spareShowMap", {
				code : "allcode"
			}, function(result) {
				if(result.state=="0")
					{
					var data =result.result;
					for(var i=0;i<data.length;i++)
						{
						var a=data[i].data[0].sendSpareNumber;
						/* a=Math.ceil(a*0.15);  */
					
						var jsonData1 = {
								"name" : data[i].province,
								"value" : data[i].data[0].sendNumber
							};
						var jsonData2 = {
								"name" : data[i].province,
								"value" : data[i].data[0].installNumber
							};
						var jsonData3 = {
								"name" : data[i].province,
								"value" : data[i].data[0].activeNumber
							};
						var jsonData4 = {
								"name" : data[i].province,
								"value" : a
							};
					     data1[i]=jsonData1;
						 data2[i]=jsonData2;
						 data3[i]=jsonData3;
						 data4[i]=jsonData4;
						}
					}
				option.series[0].data = data1;
				option.series[1].data = data3;
				option.series[2].data = data4;
				option.series[3].data = data2;
				myChart.setOption(option);
			
			});
     	$.get('${contextPath}/js/map/china.json', function (chinaJson) {
			echarts.registerMap('china', chinaJson);
		  option = {
				tooltip: {
					trigger: 'item',
					formatter: function(params) {  
						  var res = params.name+'<br/>';
						  var myseries = option.series;  
						  for (var i = 0; i < myseries.length; i++) {  
							  if(myseries[i].name){
								  res+= myseries[i].name;  
								  for(var j=0;j<myseries[i].data.length;j++){  
									  if(myseries[i].data[j].name==params.name){  
										res += ' : '+myseries[i].data[j].value+'</br>';  
									  }
									  /* else{
										res += ' : </br>';  
									  } */
								  }
							  }
						  }  
						  return res;  
					}  
				},
				series: [
					{
						name: '已发货数量',
						type: 'map',
						mapType: 'china',
						roam: false,
						label: {
							normal: {
								show: true
							},
							emphasis: {
								show: true
							}
						},
						data:[]
					},
					{
						name: '已激活数量',
						type: 'map',
						mapType: 'china',
						label: {
							normal: {
								show: true
							},
							emphasis: {
								show: true
							}
						},
						data:[]
					},
					{
						name: '备用机数量',
						type: 'map',
						mapType: 'china',
						label: {
							normal: {
								show: true
							},
							emphasis: {
								show: true
							}
						},
						data:[]
					},
					{
						name: '已安装数量',
						type: 'map',
						mapType: 'china',
						label: {
							normal: {
								show: true
							},
							emphasis: {
								show: true
							}
						},
						data:[]
					}
				]
			};
			$("#ecCharLoading1").hide();
			myChart.setOption(option);
		}); 
		
     	//统计数据；
        $.post("${contextPath}/controller/spareShow", {
				code : "allcode"
			}, function(result) {
				//{"result":[{"bindingNumber":"1","installNumber":"1","sendNumber":"5000","activeNumber":"1"}],"state":"0","msg":"查询成功"}
				var data11=new Array();
				var data2=new Array();
				 data2[0]="null";
				 data3=new Array();
				 data3[0]="null";
				 data3[1]="null";
				 data4=new Array();
				 data4[0]="null";
				 data4[1]="null";
				 data4[2]="null";
				 var data1;
				
				if(result.state=="0")
					{
					var data =result.result;
					 data1=data[0].sendNumber;
					/*  data11[0]=Math.ceil(data1*0.15); */
					 data11[0]=data[0].sendSpareNumber;
					 data2[1]=data[0].installNumber;
					 data3[2]=data[0].activeNumber;
					 data4[3]=data[0].bindingNumber;
					}
				var date=new Date();
				var year = date.getFullYear();
				var month = date.getMonth() + 1; // js从0开始取
				var date = date.getDate();
				var time = year + "-" + month + "-" + date;
				
				var option2 = {
						title: {
							text: '全国已发货数量：'+data1+'台',
							subtext: '数据截至时间：'+time,
							left: 'center'
						},
						grid: {
							left: '3%',
							right: '4%',
							bottom: '3%',
							containLabel: true
						},
						xAxis:  {
							type: 'category',
							data: ['备用机','已安装','已激活','微信绑定']
						},
						yAxis: {
							type: 'value'
						},
						series: [
							{
								name: '备用机',
								type: 'bar',
								stack: '总量',
								label: {
									normal: {
										show: true,
										position: 'top'
									}
								},
								data: data11,
							},
							{
								name: '已安装',
								type: 'bar',
								stack: '总量',
								label: {
									normal: {
										show: true,
										position: 'top'
									}
								},
								data: data2
							},
							{
								name: '已激活',
								type: 'bar',
								stack: '总量',
								label: {
									normal: {
										show: true,
										position: 'top'
									}
								},
								data: data3
							},
							{
								name: '微信绑定',
								type: 'bar',
								stack: '总量',
								label: {
									normal: {
										show: true,
										position: 'top'
									}
								},
								data: data4
							}
						]
					};
		
					var myChart2 = echarts.init(document.getElementById('main2'));
					myChart2.setOption(option2);
					$("#ecCharLoading2").hide();
				
				
			});
	</script>
		<div class="row">
        	<div class="col-sm-12 col-md-12 main qgfhsq qgfhsq-box">
				<div class="bs-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">全国备用机统计</a></li>
						<li role="presentation" class=""><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">全国发货申请统计</a></li>
					</ul>
					
					<div id="myTabContent" class="tab-content">
					
						<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
							<div class="panel panel-default">
<!-- 								<div class="panel-heading clearfix">
									<form class="navbar-form navbar-left" role="search">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Search">
										</div>
									</form>
									<button class="btn btn-primary">搜索</button>
									<button id="testChange" class="btn btn-default">更换备用机</button>
									<button class="btn btn-default">导出</button>
								</div> -->
								
								<div class="panel-heading clearfix">
									<form class="navbar-form navbar-left" role="search">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Search" id="chang-search">
										</div>
									</form>
									<button id="btn-search" class="btn btn-primary">搜索</button>
									<button id="testChange" class="btn btn-default">更换备用机</button>
									<button id="btn-spareExport" class="btn btn-default">
									<a href="${contextPath}/controller/spareExport">导出</a>
									
									</button>
								</div>
								
								
								
								
								
								<!--全国备用机统计表格模板-->
								<table  id="qgbyjtjTable"></table>
								
								
							</div>
							
							
							
						</div>
						
						<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
							<div class="panel panel-default">
								<div class="panel-heading clearfix">
									<button id="testAdd" class="btn btn-default">添加</button>
								</div>
								
								<!--全国发货申请统计模板-->
								<table id="qgfhsqtjTable"></table>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--更换备用机模态弹窗-->
	<div class="modal fade" id="ghbyj" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
		  		<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">更换备用机</h4>
		  		</div>
		  		<div class="modal-body">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-3 control-label">分公司地区</label>
							<div class="col-sm-9">
								<div class="row">
								 <div class="col-sm-4">
									 <select name="city11" id="city11" class="form-control"
						             onChange="findsubcity('city11','city22','city33')">
										<!-- <option value="11">北京市</option>
										<option value="12">天津市</option> -->
										<option >请选择省</option>
										<option value="13">河北省</option>
										<option value="14">山西省</option>
										<option value="15">内蒙古自治区</option>
										<option value="21">辽宁省</option>
										<option value="22">吉林省</option>
										<option value="23">黑龙江省</option>
										<option value="31">上海市</option>
										<option value="32">江苏省</option>
										<option value="33">浙江省</option>
										<option value="34">安徽省</option>
										<option value="35">福建省</option>
										<option value="36">江西省</option>
										<option value="37">山东省</option>
										<option value="41">河南省</option>
										<option value="42">湖北省</option>
										<option value="43">湖南省</option>
										<option value="44">广东省</option>
										<option value="45">广西壮族自治区</option>
										<option value="46">海南省</option>
										<option value="50">重庆市</option>
										<option value="51">四川省</option>
										<option value="52">贵州省</option>
										<option value="53">云南省</option>
										<option value="54">西藏自治区</option>
										<option value="61">陕西省</option>
										<option value="62">甘肃省</option>
										<option value="63">青海省</option>
										<option value="64">宁夏回族自治区</option>
										<option value="65">新疆维吾尔自治区</option>
										<option value="71">台湾省</option>
										<option value="81">香港特别行政区</option>
										<option value="82">澳门特别行政区</option>
										</select>
									</div>
									<div class="col-sm-4">
										<select class="form-control" name="city22" id="city22"
											onChange="findsubcity1('city22','city33')">
						                    <option value="">请选择市</option>
										</select>
									</div>
									<div class="col-sm-4" >
										<select class="form-control" name="city33" id="city33">
										<option value="">请选择区/县</option>
										</select>
									</div>
								</div>
							</div>
					  	</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" >备用机产品型号</label>
							<div class="col-sm-9">
								<select class="form-control" id="change-model">
									<option value="R611">R611</option>
								</select>
							</div>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">备用机IMEI</label>
							<div class="col-sm-9 qgfhsq-position">
								<input type="text" class="form-control" placeholder="" id="change-imei">
							</div>
					  	</div>

					  	<div class="form-group">
							<label class="col-sm-3 control-label">替换机器IMEI</label>
							<div class="col-sm-9 qgfhsq-position">
								<input type="text" class="form-control" placeholder="" id="respace-imei">
							</div>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">备注信息</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"placeholder="" id="change-remark">
							</div>
					  	</div>
    				</form>
		  		</div>
		  		<div class="modal-footer">
		  			<button type="button"  id="change-Btn" class="btn btn-primary change-Btn">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
		  		</div>
			</div>
		</div>
	</div>
	<!--更换备用机模态弹窗-->
		<!--更换备用机模态弹窗-->
	<div class="modal fade" id="ghbyj1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
		  		<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">更换备用机</h4>
		  		</div>
		  		<div class="modal-body">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-3 control-label">分公司地区</label>
							<div class="col-sm-9">
								<div class="row">
								 <div class="col-sm-4">
									 <select name="city111" id="city111" class="form-control"
						             onChange="findsubcity('city111','city222','city333')">
										<!-- <option value="11">北京市</option>
										<option value="12">天津市</option> -->
										<option >请选择省</option>
										<option value="13">河北省</option>
										<option value="14">山西省</option>
										<option value="15">内蒙古自治区</option>
										<option value="21">辽宁省</option>
										<option value="22">吉林省</option>
										<option value="23">黑龙江省</option>
										<option value="31">上海市</option>
										<option value="32">江苏省</option>
										<option value="33">浙江省</option>
										<option value="34">安徽省</option>
										<option value="35">福建省</option>
										<option value="36">江西省</option>
										<option value="37">山东省</option>
										<option value="41">河南省</option>
										<option value="42">湖北省</option>
										<option value="43">湖南省</option>
										<option value="44">广东省</option>
										<option value="45">广西壮族自治区</option>
										<option value="46">海南省</option>
										<option value="50">重庆市</option>
										<option value="51">四川省</option>
										<option value="52">贵州省</option>
										<option value="53">云南省</option>
										<option value="54">西藏自治区</option>
										<option value="61">陕西省</option>
										<option value="62">甘肃省</option>
										<option value="63">青海省</option>
										<option value="64">宁夏回族自治区</option>
										<option value="65">新疆维吾尔自治区</option>
										<option value="71">台湾省</option>
										<option value="81">香港特别行政区</option>
										<option value="82">澳门特别行政区</option>
										</select>
									</div>
									<div class="col-sm-4">
										<select class="form-control" name="city222" id="city222"
											onChange="findsubcity1('city222','city333')">
						                    <option value="">请选择市</option>
										</select>
									</div>
									<div class="col-sm-4" >
										<select class="form-control" name="city333" id="city333">
										<option value="">请选择区/县</option>
										</select>
									</div>
								</div>
							</div>
					  	</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" >备用机产品型号</label>
							<div class="col-sm-9">
								<select class="form-control" id="change-model1">
									<option value="R611">R611</option>
								</select>
							</div>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">备用机IMEI</label>
							<div class="col-sm-9 qgfhsq-position">
								<input type="text" class="form-control" placeholder="" id="change-imei1">
										<div class="list-group" id="first-search-fuzzy-spare">
										<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" id="first-search-fuzzy31">
											<li role="presentation"><a role="menuitem" tabindex="-1">Java</a>
											</li>
										</ul>
									   </div>
							</div>
					  	</div>

					  	<div class="form-group">
							<label class="col-sm-3 control-label">替换机器IMEI</label>
							<div class="col-sm-9 qgfhsq-position">
								<input type="text" class="form-control" placeholder="" id="respace-imei1">
							</div>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">备注信息</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"placeholder="" id="change-remark1">
							</div>
					  	</div>
    				</form>
		  		</div>
		  		<div class="modal-footer">
		  			<button type="button"  id="change-Btn1" class="btn btn-primary change-Btn">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
		  		</div>
			</div>
		</div>
	</div>
	<!--更换备用机模态弹窗-->
	
	
<!--发货确认模态弹窗-->
	<div class="modal fade" id="fhqr" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
		  		<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">发货确认</h4>
		  		</div>
		  		<div class="modal-body">
		  		<div class="ecCharLoading" id="ecCharLoading3"></div>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-3 control-label">分公司地区</label>
							<div class="col-sm-8">
								<div class="row">
								<div class="col-sm-4">
									 <select name="city1" id="city1" class="form-control"
						               onChange="findsubcity('city1','city2','city3')">
										<!-- <option value="11">北京市</option>
										<option value="12">天津市</option> -->
										<option >请选择省</option>
										<option value="13">河北省</option>
										<option value="14">山西省</option>
										<option value="15">内蒙古自治区</option>
										<option value="21">辽宁省</option>
										<option value="22">吉林省</option>
										<option value="23">黑龙江省</option>
										<option value="31">上海市</option>
										<option value="32">江苏省</option>
										<option value="33">浙江省</option>
										<option value="34">安徽省</option>
										<option value="35">福建省</option>
										<option value="36">江西省</option>
										<option value="37">山东省</option>
										<option value="41">河南省</option>
										<option value="42">湖北省</option>
										<option value="43">湖南省</option>
										<option value="44">广东省</option>
										<option value="45">广西壮族自治区</option>
										<option value="46">海南省</option>
										<option value="50">重庆市</option>
										<option value="51">四川省</option>
										<option value="52">贵州省</option>
										<option value="53">云南省</option>
										<option value="54">西藏自治区</option>
										<option value="61">陕西省</option>
										<option value="62">甘肃省</option>
										<option value="63">青海省</option>
										<option value="64">宁夏回族自治区</option>
										<option value="65">新疆维吾尔自治区</option>
										<option value="71">台湾省</option>
										<option value="81">香港特别行政区</option>
										<option value="82">澳门特别行政区</option>
										</select>
									</div>
									<div class="col-sm-4">
										<select class="form-control" name="city2" id="city2"
											onChange="findsubcity1('city2','city3')">
						                    <option value="volvo">请选择市</option>
										</select>
									</div>
									<div class="col-sm-4" >
										<select class="form-control" name="city3" id="city3">
										
										<option value="volvo">请选择区/县</option>
										</select>
									</div>
								</div>
								
							</div>
					  	</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">具体地址</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" placeholder="" id="send-address">
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">发货数量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control"  id="send-number" >
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">发货产品型号</label>
							<div class="col-sm-8">
								<select class="form-control" id="send-model">
									<option value="R611">R611</option>
								</select>
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">机器类型</label>
							<div class="col-sm-8">
								<div style="margin-right: 10px;" class="radio pull-left">
									<label>
								  		<input type="radio" name="test"  value="0" >
								  		正常发货
									</label>
								</div>
								<div class="radio pull-left">
									<label>
								  		<input type="radio" name="test"  value="1" >
								  		备用机
									</label>
								</div>
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">快递单号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" placeholder="" id="send-expressId">
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group" id="sendFile">
							<label class="col-sm-3 control-label" id="upload-state">导入IMEI号</label>
							<div class="col-sm-8">
								<input type="file" name="file" id="exampleInputFile">
								<p class="help-block"><a href="${contextPath}/controller/sendFileDownload">下载文件模板</a></p>
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">是否收货</label>
							<div class="col-sm-9">
								<div style="margin-right: 10px;" class="radio2 pull-left">
									<label>
								  		<input type="radio" name="test1"  value="1" >
								  		是
									</label>
								</div>
								<div class="radio2 pull-left">
									<label>
								  		<input type="radio" name="test1"  value="0" >
								  		否
									</label>
								</div>
								<div style="clear: both;"></div>
								<p class="help-block">收到货后，导入的IMEI号才会显示在系统里</p>
							</div>
					  	</div>
    				</form>
		  		</div>
		  		<div class="modal-footer">
		  			<button type="button" id ="send-confirm" class="btn btn-primary saveBtn">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
		  		</div>
			</div>
		</div>
	</div>

	<!--添加发货确认模态弹窗-->
	<div class="modal fade" id="fhqr1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
		  		<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">发货确认</h4>
		  		</div>
		  		<div class="modal-body">
		  		 <div class="ecCharLoading" id="ecCharLoading4"></div>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-3 control-label">分公司地区</label>
							<div class="col-sm-8">
								<div class="row">
								<div class="col-sm-4">
									 <select name="add-city1" id="add-city1" class="form-control"
						onChange="findsubcity('add-city1','add-city2','add-city3')">
								<!-- 		<option value="11">北京市</option>
										<option value="12">天津市</option> -->
										<option >请选择省</option>
										<option value="13">河北省</option>
										<option value="14">山西省</option>
										<option value="15">内蒙古自治区</option>
										<option value="21">辽宁省</option>
										<option value="22">吉林省</option>
										<option value="23">黑龙江省</option>
										<option value="31">上海市</option>
										<option value="32">江苏省</option>
										<option value="33">浙江省</option>
										<option value="34">安徽省</option>
										<option value="35">福建省</option>
										<option value="36">江西省</option>
										<option value="37">山东省</option>
										<option value="41">河南省</option>
										<option value="42">湖北省</option>
										<option value="43">湖南省</option>
										<option value="44">广东省</option>
										<option value="45">广西壮族自治区</option>
										<option value="46">海南省</option>
										<option value="50">重庆市</option>
										<option value="51">四川省</option>
										<option value="52">贵州省</option>
										<option value="53">云南省</option>
										<option value="54">西藏自治区</option>
										<option value="61">陕西省</option>
										<option value="62">甘肃省</option>
										<option value="63">青海省</option>
										<option value="64">宁夏回族自治区</option>
										<option value="65">新疆维吾尔自治区</option>
										<option value="71">台湾省</option>
										<option value="81">香港特别行政区</option>
										<option value="82">澳门特别行政区</option>
										</select>
									</div>
									<div class="col-sm-4">
										<select class="form-control" name="add-city2" id="add-city2"
											onChange="findsubcity1('add-city2','add-city3')">
						                    <option value="volvo">请选择市</option>
										</select>
									</div>
									<div class="col-sm-4" >
										<select class="form-control" name="add-city3" id="add-city3">
										<option value="volvo">请选择区/县</option>
										</select>
									</div>
								</div>
								
							</div>
					  	</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">具体地址</label>
							<div class="col-sm-8">
								<input type="text" class="form-control form-control1" placeholder="" id="add-send-address">
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
						
						
						<div class="form-group">
							<label class="col-sm-3 control-label">收货人</label>
							<div class="col-sm-8">
								<input type="text" class="form-control form-control1" placeholder="" id="add-send-receiver">
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	
					  	<div class="form-group">
							<label class="col-sm-3 control-label">发货数量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control form-control1"  id="add-send-number" >
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">发货产品型号</label>
							<div class="col-sm-8">
								<select class="form-control" id="add-send-model">
									<option value="R611">R611</option>
								</select>
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">机器类型</label>
							<div class="col-sm-8">
								<div style="margin-right: 10px;" class="radio pull-left">
									<label>
								  		<input type="radio" name="add-test1"  value="0" >
								  		正常发货
									</label>
								</div>
								<div class="radio pull-left">
									<label>
								  		<input type="radio" name="add-test1"  value="1" >
								  		备用机
									</label>
								</div>
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">快递单号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control form-control1" placeholder="" id="add-send-expressId">
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label" id="add-upload-state">导入IMEI号</label>
							<div class="col-sm-8">
								<input type="file" name="file1" id="add-exampleInputFile">
								<p class="help-block"><a href="${contextPath}/controller/sendFileDownload">下载文件模板</a></p>
							</div>
							<label class="col-sm-1 must">*</label>
					  	</div>
					  	<div class="form-group">
							<label class="col-sm-3 control-label">是否收货</label>
							<div class="col-sm-9">
								<div style="margin-right: 10px;" class="radio1 pull-left">
									<label>
								  		<input type="radio" name="add-test2"  value="1">
								  		是
									</label>
								</div>
								<div class="radio1 pull-left">
									<label>
								  		<input type="radio" name="add-test2"  value="0">
								  		否
									</label>
								</div>
								<div style="clear: both;"></div>
								<p class="help-block">收到货后，导入的IMEI号才会显示在系统里</p>
							</div>
					  	</div>
    				</form>
		  		</div>
		  		<div class="modal-footer">
		  			<button type="button" id ="add-send-confirm" class="btn btn-primary saveBtn">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
		  		</div>
			</div>
		</div>
	</div>
	<!--收货确认模态弹窗-->
	<div class="modal fade" id="fhqr2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
		  		<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">收货确认</h4>
		  		</div>
		  		<div class="modal-body">
					<form class="form-horizontal" role="form">
					  	<div class="form-group">
							<label class="col-sm-3 control-label">是否收货</label>
								<input type="hidden"   value=""  id="sendId-confirm">
							<div class="col-sm-9">
								<div style="margin-right: 10px;" class="radio3 pull-left">
									<label>
								  		<input type="radio" name="test1"  value="1" >
								  		是
									</label>
								</div>
								<div class="radio2 pull-left">
									<label>
								  		<input type="radio" name="test1"  value="0" >
								  		否
									</label>
								</div>
								
								<div style="clear: both;"></div>
								<p class="help-block">收到货后，导入的IMEI号才会显示在系统里</p>
							</div>
					  	</div>
    				</form>
		  		</div>
		  		<div class="modal-footer">
		  			<button type="button" id ="send-confirm-state" class="btn btn-primary saveBtn">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
		  		</div>
			</div>
		</div>
	</div>
	
	
	
	
<script id="firstsearchGroup1" type="text/html">
		{{# for(var i = 0, len = d.length; i < len; i++){ }}
                <li  role="presentation" data-n_id={{d[i].n_id}} data-c_spare_imei={{d[i].c_spare_imei}} >
				<a role="menuitem" tabindex="-1" >{{d[i].c_spare_imei}}</a>
				</li> 
        {{# } }}
</script>
	<!--发货申请模态弹窗-->
	<script>
	var changeId;
	
	
//交换机信息查询；
	$("#btn-search").click(function(){
		var imei=$("#chang-search").val();
		$.post("${contextPath}/controller/searchSpare", {
			spareImei : imei,
			code:"allcode"
		}, function(data) {
			if (data.state == "1") {
				alert("没有此imei号");
			} else {
				$('#qgbyjtjTable').bootstrapTable('load', data);
			}
		});
	});
	
	
	//修改交换表；
	$("#change-Btn").click(function(){
		   var model = $("#change-model option:selected").text();
		   var changeImei=$("#change-imei").val();
		   var respaceImei=$("#respace-imei").val();
		   var remark=$("#change-remark").val();
		   if(changeImei==""||respaceImei==""||remark=="")
		   {
		   alert("请把信息填完整");
		   return;
		   } 
		   if(respaceImei.length!="15")
			   {
			   alert("imei号格式错误");
			   return;
			   }   
		   
		   
		   
			var obj = {};
			obj['respaceImei'] = respaceImei;
			obj['model'] = model;
			obj['remark'] = remark;
			obj['spareChangId'] = changeId;
			
	  		$.ajax({
		        url: '${contextPath}/controller/spareChangEdit',
		        method: 'post',
		        contentType: 'application/json', // 这句不加出现415错误:Unsupported Media Type
		        data: JSON.stringify(obj), // 以json字符串方式传递
		        success: function(data) {
		            if(data.state!="0")
		            {
		            	alert("修改失败，参数填写错误");	
		            }else
	            	{
	            	alert("替换成功");	
	            	$('#qgbyjtjTable').bootstrapTable('refresh', {
						silent : true
					});
	            	}
		            $("#ghbyj").modal("hide");
		        },
		    });   
	});
	function showData(data, tmpl, target){
		var gettpl = $(tmpl).html();
		laytpl(gettpl).render(data, function(html){
	  		$(target).html(html)
		});
	} 
	//监听备用机imei变化；
		$('#change-imei1').bind('input propertychange',function() {
				var data = $(this).val();
				var cityCode1=    $("#city111 option:selected").attr("value");
				var cityCode2=    $("#city222 option:selected").attr("value");
				var cityCode3=    $("#city333 option:selected").attr("value");
				var region=cityCode1+cityCode2+cityCode3;
				regionAll=region;
				//实时模糊查询
				if (data.length > 0) {
					$.post("${contextPath}/controller/fuzzySearchSpareChang", {
						spareImei : data,
						region:region,
					}, function(data) {
						if (data.state == "0") {
							showData(data.result, "#firstsearchGroup1","#first-search-fuzzy31");
							$('#first-search-fuzzy-spare').show();
							$('#first-search-fuzzy31').show();
						} else {
							showData(data.result, "#firstsearchGroup1",
									"#first-search-fuzzy31");
							$('#first-search-fuzzy-spare').hide();
							$('#first-search-fuzzy31').hide();
						}

					});
				} else {
					$('#first-search-fuzzy-spare').hide();
					$('#first-search-fuzzy31').hide();
				}
			});
		//模糊查询点击事件；
		$("#first-search-fuzzy-spare ul").on("click", "li", function() {
			var imei = $(this).data("c_spare_imei");
			var changId1= $(this).data("n_id");
			$("#change-imei1").val(imei);
			changeId=changId1;
			$('#first-search-fuzzy-spare').hide();
			$('#first-search-fuzzy31').hide();
		});
		//-------------------------------点击空白处
		$("body").bind('click', function() {
			$('#first-search-fuzzy-spare').hide();
			$('#first-search-fuzzy31').hide();
		});
	//修改交换表；
	$("#change-Btn1").click(function(){
		   var model = $("#change-model1 option:selected").text();
		   var changeImei=$("#change-imei1").val();
		   var respaceImei=$("#respace-imei1").val();
		   var remark=$("#change-remark1").val();
			 
		   if(changeImei==""||respaceImei==""||remark=="")
		   {
		   alert("请把信息填完整");
		   return;
		   } 
		   if(respaceImei.length!="15")
			   {
			   alert("imei号格式错误");
			   return;
			   }
			var obj = {};
			obj['respaceImei'] = respaceImei;
			obj['model'] = model;
			obj['remark'] = remark;
			obj['spareChangId'] = changeId;
			
	  		$.ajax({
		        url: '${contextPath}/controller/spareChangEdit',
		        method: 'post',
		        contentType: 'application/json', // 这句不加出现415错误:Unsupported Media Type
		        data: JSON.stringify(obj), // 以json字符串方式传递
		        success: function(data) {
		            if(data.state!="0")
		            {
		            	alert("修改失败，参数填写错误");	
		            }else
	            	{
	            	alert("替换成功");	
	            	$('#qgbyjtjTable').bootstrapTable('refresh', {
						silent : true
					});
	            	}
		            $("#ghbyj1").modal("hide");
		        },
		    });   
	});
	//添加发货确认
		$("#add-send-confirm").click(function(){
 		   var city1 = $("#add-city1 option:selected").text();
		   var city2 = $("#add-city2 option:selected").text();
		   var city3 = $("#add-city3 option:selected").text();
		   var cityCode1=$("#add-city1 option:selected").attr("value");
		   var cityCode2=$("#add-city2 option:selected").attr("value");
		   var cityCode3=$("#add-city3 option:selected").attr("value");
		  
		   var region=cityCode1+cityCode2+cityCode3;
		   var address=$("#add-send-address").val();
		   var number =$("#add-send-number").val();
		   var model = $("#add-send-model option:selected").text();
		   var sendType = $('.radio  input[name="add-test1"]:checked ').val();
		   
		   var receiveState=$('.radio1  input[name="add-test2"]:checked ').val();
		   var expressId=$("#add-send-expressId").val();
		 
		   if(cityCode1==undefined||cityCode1==""||cityCode2==undefined||cityCode2==""||cityCode3==undefined||cityCode3=="")
		   {
		       alert("请填选完整地区选择");
		       return;
		   }
		   
		   if(address==""||receiveState==""||number==""||expressId==""||receiveState==undefined)
		   {
		   alert("请把信息填完整");
		   return;
		   }
		   
		   var obj = {};
			obj['region'] = region;
			obj['address'] = address;
			obj['number'] = number;
			obj['model'] = model;
			obj['sendType'] = sendType;
			obj['receiveState'] = receiveState;
			obj['expressId'] = expressId;
			obj['area'] =city1+"-"+city2+"-"+city3;
			obj['c_receiver'] =$("#add-send-receiver").val();;
			$("#ecCharLoading4").show();
			$.ajax({
		        url: '${contextPath}/controller/addSendApplicationConfirm',
		        method: 'post',
		        contentType: 'application/json', // 这句不加出现415错误:Unsupported Media Type
		        data: JSON.stringify(obj), // 以json字符串方式传递
		        success: function(data) {
		        	$("#ecCharLoading4").hide();
		            if(data.state!="0")
		            {
		            	alert("申请失败，参数填写错误");	
		            }else
	            	{
	            	alert("发货申请确认成功");	
	            	$('#qgfhsqtjTable').bootstrapTable('refresh', {
						silent : true
					});
	            	}
		            $("#fhqr1").modal("hide");
		        },
		    });  
		});
	
	//发货申请确认；
	$("#send-confirm").click(function(){
 		   var city1 = $("#city1 option:selected").text();
		   var city2 = $("#city2 option:selected").text();
		   var city3 = $("#city3 option:selected").text();
		   var cityCode1=    $("#city1 option:selected").attr("value");
		   var cityCode2=    $("#city2 option:selected").attr("value");
		   var cityCode3=    $("#city3 option:selected").attr("value");
		   var region=cityCode1+cityCode2+cityCode3;
		   var address=$("#send-address").val();
		   var number =$("#send-number").val();
		   var model = $("#send-model option:selected").text();
		   var sendType = $('.radio  input[name="test"]:checked ').val();
		   var receiveState=$('.radio2  input[name="test1"]:checked ').val();
		   var expressId=$("#send-expressId").val();

		   if(cityCode1==undefined||cityCode1==""||cityCode2==undefined||cityCode2==""||cityCode3==undefined||cityCode3=="")
		   {
		       alert("请填选完整地区选择");
		       return;
		   }
		   if(address==""||receiveState==""||number==""||expressId==""||receiveState==undefined)
		   {
		   alert("请把信息填完整");
		   return;
		   }
		  
		   var expressId=$("#send-expressId").val();
		   var obj = {};
			obj['region'] = region;
			obj['address'] = address;
			obj['number'] = number;
			obj['model'] = model;
			obj['sendType'] = sendType;
			obj['receiveState'] = receiveState;
			obj['expressId'] = expressId;
			obj['n_id'] = sendId;
			obj['area'] =city1+"-"+city2+"-"+city3;
			$("#ecCharLoading3").show();
			$.ajax({
		        url: '${contextPath}/controller/sendApplicationConfirm',
		        method: 'post',
		        contentType: 'application/json', // 这句不加出现415错误:Unsupported Media Type
		        data: JSON.stringify(obj), // 以json字符串方式传递
		        success: function(data) {
		        	$("#ecCharLoading3").hide();
		            if(data.state!="0")
		            {
		            	alert("申请失败，参数填写错误");	
		            }else
	            	{
	            	alert("发货申请确认成功");	
	            	$('#qgfhsqtjTable').bootstrapTable('refresh', {
						silent : true
					});
	            	}
		            $("#fhqr").modal("hide");
		        },
		    });  
			
		});
	//确定是否收货；
	
	$("#send-confirm-state").click(function(){
		   var sendId=$("#sendId-confirm").val();
		   var receiveState=$('.radio3  input[name="test1"]:checked ').val();
		   var obj = {};
		   obj['sendId'] = sendId;
		   if(receiveState=="1")
			 {
				$.ajax({
			        url: '${contextPath}/controller/goodsConfirm',
			        method: 'post',
			        contentType: 'application/json', // 这句不加出现415错误:Unsupported Media Type
			        data: JSON.stringify(obj), // 以json字符串方式传递
			        success: function(data) {
			            if(data.state!="0")
			            {
			            	alert("修改失败，参数填写错误");	
			            }else
		            	{
		            	alert("收货成功");	
		            	$('#qgfhsqtjTable').bootstrapTable('refresh', {
							silent : true
						});
		            	}
			            $("#fhqr2").modal("hide");
			        },
			    }); 
			 }
		});
	
	
	
	//上传文件事件；
	var sendId=null;
	$("#exampleInputFile").bind("change",function(){
		var file=$("input[name='file']").val(); 
		var filename=file.replace(/.*(\/|\\)/, ""); 
		var fileExt=(/[.]/.exec(filename)) ? /[^.]+$/.exec(filename.toLowerCase()) : '';  
		 if(fileExt!="xlsx")
			 {
			 alert("上传文件类型错误,请重新上传文件")
			 }else{
               $("#upload-state").text("正在上传");
				 ajaxFileUpload(); 
			 }
		  });
	//上传文件；
	 function ajaxFileUpload() {
            $.ajaxFileUpload
            (
                {
                    url: '${contextPath}/controller/sendFileUpload', //用于文件上传的服务器端请求地址
                    secureuri: false, //是否需要安全协议，一般设置为false
                    fileElementId: 'exampleInputFile', //文件上传域的ID
                    dataType: 'json', //返回值类型 一般设置为json
                    success: function (data, status)  //服务器成功响应处理函数
                    {
                   	 if(data.error.length>0)
                   		 {
                   		 var imeiRrror=data.error;
                   		 alert("以下imei号无法导入:"+imeiRrror+"-----"+"请重新导入imei号");
                   		  $("#upload-state").text("上传失败");
                   		$('#send-confirm').attr('disabled',"true");
                   		 }else
                   			 {
                   			 $("#upload-state").text("上传完成");
                   			$('#send-confirm').removeAttr("disabled");
                   			 }
                 	$("#exampleInputFile").bind("change",function(){
                		var file=$("input[name='file']").val(); 
                		var filename=file.replace(/.*(\/|\\)/, ""); 
                		var fileExt=(/[.]/.exec(filename)) ? /[^.]+$/.exec(filename.toLowerCase()) : '';  
                		 if(fileExt!="xlsx")
                			 {
                			 alert("上传文件类型错误,请重新上传文件")
                			 }else{
                               $("#upload-state").text("正在上传");
                				 ajaxFileUpload(); 
                			 }
                		  });
                    },
                }
            )
            return false;
        }
	
		//上传文件事件；
		$("#add-exampleInputFile").bind("change",function(){
			var file=$("input[name='file1']").val(); 
			var filename=file.replace(/.*(\/|\\)/, ""); 
			var fileExt=(/[.]/.exec(filename)) ? /[^.]+$/.exec(filename.toLowerCase()) : '';  
			 if(fileExt!="xlsx")
				 {
				 alert("上传文件类型错误,请重新上传文件")
				 }else{
	               $("#add-upload-state").text("正在上传");
					 ajaxFileUpload1(); 
				 }
			  });
		//上传文件；
		 function ajaxFileUpload1() {
	            $.ajaxFileUpload
	            (
	                {
	                    url: '${contextPath}/controller/sendFileUpload1', //用于文件上传的服务器端请求地址
	                    secureuri: false, //是否需要安全协议，一般设置为false
	                    fileElementId: 'add-exampleInputFile', //文件上传域的ID
	                    dataType: 'json', //返回值类型 一般设置为json
	                    success: function (data, status)  //服务器成功响应处理函数
	                    {
	                   	 if(data.error.length>0)
	                   		 {
	                   		 var imeiRrror=data.error;
	                   		 alert("以下imei号无法导入:"+imeiRrror+"-----"+"请重新导入imei号");
	                   		 $("#add-upload-state").text("上传失败");
	                   		 }else
	                   			 {
	                   			 $("#add-upload-state").text("上传完成");
	                   			 }
	                   	 
	                 	$("#add-exampleInputFile").bind("change",function(){
	                		
	                		var file=$("input[name='file1']").val(); 
	                		var filename=file.replace(/.*(\/|\\)/, ""); 
	                		var fileExt=(/[.]/.exec(filename)) ? /[^.]+$/.exec(filename.toLowerCase()) : '';  
	                		 if(fileExt!="xlsx")
	                			 {
	                			 alert("上传文件类型错误,请重新上传文件")
	                			 }else{
	                               $("#add-upload-state").text("正在上传");
	                				 ajaxFileUpload1(); 
	                			 }
	                		  });
	                   	 
	                   	 
	                    },
	                }
	            )
	            return false;
	        }

	
		$(function(){
			$("#testChange").click(function(){
				
				
				$("#ghbyj1").modal();
			});
			$("#testAdd").click(function(){
				$("#ecCharLoading4").hide();
				$("#fhqr1").modal();
				$(".form-control1").val("");
				
				
			});
			
			
			//交换机	
			$('#qgbyjtjTable').bootstrapTable({
				method : 'get',
				url : "${contextPath}/controller/spareChangMsg",
				pagination : true,
				sidePagination : "server",//服务器分页     	    
				pageSize : 10,
				pageNumber : 1,
				pageList : [ 10 ],
				queryParams : getParams,
				clickToSelect : true,//选择行即选择checkbox  
				singleSelect : true,//仅允许单选  
				columns: [
					{
						field: 'n_id',
						visible:false,
					},{
						field: 't_time',
						title: '时间',
						class: 'update-icon',
						formatter: timeFormatter
					}, 
					{
						field: 'c_area',
						title: '地区'
					}, 
					{
						field: 'c_spare_imei',
						title: '备用机IMEI号'
					},
					{
						field: 'c_respace_imei',
						title: '替换机器IMEI号'
					},
					{
						field: 'c_model',
						title: '备用机产品型号'
					},
					{
						field: 'c_remark',
						title: '备注信息'
					},
					{
						field: 'handle',
						title: '操作',
						events:'actionEvents',
						formatter: operateFormatter1
					}
				],
			});
			function timeFormatter(value, row, index){
				if(value!=null){
					value=BaseUtility.longConvertDate(value);	
				}
				
				return value;
			}
			function operateFormatter1(value, row, index){
				console.log(row);
				var obj = {};
				obj['flag'] = "1";
				obj['recordId']=row.n_id;
				var html=null;
		  		$.ajax({
			        url: '${contextPath}/controller/spareShowLog',
			        method: 'post',
			        async : false,
			        contentType: 'application/json', // 这句不加出现415错误:Unsupported Media Type
			        data: JSON.stringify(obj), // 以json字符串方式传递
			        success: function(data) {
			        $('.popover').remove();
			        if(data.state=="0")
			        	{
			        	var result=data.result;
						for(var i=0;i<result.length;i++)
							{
							if(html==null){
								html='<p>'+result[i].t_create_time+' '+result[i].c_content+'</p>';	
							}else
								{
								html=html+'<p>'+result[i].t_create_time+' '+result[i].c_content+'</p>';
								}
							}
			        	}
			        },
			    }); 
				return [
					'<div class="glyphicon-box"><span class="glyphicon glyphicon-edit  glyphicon-edit1 " href="javascript:void(0)"></span></div>',
					'<div class="glyphicon-box"><span data-content="'+html+'" class="glmoreinfo glyphicon glyphicon-info-sign glyphicon-info-sign2" id=change'+row.n_id+'></span></div>'
				].join('');
			}

			$('#qgbyjtjTable').on('page-change.bs.table', function(){
				addPopover();
			});
			
			
			
			
		
		
			//发送申请确定
			$('#qgfhsqtjTable').bootstrapTable({
				method : 'get',
				url : "${contextPath}/controller/spareSendMsg",
				height : 400,
				pagination : true,
				sidePagination : "server",//服务器分页     	    
				pageSize : 10,
				pageNumber : 1,
				pageList : [ 10 ],
				queryParams : getParams,
				clickToSelect : true,//选择行即选择checkbox  
				singleSelect : true,//仅允许单选  
				columns: [
							{
								field: 'n_id',
								visible:false,
							},
							{
								field: 't_send_time',
								title: '时间',
								formatter: timeFormatter
								
							}, 
							{
								field: 'c_address',
								title: '收货地址'
							}, 
							{
								field: 'c_number',
								title: '发货数量'
							},
							{
								field: 'c_receiver',
								title: '收货人'
							},
							{
								field: 'c_express_message',
								title: '快递信息'
							},
							{
								field: 'c_model',
								title: '发货产品型号'
							},
							{
								field: 'c_send_type',
								title: '机器类型',
								formatter:sendFormatter,
							},
							{
								field: 'c_apply_state',
								title: '处理状态',
								formatter: applyFormatter,
							},
							{
								field: 'handle',
								title: '操作',
								events:'actionEvents',
								formatter: operateFormatter
							}],
			});
			function sendFormatter(value, row, index){
				if(value=="0")
					{
					value="正常发货";
					}else{
					value="备用机";	
					}
				return value;
			}
			
			function operateFormatter(value, row, index){
				var obj = {};
				obj['flag'] = "0";
				obj['recordId']=row.n_id;
				var html=null;
		  		$.ajax({
			        url: '${contextPath}/controller/spareShowLog',
			        method: 'post',
			        async : false,
			        contentType: 'application/json', // 这句不加出现415错误:Unsupported Media Type
			        data: JSON.stringify(obj), // 以json字符串方式传递
			        success: function(data) {
			        if(data.state=="0")
			        	{
			        	var result=data.result;
						for(var i=0;i<result.length;i++)
							{
							if(html==null){
								html='<p>'+result[i].t_create_time+' '+result[i].c_content+'</p>';	
							}else
								{
								html=html+'<p>'+result[i].t_create_time+' '+result[i].c_content+'</p>';
								}
							}  
			        	}
			        },
			    }); 
				return [
					'<div class="glyphicon-box"><span class="glyphicon glyphicon-edit  glyphicon-edit2" href="javascript:void(0)"></span></div>',
					'<div class="glyphicon-box"><span data-content="'+html+'" class="glmoreinfo glyphicon glyphicon-info-sign glyphicon-info-sign1" id='+row.n_id+'></span></div>'
				].join('');
			}
			
			$('#qgbyjtjTable').on('load-success.bs.table', function(){
				addPopover();
			});
			
			$('#qgfhsqtjTable').on('load-success.bs.table', function(){
				addPopover();
			});
			
			
			var testTarget;
			function addPopover(){
				$('.glmoreinfo').popover({
					container: 'body',
					placement: 'left',
					html: true
				});
			 }
			
			$(document).click(function(ev){
				
				if($('.popover')[0] && $.contains($('.popover')[0], ev.target)){
					return;
				}
				
				if(ev.target != testTarget){
					$(testTarget).popover('hide');
				}
				
			});
			
			
			
			
			window.actionEvents  = {
				'click .glmoreinfo': function(e, value, row, index){
					
					if(testTarget && testTarget != e.target){
						$(testTarget).popover('hide');
					}
					testTarget = e.target;
				},	
				
				'click .glyphicon-edit': function (e, value, row, index) {
					
				
					//显示申请模态框；
					if(row.c_apply_state=="1")
						{
						if(row.c_receiver_state=="1")
							{
							alert("已经处理完毕")
							}else
								{
								$("#fhqr2").modal();
								 $("#sendId-confirm").val(row.n_id);
								}
						}else{
							 $("#ecCharLoading3").hide();
							 $("#fhqr").modal();
						     var area=row.c_area;
						     var area1=area.split("-");
						     var region=row.c_region;
						     var region1=region.substring(0,2);
						     var region2=region.substring(2,4);
						     var region3=region.substring(4,6);
						     
							 $("#city1 option:selected").text(area1[0]);
							 $("#city2 option:selected").text(area1[1]);
							 $("#city3 option:selected").text(area1[2]);
							 $('#city1 option:selected').attr("value", region1);
							 $('#city2 option:selected').attr("value", region2);
							 $('#city3 option:selected').attr("value", region3);
							 sendId=row.n_id;
							 $("#send-address").val(row.c_address);
							 $("#send-number").val(row.c_number);
								
							 $('.radio2 input[name=test1]').removeAttr('checked');
						     $('.radio2 input[name=test1][value='+row.c_receiver_state+']').prop("checked", true);
								
							 $('.radio input[name=test]').removeAttr('checked');
							 $('.radio input[name=test][value='+row.c_send_type+']').prop("checked", true);
							 $("#send-expressId").val(row.c_express_id);
							
							  //隐藏正常发货；
							  if(row.c_send_type=="0")
								  {
								  $("#sendFile").hide();
								  }else{
								  $("#sendFile").show();  
								  }	
						}
					
					

					  
					  
					  
				},
				'click .glyphicon-edit1': function (e, value, row, index) {
					$("#ghbyj").modal();
					 var area=row.c_area;
				     var area1=area.split("-");
				     var region=row.c_region;
				     var region1=region.substring(0,2);
				     var region2=region.substring(2,4);
				     var region3=region.substring(4,6);
				     
					 $("#city11 option:selected").text(area1[0]);
					 $("#city22 option:selected").text(area1[1]);
					 $("#city33 option:selected").text(area1[2]);
					 $('#city11 option:selected').attr("value", region1);
					 $('#city22 option:selected').attr("value", region2);
					 $('#city33 option:selected').attr("value", region3);
					
					 changeId=row.n_id;
					  $("#change-model").val(row.c_model);
					  $("#change-imei").val(row.c_spare_imei);
					  $("#respace-imei").val(row.c_respace_imei);
					  $("#change-remark").val(row.c_remark);	
				
				},
			};
			
			function applyFormatter(value, row, index){
				if(value=="0")
					{
					value="未处理";
					$("#profile-tab").addClass("update-title-icon");
					
					}else{
					value="已处理";	
					}
				return value;
			}
			
			function getParams(params) {
				return {
					region:"allcode",
 					offset : params.offset,
					sort : params.sort,
					order : params.order 
				};
			}			
			
		});
	</script>
</body>
</html>