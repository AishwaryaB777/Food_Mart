<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProductUsers.aspx.cs" Inherits="Template_ecom.ViewProductUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Products - FoodMart</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;500;600;700;800;900&display=swap" rel="stylesheet" />

    <style type="text/css">

        /* =========================
           BASIC
           ========================= */

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            padding: 0;
            background: #fffdf3;
            font-family: 'Nunito', sans-serif;
            color: #292929;
        }


        /* =========================
           NAVBAR
           ========================= */

        .navbar {
            width: 100%;
            background: #ffffff;
            border-bottom: 1px solid #eeeeee;
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.05);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar-container {
            max-width: 1200px;
            margin: auto;
            padding: 16px 25px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 25px;
        }

        .foodmart-logo {
            text-decoration: none;
            font-size: 30px;
            font-weight: 900;
            color: #292929;
            letter-spacing: -1px;
        }

        .foodmart-logo span {
            color: #ffb800;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .nav-links a {
            text-decoration: none;
            color: #333333;
            font-size: 15px;
            font-weight: 700;
            transition: 0.2s ease;
        }

        .nav-links a:hover {
            color: #ffb800;
        }

        .shop-btn {
            background: #ffd21f;
            color: #222222 !important;
            padding: 10px 18px;
            border-radius: 25px;
            font-weight: 800 !important;
        }

        .shop-btn:hover {
            background: #ffb800;
            color: #ffffff !important;
        }

        .product-link {
            color: #ffb800 !important;
        }


        /* =========================
           MOBILE NAV
           ========================= */

        .mobile-nav {
            display: none;
        }

        .mobile-nav a {
            text-decoration: none;
            color: #333333;
            font-size: 14px;
            font-weight: 800;
        }

        .mobile-product {
            color: #ffb800 !important;
        }


        /* =========================
           PAGE
           ========================= */

        .page-container {
            max-width: 1200px;
            margin: auto;
            padding: 45px 25px 70px;
        }

        .page-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .page-heading h1 {
            margin: 0 0 8px;
            font-size: 36px;
            font-weight: 900;
            color: #222222;
        }

        .page-heading p {
            margin: 0;
            color: #777777;
            font-size: 16px;
        }


        /* =========================
           PRODUCT GRID
           ========================= */

        .product-list {
            width: 100%;
        }

        .product-list table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
        }

        .product-list td {
            padding: 12px;
            vertical-align: top;
        }


        /* =========================
           PRODUCT CARD
           ========================= */

        .product-card {
            background: #ffffff;
            border: 1px solid #eeeeee;
            border-radius: 20px;
            padding: 18px;
            height: 100%;
            min-height: 400px;
            box-shadow: 0 7px 25px rgba(0, 0, 0, 0.06);
            transition: 0.25s ease;
            text-align: left;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.10);
        }


        /* =========================
           PRODUCT IMAGE
           ========================= */

        .product-image-box {
            width: 100%;
            height: 230px;
            background: #fff8d6;
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            margin-bottom: 18px;
        }

        .product-image {
            width: 100% !important;
            height: 100% !important;
            object-fit: contain;
            padding: 15px;
            border-radius: 15px;
            cursor: pointer;
            transition: 0.25s ease;
        }

        .product-card:hover .product-image {
            transform: scale(1.04);
        }


        /* =========================
           PRODUCT DETAILS
           ========================= */

        .product-name {
            display: block;
            font-size: 19px;
            font-weight: 800;
            color: #222222;
            margin-bottom: 8px;
            line-height: 1.3;
        }

        .product-description {
            display: block;
            color: #777777;
            font-size: 14px;
            line-height: 1.6;
            min-height: 45px;
            margin-bottom: 12px;
        }

        .product-price {
            display: block;
            color: #e29b00;
            font-size: 21px;
            font-weight: 900;
            margin-top: 10px;
        }

        .product-price::before {
            content: "₹";
            font-size: 17px;
            margin-right: 2px;
        }


        /* =========================
           RESPONSIVE
           ========================= */

        @media (max-width: 850px) {

            .nav-links {
                display: none;
            }

            .mobile-nav {
                display: flex;
                align-items: center;
                gap: 15px;
            }

            .page-container {
                padding: 35px 15px 50px;
            }

            .page-heading h1 {
                font-size: 30px;
            }

            .product-card {
                min-height: 380px;
            }

            .product-image-box {
                height: 210px;
            }
        }


        @media (max-width: 600px) {

            .navbar-container {
                padding: 14px 16px;
            }

            .foodmart-logo {
                font-size: 25px;
            }

            .page-heading {
                margin-bottom: 25px;
            }

            .page-heading h1 {
                font-size: 28px;
            }

            .page-heading p {
                font-size: 14px;
            }

            .product-list td {
                padding: 8px;
            }

            .product-card {
                padding: 14px;
                min-height: 350px;
            }

            .product-image-box {
                height: 180px;
            }

            .product-name {
                font-size: 17px;
            }

            .product-description {
                font-size: 13px;
            }

            .product-price {
                font-size: 19px;
            }
        }


        @media (max-width: 450px) {

            .product-list td {
                display: block;
                width: 100% !important;
            }

            .product-card {
                min-height: auto;
            }

            .product-image-box {
                height: 220px;
            }
        }

    </style>

