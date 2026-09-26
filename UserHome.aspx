<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Template_ecom.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta name="format-detection" content="telephone=no" />

    <title>FoodMart</title>


    <!-- ================= BOOTSTRAP ================= -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet" />


    <!-- ================= GOOGLE FONT ================= -->

    <link rel="preconnect" href="https://fonts.googleapis.com" />

    <link rel="preconnect" href="https://fonts.gstatic.com" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />

    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&display=swap"
          rel="stylesheet" />


    <!-- ================= CUSTOM CSS ================= -->

    <style type="text/css">

        * {
            box-sizing: border-box;
        }


        body {
            margin: 0;

            font-family: 'Nunito', Arial, sans-serif;

            background: #fffdf3;

            color: #222;
        }


        a {
            text-decoration: none;
        }


        /* =====================================================
           NAVIGATION BAR
        ===================================================== */

        .navigation {
            background: #ffffff;

            border-bottom: 1px solid #eeeeee;

            box-shadow: 0 2px 12px rgba(0,0,0,0.07);

            position: sticky;

            top: 0;

            z-index: 1000;
        }


        .navigation-container {
            max-width: 1200px;

            margin: auto;

            padding: 0 20px;

            display: flex;

            align-items: center;
        }


        /* =====================================================
           FOODMART LOGO
        ===================================================== */

        .foodmart-logo {
            font-size: 28px;

            font-weight: 800;

            color: #222;

            white-space: nowrap;

            letter-spacing: -0.5px;

            margin-right: 35px;
        }


        .foodmart-logo span {
            color: #FFB800;
        }


        .foodmart-logo:hover {
            color: #222;
        }


        /* =====================================================
           DESKTOP NAVIGATION
        ===================================================== */

        .nav-menu {
            display: flex;

            align-items: center;

            list-style: none;

            padding: 0;

            margin: 0;

            gap: 5px;

            width: 100%;
        }


        .nav-item a {
            display: block;

            padding: 17px 17px;

            color: #555;

            font-size: 13px;

            font-weight: 700;

            border-bottom: 3px solid transparent;

            transition: 0.2s;
        }


        .nav-item a:hover {
            color: #222;

            background: #fffaf0;

            border-bottom-color: #FFD21F;
        }


        .nav-item.active a {
            color: #222;

            background: #fffaf0;

            border-bottom-color: #FFD21F;
        }


        /* =====================================================
           SHOP NOW BUTTON
        ===================================================== */

        .shop-button {
            margin-left: auto;

            background: #FFD21F;

            color: #222 !important;

            padding: 9px 18px !important;

            border-radius: 7px;

            border: none !important;
        }


        .shop-button:hover {
            background: #FFB800 !important;

            border-bottom-color: transparent !important;
        }


        /* =====================================================
           MOBILE MENU BUTTON
        ===================================================== */

        .mobile-menu-button {
            display: none;

            margin-left: auto;

            border: none;

            background: #fff8d6;

            width: 42px;

            height: 42px;

            border-radius: 8px;

            font-size: 21px;

            cursor: pointer;
        }


        .mobile-menu-button:hover {
            background: #FFD21F;
        }


        /* =====================================================
           MOBILE NAVIGATION
        ===================================================== */

        .mobile-navigation {
            display: none;

            background: #ffffff;

            border-top: 1px solid #eeeeee;
        }


        .mobile-nav-link {
            display: block;

            padding: 12px 20px;

            color: #444;

            font-size: 14px;

            font-weight: 700;

            border-bottom: 1px solid #f2f2f2;
        }


        .mobile-nav-link:hover {
            background: #fff8d6;

            color: #222;
        }


        .mobile-shop {
            margin: 12px 20px;

            background: #FFD21F;

            border-radius: 7px;

            text-align: center;
        }


        /* =====================================================
           PAGE CONTENT
        ===================================================== */

        .page-content {
            max-width: 1200px;

            margin: auto;

            padding: 45px 20px 30px;

            min-height: 500px;
        }


        /* =====================================================
           CATEGORY SECTION
        ===================================================== */

        .category-section {
            width: 100%;
        }


        .section-heading {
            text-align: center;

            margin-bottom: 35px;
        }


        .section-heading h2 {
            font-size: 30px;

            font-weight: 800;

            margin-bottom: 8px;

            color: #222;
        }


        .section-heading p {
            margin: 0;

            color: #888;

            font-size: 14px;
        }


        /* =====================================================
           CATEGORY DATALIST
        ===================================================== */

        .category-list {
            width: 100%;
        }


        .category-list table {
            width: 100%;
        }


        .category-list td {
            padding: 10px;
        }


        /* =====================================================
           CATEGORY CARD
        ===================================================== */

        .category-card {
            background: #ffffff;

            border-radius: 16px;

            padding: 20px;

            text-align: center;

            border: 1px solid #eeeeee;

            box-shadow: 0 4px 15px rgba(0,0,0,0.05);

            transition: 0.25s;

            height: 100%;
        }


        .category-card:hover {
            transform: translateY(-5px);

            box-shadow: 0 10px 25px rgba(0,0,0,0.10);
        }


        /* =====================================================
           CATEGORY IMAGE
        ===================================================== */

        .category-image {
            width: 100%;

            height: 190px;

            object-fit: cover;

            border-radius: 12px;

            cursor: pointer;

            transition: 0.25s;
        }


        .category-image:hover {
            transform: scale(1.02);
        }


        /* =====================================================
           CATEGORY NAME
        ===================================================== */

        .category-name {
            display: block;

            font-size: 18px;

            font-weight: 800;

            color: #222;

            margin-top: 16px;

            margin-bottom: 7px;
        }


        /* =====================================================
           CATEGORY DESCRIPTION
        ===================================================== */

        .category-description {
            display: block;

            color: #888;

            font-size: 13px;

            line-height: 1.5;
        }


        /* =====================================================
           FOOTER
        ===================================================== */

        .footer {
            margin-top: 50px;

            background: #222;

            color: #ddd;

            padding: 45px 20px 20px;
        }


        .footer-container {
            max-width: 1200px;

            margin: auto;

            display: grid;

            grid-template-columns: 2fr 1fr;

            gap: 40px;
        }


        .footer-logo {
            font-size: 24px;

            font-weight: 800;

            color: #fff;

            margin-bottom: 10px;
        }


        .footer-logo span {
            color: #FFD21F;
        }


        .footer-description {
            color: #aaa;

            font-size: 13px;

            line-height: 1.7;

            max-width: 350px;
        }


        .footer-title {
            color: #fff;

            font-size: 14px;

            font-weight: 800;

            margin-bottom: 15px;
        }


        .footer-links {
            list-style: none;

            padding: 0;

            margin: 0;
        }


        .footer-links li {
            margin-bottom: 9px;

            font-size: 12px;
        }


        .footer-bottom {
            max-width: 1200px;

            margin: 35px auto 0;

            padding-top: 18px;

            border-top: 1px solid #3b3b3b;

            text-align: center;

            color: #888;

            font-size: 11px;
        }


        /* =====================================================
           MOBILE
        ===================================================== */

        @media screen and (max-width: 850px) {

            .navigation-container {
                padding: 10px 18px;
            }


            .foodmart-logo {
                font-size: 24px;

                margin-right: 0;
            }


            .nav-menu {
                display: none;
            }


            .mobile-menu-button {
                display: block;
            }


            .category-list table {
                width: 100%;
            }


            .category-card {
                margin-bottom: 20px;
            }


            .category-image {
                height: 180px;
            }


            .footer-container {
                grid-template-columns: 1fr 1fr;
            }

        }


        @media screen and (max-width: 550px) {

            .footer-container {
                grid-template-columns: 1fr;
            }


            .category-image {
                height: 220px;
            }


            .page-content {
                padding-left: 15px;

                padding-right: 15px;
            }

        }

    </style>

