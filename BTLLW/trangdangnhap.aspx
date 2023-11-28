﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangdangnhap.aspx.cs" Inherits="BTLLW.trangdangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Trang Đăng nhập</title>
    <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="recourcess/styles.css">
    <link rel="stylesheet" href="recourcess/stylesDN.css">
    <script src="recourcess/check.js"></script>
  
</head>
<body>
    <form id="form1" runat="server"  method="POST" action="trangdangnhap.aspx" onsubmit="return check()">
         <header>
        <div class="headerdiv">
            <a href="./trangchu.aspx" class="amenu"><img src="anh/logo2.png" alt="logo" id="logo"></a>
            <div class="divtimkiem">
                <input type="text" id="search">
                <button type="button" id="btnsearch"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>
            <div class="menuphu">
                <ul>
                    <li id="menuDN"><i class="fa-solid fa-right-to-bracket"></i><a href="#">Đăng Nhập</a></li>
                    <li id="menuDK"><i class="fa-solid fa-user"></i><a href="trangdangky.aspx">Đăng Ký</a></li>
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
        <div class="dangnhap">
            <h2 class="h2dn">Đăng nhập</h2>
            <a href="./trangchu.aspx"><img src="anh/logo2.png" alt="anh lo go"></a>
            <div class="formDN">
                <div class="txtTen">
                <input type="text" placeholder="Nhập tên" id="txtTenKH" name="txtTenKH" required="required">
                <hr>
                <p id="errmes1" runat="server"></p>
            </div>
            <div class="txtPass">
                <input type="password" placeholder="Nhập password" id="txtPassword" name="txtPassword" required="required">
                <hr>
                <p id="errpass" runat="server"></p>
            </div>
                <div class="btn">
                    <button type="submit" id="btnDN" >Đăng nhập</button>
                </div>
                <div class="lk">
                <p id="pDK">Chưa có tài khoản? <a href="#">Đăng ký ngay</a></p>
            </div>
            </div>
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
    </footer>
    </form>
</body>
</html>
