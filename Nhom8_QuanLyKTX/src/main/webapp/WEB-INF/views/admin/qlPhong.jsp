<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html>
<html>
  <head>
  	<base href="${pageContext.servletContext.contextPath}/">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Quản lý phòng</title>
    <link rel="icon" href="assets/img/ptiticon.png" type="image/x-icon">
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
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
  </head>

<body id="reportsPage">
    <div class="" id="home">
        <%@ include file="include/menu.jsp" %>
    
    
    <div class="container mt-5">
    
      <div class="row tm-content-row">
      
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">          	

          <h2 class="tm-block-title">Các phòng đang hoạt động</h2>
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                  <tr>
                    <th scope="col">Ảnh</th>
                    <th scope="col">Tên phòng</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Số lượng</th>
                    <!-- <th scope="col">&nbsp;</th> -->
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Sửa</th>
                    
                    <th scope="col">Xóa</th>
                  </tr>
                </thead>
                <tbody>
          
                  <tr>
                 
                    <!-- <th scope="row"><input type="checkbox" /></th> -->
                    <td><a href="admin/product/edit/${sanPham.maSP}.htm">
                    	<img class="card-img-top"
							src="https://ktx.vnuhcm.edu.vn/thumb/500x500/1/phongo/phong6.jpg" alt="Ảnh đại diện phòng"
							id="product-image" 
							style="height:40px; width:50px;"/>
						</a>
					</td>
                    <td class="tm-product-name">I05</td>
                    <td> <span style="color: #eff309e8;"><fmt:formatNumber
						value="720000" pattern="#,##0" />đ</span></td>
                    
                    <td>3</td>
                    
                    <%-- <td>
                    	<f:form>
                      		<button class="btn-primary" title="Chuyển sang ngừng bán" name="changeStatus" data-trang-thai="true" data-ma-sp="${sanPham.maSP}">Đang bán</button>
                      </f:form>
                    </td> --%>
                    
                    <td>
						<f:form method="post">
						  <%-- <input type="hidden" name="maSPSuaTT" value="${sanPham.maSP}">
						  <input type="hidden" name="trangThaiSp" value="${sanPham.trangThai}"> --%>
						  <button class="btn-info" title="Chuyển sang ngừng bán" type="submit"
						  name="changeStatus">Hoạt động</button>
						</f:form>					
                    </td>                                       
                    
                    <td>
                      <a href="admin/product/edit/${phong.id}.htm" class="tm-product-delete-link">
                    	 <i class="fas fa-pencil-alt tm-product-edit-icon" title="Sửa phòng này"></i>
                      </a>                      
                      
                    </td>                                      
                    
                    <td>
                      <!-- <a class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a> -->
                      <form method="post">
					    <input type="hidden" name="maPhongXoa" value="" />
					    <button name="deletePhong" class="btn-danger" title="Xóa phòng này" type="submit" onclick="return confirm('Bạn có chắc chắn muốn xóa phòng này?')"><i class="far fa-trash-alt tm-product-delete-icon"></i></button>
					 </form>
                    </td>
                    
                  </tr>
                  
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <a
              href="admin/room/addRoom.htm"
              class="btn btn-primary btn-block text-uppercase mb-3">Thêm phòng</a>
          </div>
          
          <c:if test="${not empty errorMessageXoaSP}">
			  <script type="text/javascript">
			    alert("${errorMessageXoaSP}");
			    window.location.href = "${pageContext.request.contextPath}/admin/qlPhong.htm";
			  </script>
		  </c:if>
		
        </div>
        
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">
            <h2 class="tm-block-title">Các loại phòng</h2>
            <div class="tm-product-table-container">
              <table class="table tm-table-small tm-product-table">
              	<thead>
                  <tr>
                    <th scope="col">Tên Loại</th>
                    <!-- <th scope="col">Trạng thái</th> -->
                    <th scope="col">Sửa</th>
                    <th scope="col">Xóa</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="tm-product-name">Thường</td>
                    
                    <td>
                      <a href="admin/brands/editKieu/abc.htm" class="tm-product-delete-link">
                    	 <i class="fas fa-pencil-alt tm-product-edit-icon" title="Sửa kiểu này"></i>
                      </a>
                    </td>
                    
                    <td>
                      <!-- <a class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a> -->
                      <form method="post">
					    <input type="hidden" name="maKieuXoa" value="loai.maLoai" />
					    <button name="deleteKieu" class="btn-danger" title="Xóa loại này" type="submit" 
						    onclick="return confirm('Bạn có chắc chắn muốn xóa loại này?')">
						    <i class="far fa-trash-alt tm-product-delete-icon"></i>
					    </button>
					 </form>		
                    </td>
                          
                  </tr>             
                  
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <!-- <button class="btn btn-primary btn-block text-uppercase mb-3">
              Thêm kiểu khác
            </button> -->
            <a
              href="admin/brands/addKieu.htm"
              class="btn btn-primary btn-block text-uppercase mb-3">Thêm loại</a>
          </div>

		 <c:if test="${not empty errorMessageKieu}">
		  <script type="text/javascript">
		    alert("${errorMessageKieu}");
		    window.location.href = "${pageContext.request.contextPath}/admin/qlLoai.htm";
		  </script>
		</c:if>		 
        </div>
        
      </div>
    </div>
    
    		
    
   <div class="container mt-5">
    <div class="row tm-content-row">
      
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">          	

          <h2 class="tm-block-title">Các phòng tạm ngừng hoạt động</h2>
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                  <tr>
                    <th scope="col">Ảnh</th>
                    <th scope="col">Tên phòng</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Số lượng</th>
                    <!-- <th scope="col">&nbsp;</th> -->
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Sửa</th>
                    
                    <th scope="col">Xóa</th>
                  </tr>
                </thead>
                <tbody>
          
                  <tr>
                 
                    <!-- <th scope="row"><input type="checkbox" /></th> -->
                    <td><a href="admin/product/edit/${sanPham.maSP}.htm">
                    	<img class="card-img-top"
							src="https://pt123.cdn.static123.com/images/thumbs/450x300/fit/2021/04/13/20210305-173308_1618289713.jpg" alt="Ảnh đại diện phòng"
							id="product-image" 
							style="height:40px; width:50px;"/>
						</a>
					</td>
                    <td class="tm-product-name">I03</td>
                    <td> <span style="color: #eff309e8;"><fmt:formatNumber
						value="720000" pattern="#,##0" />đ</span></td>
                    
                    <td>3</td>
                    
                    <%-- <td>
                    	<f:form>
                      		<button class="btn-primary" title="Chuyển sang ngừng bán" name="changeStatus" data-trang-thai="true" data-ma-sp="${sanPham.maSP}">Đang bán</button>
                      </f:form>
                    </td> --%>
                    
                    <td>
						<f:form method="post">
						  <%-- <input type="hidden" name="maSPSuaTT" value="${sanPham.maSP}">
						  <input type="hidden" name="trangThaiSp" value="${sanPham.trangThai}"> --%>
						  <button class="btn-primary" title="Chuyển sang đang hoạt động" type="submit"
						  name="changeStatus">Tạm ngừng</button>
						</f:form>					
                    </td>                                       
                    
                    <td>
                      <a href="admin/product/edit/${phong.id}.htm" class="tm-product-delete-link">
                    	 <i class="fas fa-pencil-alt tm-product-edit-icon" title="Sửa phòng này"></i>
                      </a>                      
                      
                    </td>                                      
                    
                    <td>
                      <!-- <a class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a> -->
                      <form method="post">
					    <input type="hidden" name="maSPXoa" value="" />
					    <button name="deleteSP" class="btn-danger" title="Xóa phòng này" type="submit" onclick="return confirm('Bạn có chắc chắn muốn xóa phòng này?')"><i class="far fa-trash-alt tm-product-delete-icon"></i></button>
					 </form>
                    </td>
                    
                  </tr>
                  
                </tbody>
              </table>
            </div>
            <!-- table container -->
          </div>
          
          <c:if test="${not empty errorMessageXoaSP}">
			  <script type="text/javascript">
			    alert("${errorMessageXoaSP}");
			    window.location.href = "${pageContext.request.contextPath}/admin/qlPhong.htm";
			  </script>
		  </c:if>
		
        </div>
        
        
        
      </div>
      </div>
      <%@ include file="include/footer.jsp" %>
   </div>
    

    <script src="<c:url value='js/jquery-3.3.1.min.js'/>"></script>
    <!-- https://jquery.com/download/ -->
    <script src="<c:url value='js/bootstrap.min.js'/>"></script>
    <!-- https://getbootstrap.com/ -->
    
    <!-- <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "admin/product/edit.htm";
        });
      });
    </script> -->
    <script>
  $(document).ready(function() {
    $('.btn-primary').click(function() {
      var button = $(this);
      var message = button.data('message');
      if (message) {
        if (confirm(message)) {
          button.closest('form').submit();
        }
        return false;
      }
    });
  });
</script>
    
  </body>
</html>

