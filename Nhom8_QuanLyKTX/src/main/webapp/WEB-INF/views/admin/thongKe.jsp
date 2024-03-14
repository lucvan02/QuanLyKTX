<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.servletContext.contextPath}/">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thống kê</title>
    <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">
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
		.chart-container {
		    background-color: #f1f1f1; /* Màu nền sáng hơn */
		}
	</style>
	
</head>

<body id="reportsPage">
    <div class="" id="home">
        <%@ include file="include/menu.jsp" %> 
        
        <div class="container">
        	<%-- <div class="row">
                <div class="col">
                    <p class="text-white mt-3 mb-5">Chào mừng quay lại, <b>${USER.hoTen}</b></p>
                </div>
            </div> --%>
        <h2 class="tm-block-title mt-3">Thống kê doanh thu</h2>
        <h5 class="text-warning">Tổng doanh thu : <fmt:formatNumber value="${tongDoanhThu}" pattern="#,##0" />đ</h5>
        
        <br>
        <h2 class="tm-block-title">Thống kê sinh viên trong ký túc xá</h2>
        <h5 class="text-warning">Số sinh viên đang ở : <fmt:formatNumber value="${tongSoNguoiDung}" pattern="#,##0" /></h5>
        
                    
            <div class="row tm-content-row">
                <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block">
                        <h2 class="tm-block-title">Thống kê ...</h2>
                        <canvas id="doanhThuChart" class="chart-container""></canvas>
                    </div>
                </div>
                
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block">
                        <h2 class="tm-block-title">Thống kê ...</h2>
                        <canvas id="donHangChart" class="chart-container""></canvas>
                    </div>
                </div>          
                
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block">
                        <h2 class="tm-block-title">Tỉ lệ ...</h2>
                        <canvas id="orderStatusChart" width="400" height="400"></canvas>

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
    <%-- <script src="<c:url value='js/Chart.min.js'/>"></script> --%>
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
    
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="<c:url value='js/bootstrap.min.js'/>"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="<c:url value='js/tooplate-scripts.js'/>"></script>
    
    
</body>
</html>