</head>


<body>

    <form id="form1" runat="server">

        <!-- =========================
             NAVBAR
             ========================= -->

        <nav class="navbar">

            <div class="navbar-container">

                <a href="UserHome.aspx" class="foodmart-logo">
                    Food<span>Mart</span>
                </a>


                <div class="nav-links">

                    <a href="UserHome.aspx">
                        Home
                    </a>

                    <a href="UserHome.aspx" class="product-link">
                        Products
                    </a>

                    <a href="AccountInsertion.aspx">
                        My Account
                    </a>

                    <a href="ViewBill.aspx">
                        My Orders
                    </a>

                    <a href="ViewCart1.aspx">
                        Cart
                    </a>

                    <a href="UserHome.aspx" class="shop-btn">
                        Shop Now
                    </a>

                </div>


                <div class="mobile-nav">

                    <a href="UserHome.aspx">
                        Home
                    </a>

                    <a href="UserHome.aspx" class="mobile-product">
                        Products
                    </a>

                    <a href="ViewCart1.aspx">
                        Cart
                    </a>

                </div>

            </div>

        </nav>


        <!-- =========================
             PRODUCTS
             ========================= -->

        <main class="page-container">


            <div class="page-heading">

                <h1>Our Products</h1>

                <p>
                    Fresh groceries and everyday essentials, all in one place.
                </p>

            </div>


            <div class="product-list">

                <asp:DataList
                    ID="ProductData"
                    runat="server"
                    RepeatColumns="2"
                    RepeatDirection="Horizontal">

                    <ItemTemplate>

                        <div class="product-card">


                            <!-- PRODUCT IMAGE -->

                            <div class="product-image-box">

                                <asp:ImageButton
                                    ID="ImageButton1"
                                    runat="server"
                                    CommandArgument='<%# Eval("Products_id") %>'
                                    ImageUrl='<%# Eval("Products_Photo") %>'
                                    OnCommand="ImageButton1_Command"
                                    CssClass="product-image" />

                            </div>


                            <!-- PRODUCT NAME -->

                            <asp:Label
                                ID="Label4"
                                runat="server"
                                Text='<%# Eval("Products_Title") %>'
                                CssClass="product-name">
                            </asp:Label>


                            <!-- DESCRIPTION -->

                            <asp:Label
                                ID="Label9"
                                runat="server"
                                Text='<%# Eval("Products_Description") %>'
                                CssClass="product-description">
                            </asp:Label>


                            <!-- PRICE -->

                            <asp:Label
                                ID="Label11"
                                runat="server"
                                Text='<%# Eval("Products_Price") %>'
                                CssClass="product-price">
                            </asp:Label>


                        </div>

                    </ItemTemplate>

                </asp:DataList>

            </div>


        </main>

    </form>

</body>

</html>