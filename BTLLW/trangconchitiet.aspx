<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangconchitiet.aspx.cs" Inherits="BTLLW.trangconchitiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Trang CTSP</title>
    <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="recourcess/styles.css">
    <link rel="stylesheet" href="recourcess/stylesCTSP.css">
    <script src="recourcess/slideshow.js"></script>

</head>
<body>
    <form id="form1" runat="server">
          <header>
        <div class="headerdiv">
            <a href="./trangchu.aspx" class="amenu"><img src="./anh/logo2.png" alt="logo" id="logo"></a>
            <div class="divtimkiem">
                <input type="text" id="search">
                <button id="btnsearch"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>
            <div class="menuphu">
                <ul>
                    <li> <div class="usericon">
                        <i class="fa-solid fa-user"></i>
                        <div class="an">
                            <p><a href="trangdangnhap.aspx" id="btndn" class="btn1">Đăng nhập </a></p>
                            <p><a href="trangdangky.aspx" id="btndk" class="btn1">Đăng ký</a></p>
                        </div>
                         </div></li>
                    <li><i class="fa-solid fa-cart-shopping"></i><a href="tranggiohang.aspx">Giỏ hàng</a></li>
                    <li><i class="fa-solid fa-phone"></i><a href="#">Hỗ trợ</a></li>
                </ul>
            </div>
        </div>
        <div class="navchinh">
            <div class="menuchinh">
                <ul>
                <li><a href="./trangDSSP.aspx">Điện thoại</a></li>
                    <li><a href="#">Tủ lạnh</a></li>
                    <li><a href="#">Máy giặt</a></li>
                    <li><a href="#">Tivi</a></li>
                    <li><a href="#">Gia dụng</a></li>
                    <li><a href="#">Lọc nước</a></li>     
                    <li><a href="#">Máy lạnh</a></li>
                    <li><a href="#">Nồi cơm</a></li>
                  
                </ul>
            </div>
        </div>
    </header>
    <main>
        <div class="TCTSP">
            <asp:ListView runat="server" ID="productData">
                <ItemTemplate>
            <h3 class="tensp"><%# Eval("Name") %></h3>
            <div class="p-id" style="display: none">ID:<div id="pId"><%# Eval("Id") %></div></div>
            <hr>
            <div class="spmain">
                <div class="imgct">
                 <img src="./anh/ctsp1.jpg" alt="" id="imgCTSP">
                 <button type="button" onclick="preCTSP()"><i class="fa-regular fa-circle-left CTSPiconleft" style="color: #bcbcc7;"></i></button>
                <button type="button" onclick="nextCTSP()"><i class="fa-regular fa-circle-right CTSPiconright" style="color: #bcbcc7;"></i></button>
                </div>
                <div class="thongtin">
                    <p class="pthongtin">Thông tin sản phẩm</p>
                    <div class="ctthongtin">
                        <ul>
                            <li><p class="pctthongtin"><i class="fa-solid fa-mobile-screen-button"></i></p><span class="spantt">Máy mới 100% , chính hãng Apple Việt Nam.VN hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</span></li>
                            <li><p class="pctthongtin"><i class="fa-solid fa-box-open"></i></p><span class="spantt"><%# Eval("Name") %>, Cáp Type C - Type C, Tài liệu hướng dẫn </span></li>
                            <li><p class="pctthongtin"><i class="fa-solid fa-shield"></i></p><span class="spantt">1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple</span></li>
                            <li><p class="pctthongtin"><i class="fa-solid fa-circle-info"></i></p><span class="spantt"><%# Eval("Name") %> mới là một sự kết hợp hoàn hảo giữa thiết kế đẳng cấp và hiệu năng vượt trội. Với dung lượng lưu trữ lớn đến 1TB, người dùng có đủ không gian cho hàng ngàn hình ảnh, video và ứng dụng yêu thích.</span></li>
                        </ul>
                    </div>
                    <div class="gia">
                        <p class="giasp"><span><%# Eval("Price") %></span></p>
                    </div>
                    <div class="mua">
                        <div class="mua1"><a href="javascript:redirectToCart('go')" class="muangay" >Mua ngay</a></div>
                        <div class="gh1">
                        <a href="javascript:redirectToCart('back')" class="cart"><i class="fa-solid fa-cart-plus"></i></a></div>
                    </div>
                </div>
               
            </div>
            <hr style="margin: 20px;">
            <div class="ddnb">
               <div class="baiviet">
                   <div class="fisrtbv">
                   <h2>Đặc điểm nổi bật</h2>
                   <ul>
                       <li>Thiết kế khung viền từ titan chuẩn hàng không vũ trụ - Cực nhẹ, bền cùng viền cạnh mỏng cầm nắm thoải mái</li>
                       <li>Hiệu năng Pro chiến game thả ga - Chip A17 Pro mang lại hiệu năng đồ họa vô cùng sống động và chân thực</li>
                       <li>Thoả sức sáng tạo và quay phim chuyên nghiệp - Cụm 3 camera sau đến 48MP và nhiều chế độ tiên tiến</li>
                       <li>Nút tác vụ mới giúp nhanh chóng kích hoạt tính năng yêu thích của bạn</li>
                   </ul>
                   </div>  
                   <div class="seconbv">
                       <p>Điện thoại <b><%# Eval("Name") %> </b> mới là một sự kết hợp hoàn hảo giữa thiết kế đẳng cấp và hiệu năng vượt trội. Với dung lượng lưu trữ lớn đến 1TB, người dùng có đủ không gian cho hàng ngàn hình ảnh, video và ứng dụng yêu thích. Điểm đáng chú ý là sự tích hợp của chip A17 Pro tiên tiến giúp <b style="color: rgb(184, 10, 10);"> chiếc điện thoại iPhone 15 </b> phiên bản cao cấp nhất này hoạt động mượt mà và xử lý nhanh chóng mọi tác vụ.</p>
                       <h2><%# Eval("Name") %>- Hiệu năng vượt trội, chụp zoom 5x</h2>
                       <p><%# Eval("Name") %> sở hữu nhiều nâng cấp lớn trong cấu hình và thiết kế để trở thành một trong những lựa chọn smartphone tuyệt vời nhất thời điểm hiện tại. Nhờsở hữu cấu hình ấn tượng, mẫu điện thoại cao cấp nhất của Apple sẽ mang tới khả năng chụp hình xuất sắc cùng trải nghiệm giải trí, làm việc hoàn hảo cho người dùng.</p>
                       <h2>Hiệu năng bứt phá với con chip A17 Pro</h2>
                       <p>Nhờ chủ động trong việc sản xuất chip mà các mẫu iPhone luôn sở hữu một hiệu năng vượt trội. Và iPhone 15 Pro Max 1TB cũng không phải là một ngoại lệ. Bởi mẫu điện thoại cao cấp nhất này sẽ được Apple trang bị thế hệ chip A17 Pro mới nhất để có được một hiệu năng mượt mà và đáng tin cậy.</p>
                       <h2>Camera 48MP, chỗ trợ chụp zoom tới 5x</h2>
                       <p><%# Eval("Name") %> sở hữu cụm camera chất lượng để mang tới trải nghiệm quay chụp vượt trội và hoàn toàn mới cho người dùng. Camera chính sử dụng cảm biến 48MP có khả năng tái tạo các chi tiết một cách tinh tế, sống động. Đi kèm là khả năng xử lý hình ảnh nâng cao giúp điện thoại có thể thực hiện các bức hình trong môi trường thiếu sáng tốt hơn.</p>
                       <h2>Màn hình kích thước lớn cung cấp khả năng hiển thị chất lượng</h2>
                       <p><%# Eval("Name") %> được trang bị màn hình OLED Super Retina XDR đẳng cấp. Với kích thước 6,7 inch, người dùng sẽ có thể thoải mái hòa mình vào không gian giải trí đỉnh cao. Công nghệ ProMotion sẽ cho phép màn hình iPhone 15 Pro Max điều chỉnh tốc độ làm mới linh hoạt từ 1Hz tới 120Hz để mọi chuyển động được tái hiện với tiết tấu chân thực, mượt mà..</p>
                   </div>
               </div>
              
               <div class="thongso">
               <p class="pthongso">Thông số điện thoại</p>
               <div class="ctthongso">
                   <ul>
                       <li class="db"><p class="pctthongso">Màn hình:</p><span class="spants">OLED6.7"Super Retina XDR </span></li>
                       <li><p class="pctthongso">Hệ điều hành:</p><span class="spants">iOS 17 </span></li>
                       <li class="db"><p class="pctthongso">Camera sau:</p><span class="spants">Chính 48 MP & Phụ 12 MP, 12 MP</span></li>
                       <li><p class="pctthongso">Camera trước:</p><span class="spants">12 MP</span></li>
                       <li class="db"><p class="pctthongso">Chip:</p><span class="spants">Apple A17 Pro 6 nhân </span></li>
                       <li><p class="pctthongso">RAM:</p><span class="spants">8 GB</span></li>
                       <li class="db"><p class="pctthongso">Dung lượng lưu trữ:</p><span class="spants">256 GB</span></li>
                       <li><p class="pctthongso">SIM:</p><span class="spants">1 Nano SIM & 1 eSIMHỗ trợ 5G</span></li>
                       <li class="db"><p class="pctthongso">Pin, Sạc:</p><span class="spants">4422 mAh20 W </span></li>
                   </ul>
                </div>
               </div>
           </div>
        </div>
                    </ItemTemplate>
            </asp:ListView>
           
        </div>
    </main>
    <footer>
        <div class="footerfarm">
            <div class="textf">
                <ul>
                    <li>Tích điểm quà tặng VIP </li>
                    <li>DV vệ sinh máy lạnh</li>
                    <li>Lịch sử mua hàng</li>
                    <li>Tìm hiểu về mua trả góp</li>
                    <li>Xem thêm</li>
                </ul>
            </div>
            <div class="textf">
                <ul>
                    <li>Giới thiệu công ty</li>
                    <li>Tuyển dụng</li>
                    <li>Gửi góp ý, ý kiến</li>
                    <li>Tìm siêu thị</li>
                    <li>Xem thêm</li>
                </ul>
            </div>
            <div class="textf">
                <h4>Tổng đài hỗ trợ (Miễn phí gọi) </h4>
                <ul class="lienhe">
                    <li>Khiếu nại: <span>1800.1600</span> (8:00 - 21:30) </li>
                    <li>Bảo hành: <span>1800.1601</span> (8:00 - 21:30) </li>
                </ul>
            </div>
        </div>
            <script src="recourcess/link.js"></script>
    </footer>
    </form>
</body>
</html>
