<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import = "com.rain.bean.AdminBean,com.rain.bean.HistoryBean,com.rain.bean.ApplyBean,com.rain.dao.BookDao,com.rain.dao.AdminDao" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="ax-vertical-centered">
<head>
	<meta charset="UTF-8">
	<title>Mind Palace</title>
	    <meta http-equiv="Content-Type" content="text/html">
	    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	    <link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/jQuery/jquery-3.1.1.min.js"></script>
            <script src="static/js/bootstrap-dropdown.min.js"></script>
              <script src="static/js/reader.js"></script>
    <link rel="icon" href="static/img/icon_book.png" type="image/x-icon">   
             <script src="ajax-lib/ajaxutils.js"></script>
            <script src="static/js/readerUpdateInfo.js"></script>
             <script src="static/js/readerUpdatePwd.js"></script>

<style type="text/css">
		main{
        	position: relative;
        }
        main.animated {
          opacity: 0;
          filter: blur(10px);
          transition: opacity 1s ease-in-out, filter 1s ease-in-out;
        }
        #mybg{
            margin: 0;
            padding: 0;
            position: fixed;
            width: 100%;
            height: 100%;
        }
</style>




    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r134/three.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vanta@latest/dist/vanta.birds.min.js"></script>	
 <script>
        //确保页面DOM加载完后执行js代码，否则会报找不到element
        window.addEventListener('DOMContentLoaded',()=>{
        	VANTA.BIRDS({
        		  el: "#mybg",
        		  mouseControls: true,
        		  touchControls: true,
        		  gyroControls: false,
        		  minHeight: 200.00,
        		  minWidth: 200.00,
        		  scale: 1.00,
        		  scaleMobile: 1.00,
        		  color1: 0xf20d0d,
        		  color2: 0xe6bc42,
        		  birdSize: 1.60,
        		  wingSpan: 18.00,
        		  separation: 38.00,
        		  quantity: 4.00,
        		  backgroundAlpha:0.00,
        		})
            setTimeout(() => {
                const main = document.querySelector('main')
                main.style.opacity = 1
                main.style.filter = 'blur(0px)'
            }, 200)
        })  
    </script>





</head>



<body class="bootstrap-admin-with-small-navbar" background="static/img/backgroundbook.jpg" style="background-size: 100%;
	background-attachment: fixed;
	background-repeat:no-repeat">
	<div id="mybg"></div>
<%
AdminBean admin = new AdminBean();
String userid = (String)session.getAttribute("userid");
AdminDao admindao = new AdminDao();
admin = admindao.get_UseridInfo2(userid);
%>
<nav class="navbar navbar-inverse navbar-fixed-top bootstrap-admin-navbar bootstrap-admin-navbar-under-small" role="navigation">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="collapse navbar-collapse main-navbar-collapse">
                    <a class="navbar-brand" href="/reader.jsp"><strong>欢迎使用期刊管理系统</strong></a>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" role="button" class="dropdown-toggle" data-hover="dropdown"> <i class="glyphicon glyphicon-user"></i>     欢迎您，<%= admin.getUname() %><s:property value="#session.reader.name"/><i class="caret"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#updateinfo" data-toggle="modal">个人资料</a></li>
                                 <li role="presentation" class="divider"></li>
                                <li><a href="#updatepwd" data-toggle="modal">修改密码</a></li>
                                <li role="presentation" class="divider"></li>
                                <li><a href="/books/index.jsp">退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>

