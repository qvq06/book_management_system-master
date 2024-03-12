<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "com.rain.dao.AdminDao,com.rain.bean.BookBean,com.rain.dao.BookDao,com.rain.bean.AdminBean,com.rain.bean.CatalogueBean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="ax-vertical-centered">
<head>
	<meta charset="UTF-8">
	<title>期刊管理系统</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	    <link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/jQuery/jquery-3.1.1.min.js"></script>
            <script src="static/js/bootstrap-dropdown.min.js"></script>
      <link rel="icon" href="static/img/icon_book.png" type="image/x-icon">            
              <script src="static/ajax-lib/ajaxutils.js"></script>
            <script src="static/js/adminUpdateInfo.js"></script>
             <script src="static/js/adminUpdatePwd.js"></script>
       
</head>



<script src="static/js/jquery.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>

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

<body class="bootstrap-admin-with-small-navbar" background="static/img/backgroundbook.jpg" style="background-size: 100%;
	background-attachment: fixed;
	background-repeat:no-repeat">
	<div id="mybg"></div>

<body class="bootstrap-admin-with-small-navbar">
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
                        <a class="navbar-brand" href="/admin/admin.jsp"><strong>欢迎使用期刊管理系统</strong></a>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-hover="dropdown"> <i class="glyphicon glyphicon-user"></i> 欢迎您，<%= admin.getUname() %> <s:property value="#session.admin.name"/> <i class="caret"></i></a>
                            
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

    <div class="container">
        <!-- left, vertical navbar & content -->
        <div class="row">
            <!-- left, vertical navbar -->
            <div class="col-md-2 bootstrap-admin-col-left">
                <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
                    <li>
                        <a href="/books/admin_book.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 目录登记</a>
                    </li>
                     <li>
                        <a href="/books/admin_book2.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 入库登记</a>
                    </li>
                    <li>
                        <a href="/books/admin_user.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 读者管理</a>
                    </li>
              
                    <li>
                        <a href="/books/admin_borrow.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 期刊借阅信息</a>
                    </li>
                    <li>
                        <a href="/books/admin_history.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 期刊归还信息</a>
                    </li>
                     <li>
                        <a href="/books/admin_apply.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 申请处理</a>
                    </li>
                                        <li>
                        <a href="/books/admin_subsc.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 期刊征订</a>
                    </li>
                </ul>
                
            </div>

            <!-- content -->
            <div class="col-md-10">
                
                
              <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default bootstrap-admin-no-table-panel">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">查询</div>
                            </div>
                            <div class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
                                <form class="form-horizontal" action="/books/selectCatalogueServlet" method="post">
                                <input type="hidden" name="tip" value="1">
                        			<div class="col-lg-7 form-group">
                                        <label class="col-lg-4 control-label" for="query_bname">期刊名称</label>
                                        <div class="col-lg-8">
                                            <input class="form-control" id="bookName" name="bname" type="text" value="">
                                            <label class="control-label" for="query_bname" style="display: none;"></label>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 form-group">

                                        <button type="submit" class="btn btn-primary" id="btn_query" onclick="">查询</button>
                                    </div>
                                    <div class="col-lg-3 form-group">

                               
                                        <button type="button" class="btn btn-primary" id="btn_add" data-toggle="modal" data-target="#addModal">目录登记</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="row">
                    <div class="col-lg-12">
                        <table id="data_list" class="table table-hover table-bordered" cellspacing="0" width="100%">
                            <thead>
                             <colgroup>
                            <col span="8" style="background: #FFFFFF">
                            <tr>
                                <th>CN号</th>
                                 <th>ISSN</th>
                                <!--  <th>期刊类型</th> -->
                                <th>期刊名称</th>
                        
                              
                                 <th>邮发代号</th> 
                                   <th>出版周期</th>
                                 <th>出版地</th>
                       
                               <!-- <th>总数量</th> --> 
                                <th>主办单位</th> 
                                <th>操作</th>
                                
                            </tr>
                            </thead>
                            
                            
                            <!---在此插入信息-->
                             <%
                             ArrayList<CatalogueBean> bookdata = new ArrayList<CatalogueBean>();
                             bookdata = (ArrayList<CatalogueBean>)request.getAttribute("data");
                           if(bookdata==null){
                        	   BookDao bookdao = new BookDao();
                        	   bookdata = (ArrayList<CatalogueBean>)bookdao.get_CataloguInfo();
                           }
	
  for (CatalogueBean bean : bookdata){
  %>                 
								<tbody>
	                         	   	<td><%= bean.getCN() %></td>
	                         	   	<td><%= bean.getISSN() %></td>
	                                <td><%= bean.getBname() %></td>
	                                <td><%= bean.getPcode() %></td>
	                                <td><%= bean.getPublish() %></td>
	                                <td><%= bean.getPlace() %></td>  
	                                <td><%= bean.getPress() %></td>
<td><!--  <button type="button" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#updateModal" 
id="btn_update" onclick="showInfo(<%= bean.getCN() %>,<%= bean.getISSN() %>,<%= bean.getBname() %>,<%= bean.getPcode() %>
,<%= bean.getPublish() %>,<%= bean.getPlace() %>,<%= bean.getPress() %>)">修改</button> -->
<button type="button" class="btn btn-danger btn-xs" onclick="deletebook(<%= bean.getCid() %>)">删除</button>
	</td>                                            
                          	  </tbody>
                       <%} %> 
                        </table>
                    </div>
                </div>
        </div>
    </div>
    <script type="text/javascript">
    function showInfo(cn,issn,bname,pcode,publish,place,press) {
        document.getElementById("updatcn").value = cn;
        document.getElementById("updateissn").value = issn;
        document.getElementById("updatebname").value = bname;
        document.getElementById("updatepcode").value = pcode;
        document.getElementById("updatepublish").value =publish;
        document.getElementById("updateplace").value = place;
        document.getElementById("updatepress").value = press;
    }
    function deletebook(cid) {
    	con=confirm("是否删除?"); 
    	if(con==true){
    		location.href = "/books/deleteCatalogueServlet?cid="+cid;
    	}
    }
    </script>
    
     
                                     <!-- 修改模态框（Modal） -->
                                     <!-------------------------------------------------------------->  
                                
                                        <!-- 修改模态框（Modal） -->
                               <form class="form-horizontal" method="post" action="/books/updateCatalogueServlet">   <!--保证样式水平不混乱-->   
									<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														&times;
													</button>
													<h4 class="modal-title" id="updateModalLabel">
														修改图书信息
													</h4>
												</div>
												<div class="modal-body">
												
										<!---------------------表单-------------------->
										
										
										 <div class="form-group">
											<label for="firstname" class="col-sm-3 control-label">ISSN</label>
												<div class="col-sm-7">
												<input type="hidden" id="updatecn" name="updatecn">
													<input type="text" class="form-control" id="updateissn" name="issn"  placeholder="请输入ISSN">
												<label class="control-label" for="updateissn" style="display: none;"></label>
												</div>
										</div>
											
										
										 <div class="form-group">
											<label for="firstname" class="col-sm-3 control-label">期刊名称</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updatebname" name="bname"  placeholder="请输入期刊名">
												<label class="control-label" for="updatebname" style="display: none;"></label>
												</div>
										</div>
											

											
										<div class="form-group">	
											<label for="firstname" class="col-sm-3 control-label">邮发代号</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updatepcode" name="pcode" placeholder="请输入邮发代号">
												<label class="control-label" for="updatepcode" style="display: none;"></label>
												</div>
										</div>
										
										
										<div class="form-group">	
											<label for="firstname" class="col-sm-3 control-label">出版周期</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updatepublish" name="publish"  placeholder="请输入出版周期">
												<label class="control-label" for="updatepublish" style="display: none;"></label>
												</div>
										</div>		
										<div class="form-group">	
											<label for="firstname" class="col-sm-3 control-label">出版地</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updateplace" name="place"  placeholder="请输入出版地">
												<label class="control-label" for="updateplace" style="display: none;"></label>
												</div>
										</div>	
										<div class="form-group">	
											<label for="firstname" class="col-sm-3 control-label">主办单位</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updatepress" name="press"  placeholder="请输入主办单位">
												<label class="control-label" for="updatepress" style="display: none;"></label>
												</div>
										</div>	
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
 
    
    
    
    
    
    
     <!--------------------------------------添加的模糊框------------------------>  
                                 <form class="form-horizontal" method="post" action="/books/AddCatalogueServlet">   <!--保证样式水平不混乱-->   
                                        <!-- 模态框（Modal） -->
									<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														&times;
													</button>
													<h4 class="modal-title" id="myModalLabel">
														添加新期刊
													</h4>
												</div>
												<div class="modal-body">
												
										<!---------------------表单-------------------->
										
																				<div class="form-group">
											<label for="firstname" class="col-sm-3 control-label">CN</label>
												<div class="col-sm-7">
												<input type="hidden" id="updateBookId" name="updatebid">
													<input type="text" class="form-control" id="updateISBN" name="cn"  placeholder="请输入CN">
												<label class="control-label" for="updateISBN" style="display: none;"></label>
												</div>
										</div>
										
										<div class="form-group">
											<label for="firstname" class="col-sm-3 control-label">ISSN</label>
												<div class="col-sm-7">
												<input type="hidden" id="updateBookId" name="updatebid">
													<input type="text" class="form-control" id="updateISBN" name="issn"  placeholder="请输入ISSN">
												<label class="control-label" for="updateISBN" style="display: none;"></label>
												</div>
										</div>
										
										 <div class="form-group">
											<label for="firstname" class="col-sm-3 control-label">期刊名称</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updateBookName" name="bname"  placeholder="请输入期刊名">
												<label class="control-label" for="updateBookName" style="display: none;"></label>
												</div>
										</div>
											

											
										<div class="form-group">	
											<label for="firstname" class="col-sm-3 control-label">邮发代号</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updateAutho" name="pcode" placeholder="请输入邮发代号">
												<label class="control-label" for="updateAutho" style="display: none;"></label>
												</div>
										</div>
										
										
										<div class="form-group">	
											<label for="firstname" class="col-sm-3 control-label">出版周期</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updatePress" name="publish"  placeholder="请输入出版周期">
												<label class="control-label" for="updatePress" style="display: none;"></label>
												</div>
										</div>		
										<div class="form-group">	
											<label for="firstname" class="col-sm-3 control-label">出版地</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updateNum" name="place"  placeholder="请输入出版地">
												<label class="control-label" for="updatePress" style="display: none;"></label>
												</div>
										</div>	
										<div class="form-group">	
											<label for="firstname" class="col-sm-3 control-label">主办单位</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="updateNum" name="press"  placeholder="请输入主办单位">
												<label class="control-label" for="updatePress" style="display: none;"></label>
												</div>
										</div>	
										
										
										
										<!---------------------表单-------------------->
									</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default" data-dismiss="modal">关闭
													</button>
													<button type="submit" class="btn btn-primary" >
														添加
													</button>
												</div>
											</div><!-- /.modal-content -->
										</div><!-- /.modal -->
									</div>

                                 </form>	
 								<!--------------------------------------添加的模糊框------------------------>  
 
 
    
    
    
    

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
								<input type="hidden" name="url" value="admin_book">
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
								<input type="hidden" name="url" value="admin_book">
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