</head>


<body>

<form id="form1" runat="server">


    <!-- =====================================================
         NAVIGATION BAR
    ===================================================== -->

    <div class="navigation">

        <div class="navigation-container">


            <!-- ================= FOODMART LOGO ================= -->

            <a href="UserHome.aspx"
               class="foodmart-logo">

                Food<span>Mart</span>

            </a>


            <!-- ================= DESKTOP MENU ================= -->

            <ul class="nav-menu">


                <!-- HOME -->

                <li class="nav-item active">

                    <a href="UserHome.aspx">

                        🏠 Home

                    </a>

                </li>


                <!-- PRODUCTS -->

                <li class="nav-item">

                    <a href="UserHome.aspx">

                        🛒 Products

                    </a>

                </li>


                <!-- MY ACCOUNT -->

                <li class="nav-item">

                    <a href="AccountInsertion.aspx">

                        👤 My Account

                    </a>

                </li>


                <!-- ORDERS -->

                <li class="nav-item">

                    <a href="ViewBill.aspx">

                        📦 My Orders

                    </a>

                </li>


                <!-- CART -->

                <li class="nav-item">

                    <a href="ViewCart1.aspx">

                        🛍️ Cart

                    </a>

                </li>


                <!-- SHOP NOW -->

                <li class="nav-item">

                    <a href="UserHome.aspx"
                       class="shop-button">

                        Shop Now →

                    </a>

                </li>


            </ul>


            <!-- ================= MOBILE MENU BUTTON ================= -->

            <button type="button"
                    class="mobile-menu-button"
                    onclick="toggleMobileMenu()">

                ☰

            </button>

        </div>


        <!-- =================================================
             MOBILE NAVIGATION
        ================================================= -->

        <div id="mobileNavigation"
             class="mobile-navigation">


            <a href="UserHome.aspx"
               class="mobile-nav-link">

                🏠 Home

            </a>


            <a href="UserHome.aspx"
               class="mobile-nav-link">

                🛒 Products

            </a>


            <a href="AccountInsertion.aspx"
               class="mobile-nav-link">

                👤 My Account

            </a>


            <a href="ViewBill.aspx"
               class="mobile-nav-link">

                📦 My Orders

            </a>


            <a href="ViewCart1.aspx"
               class="mobile-nav-link">

                🛍️ Cart

            </a>


            <a href="UserHome.aspx"
               class="mobile-nav-link mobile-shop">

                Shop Now →

            </a>


        </div>

    </div>



    <!-- =====================================================
         PAGE CONTENT
    ===================================================== -->

    <main class="page-content">


        <!-- ================= CATEGORY SECTION ================= -->

        <section class="category-section">


            <div class="section-heading">

                <h2>Shop by Category</h2>

                <p>
                    Explore our fresh and delicious grocery collections
                </p>

            </div>


            <!-- =================================================
                 CATEGORY DATALIST
            ================================================= -->

            <div class="category-list">


                <asp:DataList ID="Category_Data"
                              runat="server"
                              RepeatColumns="4"
                              RepeatDirection="Horizontal">


                    <ItemTemplate>


                        <div class="category-card">


                            <!-- CATEGORY IMAGE -->

                            <asp:ImageButton
                                ID="ImageButton1"
                                runat="server"
                                CommandArgument='<%# Eval("Category_Id") %>'
                                ImageUrl='<%# Eval("Category_Image") %>'
                                OnCommand="ImageButton1_Command1"
                                CssClass="category-image"
                                AlternateText='<%# Eval("Category_Name") %>' />


                            <!-- CATEGORY NAME -->

                            <asp:Label
                                ID="Label3"
                                runat="server"
                                Text='<%# Eval("Category_Name") %>'
                                CssClass="category-name">
                            </asp:Label>


                            <!-- CATEGORY DESCRIPTION -->

                            <asp:Label
                                ID="Label9"
                                runat="server"
                                Text='<%# Eval("Category_Description") %>'
                                CssClass="category-description">
                            </asp:Label>


                        </div>


                    </ItemTemplate>


                </asp:DataList>


            </div>


        </section>


    </main>



    <!-- =====================================================
         JAVASCRIPT
    ===================================================== -->

    <script type="text/javascript">

        function toggleMobileMenu() {

            var menu = document.getElementById("mobileNavigation");

            if (menu.style.display === "block") {

                menu.style.display = "none";

            }
            else {

                menu.style.display = "block";

            }

        }

    </script>


    <!-- ================= BOOTSTRAP JS ================= -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js">
    </script>


</form>

</body>

</html>