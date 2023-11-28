<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="BTLLW.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chu</title>
    <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="recourcess/styles.css">
 
</head>
<body>
    <form id="form1" runat="server">
            <header>
        <div class="headerdiv">
            <a href="./trangchu.aspx" class="amenu"><img src="./anh/logo2.png" alt="logo" id="logo"></a>
            <div class="divtimkiem">
                <input type="text" id="search">
                <button id="btnsearch" onclick="timkiem()" type="button"><i class="fa-solid fa-magnifying-glass"></i></button>
                 <div id="search-result"></div>
            </div>
            <div class="menuphu">
                <ul>
                    <li> <div class="usericon">
                        <i class="fa-solid fa-user"></i>
                        <div class="an" runat="server" id="userinfo">
                            <p><a href="trangdangnhap.aspx" id="btndn" class="btn1">Đăng nhập </a></p>
                            <p><a href="trangdangky.aspx" id="btndk" class="btn1">Đăng ký</a></p>
                        </div>
                         </div></li>
                    <li><i class="fa-solid fa-cart-shopping"></i><a href="./tranggiohang.aspx">Giỏ hàng</a></li>
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
        <div class="banner">       
        <img src="./anh/banner.png" alt="banner" id="bannerimg">
            <button type="button" onclick="pre()"><i class="fa-regular fa-circle-left" style="color: #bcbcc7;"></i></button>
            <button  type="button" onclick="next()"><i class="fa-regular fa-circle-right" style="color: #bcbcc7;"></i></button>
        </div>
        <section>
           <div class="listsp">
            <h2>Điện thoại</h2>
            <div class="sp">
                <asp:ListView id="Dienthoai" runat="server">
                    <ItemTemplate>
                <div class="ctsp">
                <div class="anhsp">
                    <a href="trangconchitiet.aspx?id=<%# Eval("Id") %>">
                        <img src="<%# Eval("Image") %>" alt="">
                    </a>
                </div>
                    <h3><%# Eval("Name") %></h3>
                    <strong><%# Eval("Price") %></strong>
                </div>
                 </ItemTemplate>
                </asp:ListView>
            </div>
           </div> 
        </section>
        
         <section>
           <div class="listsp">
            <h2>Tủ lạnh</h2>
            <div class="sp">
                <asp:ListView id="Tulanh" runat="server">
                    <ItemTemplate>
                <div class="ctsp">
                <div class="anhsp">
                    <a href="trangconchitiet.aspx?id=<%# Eval("Id") %>">
                        <img src="<%# Eval("Image") %>" alt="">

                    </a>
                </div>
                    <h3><%# Eval("Name") %></h3>
                    <strong><%# Eval("Price") %></strong>
                </div>
                 </ItemTemplate>
                </asp:ListView>
            </div>
           </div> 
        </section>

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
    </footer>
       <script src="recourcess/search.js"></script>
        <script src="recourcess/slideshow.js"></script>
    </form>
</body>
</html>
