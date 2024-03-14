<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<nav class="navbar navbar-expand-xl">
            <div class="container h-100">
            	
            	<h1 class="tm-site-title mb-0">PTITHCM</h1>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                    	<li class="nav-item">
                            <a class="nav-link" href="admin/thongKe.htm">
                                <i class="fa fa-chart-bar"></i>
                                Thống kê
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin/contract.htm">
                                <i class="fas fa-file-contract"></i>
                                Hợp đồng
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="admin/room.htm">
                                <i class="fas fa-home"></i>
                                Phòng ở
                            </a>
                        </li>
                        
                        <!-- <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fas fa-file-alt"></i>
                                Khuyến mãi
                            </a>
                        </li> -->
                        
						
                         <li class="nav-item ">
                            <a class="nav-link" href="admin/account.htm">
                               <i class="fas fa-users"></i>
                               Tài khoản
                            </a>
                        </li>
                        
                        <%-- <c:if test="${USER.getQuyen()==2}">
	                        <li class="nav-item">
	                            <a class="nav-link" href="admin/adminAccount.htm">
	                               <i class="fas fa-user-secret"></i>
	                               Nhân viên
	                            </a>
	                        </li>
                        </c:if> --%>
                    </ul>
                    
                    <ul class="navbar-nav h-100">
                    	
                    	  <li class="nav-item">
                    	<a class="nav-link" href="admin/account/myAccount.htm">
                    	  <i class="fas fa-user"></i>
                    		<b>Thông tin cá nhân</b>
                    	</a>                                      	
                      </li>
                        
                         <li class="nav-item">
                    	<a class="nav-link" href="admin/account/changePass.htm">
                    	  <i class="fas fa-lock"></i>
                    		<b>Đổi mật khẩu</b>
                    	</a> <br>
                                         	
                        </li>
                             
                             
                        <li class="nav-item">
                            <a class="nav-link" href="index.htm">
                             <i class="fas fa-sign-out-alt"></i>
                                 <b>Đăng xuất</b>
                            </a>
                        </li>                        
                    </ul>
                </div>
            </div>
        </nav>
        
<script>
  var path = window.location.pathname;
  var page = path.split("/").pop();
  var links = document.querySelectorAll(".nav-link");

  for (var i = 0; i < links.length; i++) {
    if (links[i].getAttribute("href").indexOf(page) !== -1) {
      links[i].classList.add("active");
    }
  }
</script>
        