<main class="animated">
<div class="container">
    <!-- left, vertical navbar & content -->
    <div class="row">
        <!-- left, vertical navbar -->
        <div class="col-md-2 bootstrap-admin-col-left">
            <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
               <li>
                    <a href="/books/select.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 期刊查询</a>
                </li>
	            <li>
	                 <a href="/books/borrow.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 借阅信息</a>
	                </li>
	                <li>
	                    <a href="/books/history.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 借阅历史</a>
	                </li>
                    <li>
	                    <a href="/books/apply.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 委托借阅申请</a>
	                </li>
                
            </ul>
        </div>

        <!-- content -->
        <div class="col-md-10">
           <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default bootstrap-admin-no-table-panel">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">委托借阅申请</div>
                            </div>
                           
                        </div>
                    </div>
                </div>
    <div class="row">
                <div class="col-lg-12">
                  
                </div>
            </div>
                <div class="row">
                    <div class="col-lg-12">
                        <table id="data_list" class="table table-hover table-bordered" cellspacing="0" width="100%">
                            <thead>
                              <colgroup>
                            <col span="10" style="background: #FFFFFF">
                            <tr>
                                <th>期刊号</th>
	                            <th>期刊名称</th> 
	                            <th>读者账号</th>	  
	                            <th>年</th>
	                            <th>卷</th>
	                             <th>期</th>
	                             <th>调往地</th>
	                            <th>申请日期</th>
	                            <th>处理日期</th>
	                            <th>申请状态</th>
	                            
                            </tr>
                            </thead>
                            <!---在此插入信息-->
                            <!---在此插入信息-->
                             <%
                             ArrayList<ApplyBean> bookdata = new ArrayList<ApplyBean>();
                             bookdata = (ArrayList<ApplyBean>)request.getAttribute("data");
                           if(bookdata==null){
                        	   BookDao bookdao = new BookDao();
                        	   bookdata = (ArrayList<ApplyBean>)bookdao.get_ApplyListInfo(0,userid);
                           }
	
  for (ApplyBean bean : bookdata){
  %>                 
								<tbody>
	                         	   	<td><%= bean.getCN() %></td>
	                                <td><%= bean.getBname() %></td>
	                                <td><%= bean.getUserid() %></td>
	                                <td><%= bean.getYear() %></td>
	                                <td><%= bean.getVolume() %></td>
	                                <td><%= bean.getIssue() %></td>  
	                                 <td><%= bean.getPlace() %></td>  
	                                <td><%= bean.getApplytime() %></td>
	                                   <td>              </td>
	                                <td>未审核</td>
                
                          	  </tbody>
                       <%} %> 
                        
                        
                            <%
                             ArrayList<ApplyBean> bookdata1 = new ArrayList<ApplyBean>();
                             bookdata1 = (ArrayList<ApplyBean>)request.getAttribute("data");
                           if(bookdata1==null){
                        	   BookDao bookdao = new BookDao();
                        	   bookdata1 = (ArrayList<ApplyBean>)bookdao.get_ApplyListInfo(1,userid);
                           }
	
  for (ApplyBean bean : bookdata1){
  %>                 
								<tbody>
	                         	   	<td><%= bean.getCN() %></td>
	                                <td><%= bean.getBname() %></td>
	                                <td><%= bean.getUserid() %></td>
	                                <td><%= bean.getYear() %></td>
	                                <td><%= bean.getVolume() %></td>
	                                <td><%= bean.getIssue() %></td>  
	                               <td><%= bean.getPlace() %></td>  
	                                <td><%= bean.getApplytime() %></td>
	                                <td><%= bean.getEndtime() %></td>
	                                <td>已通过</td>
                
                          	  </tbody>
                       <%} %> 
                                            
                            <%
                             ArrayList<ApplyBean> bookdata2 = new ArrayList<ApplyBean>();
                             bookdata2 = (ArrayList<ApplyBean>)request.getAttribute("data");
                           if(bookdata2==null){
                        	   BookDao bookdao = new BookDao();
                        	   bookdata2 = (ArrayList<ApplyBean>)bookdao.get_ApplyListInfo(2,userid);
                           }
	
  for (ApplyBean bean : bookdata2){
  %>                 
								<tbody>
	                         	   	<td><%= bean.getCN() %></td>
	                                <td><%= bean.getBname() %></td>
	                                <td><%= bean.getUserid() %></td>
	                                <td><%= bean.getYear() %></td>
	                                <td><%= bean.getVolume() %></td>
	                                <td><%= bean.getIssue() %></td>  
	                                <td><%= bean.getPlace() %></td>  
	                                <td><%= bean.getApplytime() %></td>
	                                <td><%= bean.getEndtime() %></td>
	                                <td>未通过</td>
                
                          	  </tbody>
                       <%} %> 
                        </table>
                        
                        
                               
                    </div>
                </div>
                
                
           
         
         
        </div>
    </div>
</div>
</main>




 								<!--------------------------------------查看的模糊框------------------------>  
 
 
 

 

    
    
    

<!-------------------------------------------------------------->  
                 
                   <form class="form-horizontal" method="post" action="/books/AdminServlet">   <!--保证样式水平不混乱-->                  
                                     <!-- 模态框（Modal） -->
				<div class="modal fade" id="updatepwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="myModalLabel">
									修改密码
								</h4>
							</div>
							<div class="modal-body">
							 
								<!--正文-->
								<input type="hidden" name="tip" value="1">
								<input type="hidden" name="url" value="history">
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">原密码</label>
								<div class="col-sm-7">
									<input type="password" class="form-control" name="password" id="oldPwd"  placeholder="请输入原密码">
										<label class="control-label" for="oldPwd" style="display: none"></label>				
								</div>
							</div>	
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">新密码</label>
								<div class="col-sm-7">
									<input type="password" class="form-control" name="password2" id="newPwd"  placeholder="请输入新密码">
										<label class="control-label" for="newPwd" style="display: none"></label>			
								</div>
							</div>	
							
								<!--正文-->
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭
								</button>
								<button type="submit" class="btn btn-primary" >
									修改
								</button>
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>

				</form>	
                                   <!-------------------------------------------------------------->
                                   
                                   <!-------------------------个人资料模糊框------------------------------------->  
                 
                   <form class="form-horizontal" method="post" action="/books/AdminServlet">   <!--保证样式水平不混乱-->                  
                                     <!-- 模态框（Modal） -->
				<div class="modal fade" id="updateinfo" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="ModalLabel">
									个人资料
								</h4>
							</div>
							
							<div class="modal-body">
							 
								<!--正文-->
								<input type="hidden" name="tip" value="2">
								<input type="hidden" name="url" value="history">
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">真实姓名</label>
								<div class="col-sm-7">
			<input type="text" class="form-control" id="name" name="uname" placeholder="请输入您的真实姓名" value='<% out.write(admin.getUname());%>'>
										<label class="control-label" for="name" style="display: none"></label>			
								</div>
							</div>	
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">手机号</label>
								<div class="col-sm-7">
			<input type="text" class="form-control" id="phone" name="phone" placeholder="请输入您的手机号" value='<% out.write(admin.getPhone());%>'>
											<label class="control-label" for="phone" style="display: none"></label>				
								</div>
							</div>	
							
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">邮箱</label>
								<div class="col-sm-7">
			<input type="text" class="form-control" id="email" name="email"  placeholder="请输入您的邮箱" value='<% out.write(admin.getEmail());%>'>
											<label class="control-label" for="email" style="display: none"></label>				
								</div>
							</div>	
							
								<!--正文-->
								
								
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭
								</button>
								<button type="submit" class="btn btn-primary" >
									修改
								</button>
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>

				</form>	
                                   <!-------------------------------------------------------------->
    
    


    <div class="modal fade" id="modal_info" tabindex="-1" role="dialog" aria-labelledby="addModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="infoModalLabel">提示</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-12" id="div_info"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btn_info_close" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>



</body>
</html>