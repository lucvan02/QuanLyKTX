<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.servletContext.contextPath}/">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Quản lý hợp đồng</title>
    <link rel="icon" href="assets/img/ptiticon.png" type="image/x-icon">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href='<c:url value="/assets/css/admin/css/fontawesome.min.css"/>' />   
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href='<c:url value="/assets/css/admin/css/bootstrap.min.css"/>' />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href='<c:url value="/assets/css/admin/css/templatemo-style.css"/>' />
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
	<style>
    .fas.fa-eye:hover {
        transform: scale(1.2);
    }
</style>
</head>

<body id="reportsPage">
    <div class="" id="home">
        <%@ include file="include/menu.jsp" %> 
        <%-- <%@ include file="include/footer.jsp" %> --%>
        
        <div class="container">                       
            
            <div class="row tm-content-row">              
                
                <div class="col-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                        <h4 class="text-success"><i class="fas fa-check-circle"></i> Hợp đồng còn hạn</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Mã HĐ</th>
                                    <!-- <th scope="col">Trạng thái</th> -->
                                    <th scope="col">Sinh viên</th>
                                    <!-- <th scope="col">Địa chỉ</th> -->
                                    <th scope="col">Ngày lập</th>
                                    <th scope="col">Tổng tiền</th>
                                    <th scope="col">Xem chi tiết</th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            	<tr>                                
                                    <th scope="row"><b>#1</b></th>
                                    <td><b>Nguyễn Văn An</b></td>
                                    <td><b>10-03-2024</b></td>
                                    <td> <span style="color: #eff309e8;"><fmt:formatNumber
										value="360000" pattern="#,##0" />đ</span>
									</td>
                                    <td>
                                    	<a href="chiTietHopDong/abc.htm">
				                    	 <i class="fas fa-eye" title="Xem chi tiết hợp đồng"  style="color: green; font-size: 25px; transition: transform 0.3s;"></i>
				                      </a>   
                                    </td>
                                </tr>                        

                            </tbody>
                        </table>
                    </div>
                </div>
                
                <div class="col-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                        <h4 class="text-danger"><i class="fas fa-times-circle"></i>  Hợp đồng đã hết hạn</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Mã HĐ</th>
                                    <!-- <th scope="col">Trạng thái</th> -->
                                    <th scope="col">Sinh viên</th>
                                    <!-- <th scope="col">Địa chỉ</th> -->
                                    <th scope="col">Ngày lập</th>
                                    <th scope="col">Tổng tiền</th>
                                    <th scope="col">Xem chi tiết</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<tr>                                
                                    <th scope="row"><b>#2</b></th>
                                    <td><b>Trần Văn B</b></td>
                                    <td><b>10-03-2024</b></td>
                                    <td> <span style="color: #eff309e8;"><fmt:formatNumber
										value="720000" pattern="#,##0" />đ</span>
									</td>
                                    <td>
                                    	<a href="chiTietHopDong/abc.htm">
				                    	 <i class="fas fa-eye" title="Xem chi tiết hợp đồng"  style="color: red; font-size: 25px; transition: transform 0.3s;"></i>
				                      </a>   
                                    </td>
                                </tr>                                                       

                            </tbody>
                        </table>
                    </div>
                </div>
                
            </div>
            
        </div>
        
        <%@ include file="include/footer.jsp" %>
    </div>


    <script src="<c:url value='js/jquery-3.3.1.min.js'/>"></script>
    <!-- https://jquery.com/download/ -->
    <script src="<c:url value='js/moment.min.js'/>"></script>
    <!-- https://momentjs.com/ -->
    <script src="<c:url value='js/Chart.min.js'/>"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="<c:url value='js/bootstrap.min.js'/>"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="<c:url value='js/tooplate-scripts.js'/>"></script>

</body>
</html>

