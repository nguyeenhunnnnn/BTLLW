<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranggiohang.aspx.cs" Inherits="BTLLW.tranggiohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Trang Giỏ hàng </title>
    <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="recourcess/styles.css">
    <link rel="stylesheet" href="recourcess/stylesGH.css">
</head>
<body>
    <form id="form1" runat="server">
          <header>
        <div class="headerdiv">
            <a href="./trangchu.aspx" class="amenu"><img src="./anh/logo2.png" alt="logo" id="logo"></a>
            <div class="divtimkiem">
                <input type="text" id="search">
                <button type="button" id="btnsearch"><i class="fa-solid fa-magnifying-glass"></i></button>
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
                    <li><i class="fa-solid fa-cart-shopping"></i><a href="#">Giỏ hàng</a></li>
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
            <main >
        <div class="giohangkhung">
        <h3 class="tieudegh">Giỏ hàng của bạn </h3>
        <hr>
        <div class="gh">
            <asp:ListView ID="cartList" runat="server">
                <ItemTemplate>
            <div class="ctgh">
            <img src="<%#Eval("Image") %>" alt="">
            <div class="thongtintrai">
                <a href="#"> <%#Eval("Name") %> | Chính hãng VN/A </a>
                <p id="giasp"><%#Eval("Price") %>đ</p>
            </div>
            <div class="thongtinphai">
                <a href="xoamathang.aspx?id=<%#Eval("Id") %>"><i class="fa-solid fa-trash-can"></i></a>
                <br>
                <div class="sl">
                    <a href="giamsl.aspx?id=<%#Eval("Id") %>" class="quantity-width"><div class="btngiam">-</div></a>
                    <div class="slsp"><%# Eval("Quantity") %></div>
                     <a href="tangsl.aspx?id=<%#Eval("Id") %>" class="quantity-width"><div class="btntang">+</div></a>
                </div>
            </div>
        </div>
            <hr>
            <p class="pbv"><i class="fa-solid fa-shield"></i>Bảo vệ toàn diện với bảo hành mở rộng</p>
                    </ItemTemplate>
            </asp:ListView>
        </div>

        <div class="tong">
            <div class="tongtt">
            <p class="ptt"> <table>Tổng thanh toán: </table></p>
            <span  id="TotalPrices" runat="server">0đ</span>
        </div>
        <button type="button">Mua ngay</button>
        </div>
    </div>
    </main>
    </form>
</body>
</html>
