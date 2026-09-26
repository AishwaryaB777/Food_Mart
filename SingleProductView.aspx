<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingleProductView.aspx.cs" Inherits="Template_ecom.SingleProductView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>FoodMart - Product Details</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
        crossorigin="anonymous" />

    <link rel="stylesheet" type="text/css" href="css/vendor.css" />
    <link rel="stylesheet" type="text/css" href="style.css" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&display=swap"
        rel="stylesheet" />

    <style type="text/css">

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            background: #fffdf3;
            font-family: 'Nunito', sans-serif;
            color: #333333;
        }

        /* ================= HEADER ================= */

        .foodmart-header {
            background: #ffffff;
            border-bottom: 1px solid #eeeeee;
        }

        .header-container {
            padding: 18px 5%;
        }

        .main-logo img {
            max-height: 55px;
            width: auto;
        }

        .search-bar {
            background: #f8f8f8;
            border-radius: 18px;
            padding: 8px;
        }

        .search-bar input,
        .search-bar select {
            border: none;
            background: transparent;
            box-shadow: none !important;
            outline: none;
        }

        .support-box span {
            font-size: 13px;
            color: #777777;
        }

        .support-box h5 {
            font-weight: 800;
            margin-top: 3px;
        }

        .header-icon {
            width: 42px;
            height: 42px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: #fff8d6;
            color: #333333;
            transition: 0.2s;
        }

        .header-icon:hover {
            background: #FFD21F;
        }

        .cart-link {
            text-decoration: none;
            color: #333333;
            font-weight: 700;
        }

        /* ================= PRODUCT SECTION ================= */

        .product-page {
            min-height: calc(100vh - 100px);
            padding: 55px 20px 70px;
        }

        .product-card {
            max-width: 1100px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 28px;
            padding: 45px;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.07);
        }

        .product-image-section {
            background: #fff8d6;
            border-radius: 24px;
            min-height: 440px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 35px;
        }

        .product-image {
            width: 100%;
            max-width: 380px;
            height: 380px;
            object-fit: contain;
            border-radius: 18px;
        }

        .product-details {
            padding: 15px 10px 15px 35px;
        }

        .product-category {
            display: inline-block;
            background: #fff1a8;
            color: #856a00;
            padding: 7px 15px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 18px;
        }

        .product-name {
            font-size: 34px;
            font-weight: 800;
            line-height: 1.2;
            color: #222222;
            margin-bottom: 18px;
        }

        .product-price {
            font-size: 30px;
            font-weight: 800;
            color: #e5a900;
            margin-bottom: 22px;
        }

        .product-description {
            font-size: 16px;
            line-height: 1.8;
            color: #777777;
            margin-bottom: 28px;
        }

        .quantity-area {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-bottom: 28px;
        }

        .quantity-label {
            font-size: 16px;
            font-weight: 800;
            color: #333333;
        }

        .quantity-number {
            font-weight: 700;
            font-size: 16px;
        }

        .quantity-dropdown {
            min-width: 90px;
            padding: 9px 14px;
            border: 1px solid #dddddd;
            border-radius: 10px;
            background: #ffffff;
            font-family: 'Nunito', sans-serif;
            font-weight: 600;
            outline: none;
        }

        /* ================= BUTTONS ================= */

        .product-buttons {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
            margin-bottom: 18px;
        }

        .cart-button {
            background: #FFD21F !important;
            border: none !important;
            color: #222222 !important;
            border-radius: 12px !important;
            height: 48px !important;
            width: 160px !important;
            font-family: 'Nunito', sans-serif !important;
            font-size: 15px !important;
            font-weight: 800 !important;
            cursor: pointer;
            transition: 0.2s;
        }

        .cart-button:hover {
            background: #FFB800 !important;
        }

        .continue-button {
            background: #222222 !important;
            border: none !important;
            color: #ffffff !important;
            border-radius: 12px !important;
            height: 48px !important;
            width: 160px !important;
            font-family: 'Nunito', sans-serif !important;
            font-size: 15px !important;
            font-weight: 800 !important;
            cursor: pointer;
            transition: 0.2s;
        }

        .continue-button:hover {
            background: #444444 !important;
        }

        .feedback-button {
            background: #ffffff !important;
            border: 2px solid #28a745 !important;
            color: #28a745 !important;
            border-radius: 12px !important;
            height: 48px !important;
            width: 190px !important;
            font-family: 'Nunito', sans-serif !important;
            font-size: 14px !important;
            font-weight: 800 !important;
            cursor: pointer;
            transition: 0.2s;
        }

        .feedback-button:hover {
            background: #28a745 !important;
            color: #ffffff !important;
        }

        .message-label {
            display: block;
            margin-top: 15px;
            padding: 10px;
            border-radius: 8px;
            font-weight: 700;
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 991px) {

            .product-card {
                padding: 30px;
            }

            .product-details {
                padding: 30px 5px 5px;
            }

            .product-image-section {
                min-height: 350px;
            }

            .product-image {
                height: 300px;
            }

            .product-name {
                font-size: 29px;
            }
        }

        @media (max-width: 576px) {

            .product-page {
                padding: 25px 12px 50px;
            }

            .product-card {
                padding: 20px;
                border-radius: 20px;
            }

            .product-image-section {
                min-height: 280px;
                padding: 20px;
            }

            .product-image {
                height: 240px;
            }

            .product-name {
                font-size: 25px;
            }

            .product-price {
                font-size: 25px;
            }

            .product-buttons {
                flex-direction: column;
            }

            .cart-button,
            .continue-button,
            .feedback-button {
                width: 100% !important;
            }

            .quantity-area {
                flex-wrap: wrap;
            }
        }

    </style>

</head>

<body>

    <!-- SVG ICONS -->

    <svg xmlns="http://www.w3.org/2000/svg" style="display:none;">

        <defs>

            <symbol id="heart" viewBox="0 0 24 24">
                <path fill="currentColor"
                    d="M20.16 4.61A6.27 6.27 0 0 0 12 4a6.27 6.27 0 0 0-8.16 9.48l7.45 7.45a1 1 0 0 0 1.42 0l7.45-7.45a6.27 6.27 0 0 0 0-8.87Zm-1.41 7.46L12 18.81l-6.75-6.74a4.28 4.28 0 0 1 3-7.3a4.25 4.25 0 0 1 3 1.25a1 1 0 0 0 1.42 0a4.27 4.27 0 0 1 6 6.05Z" />
            </symbol>

            <symbol id="user" viewBox="0 0 24 24">
                <path fill="currentColor"
                    d="M15.71 12.71a6 6 0 1 0-7.42 0a10 10 0 0 0-6.22 8.18a1 1 0 0 0 2 .22a8 8 0 0 1 15.9 0a1 1 0 0 0 1 .89h.11a1 1 0 0 0 .88-1.1a10 10 0 0 0-6.25-8.19ZM12 12a4 4 0 1 1 4-4a4 4 0 0 1-4 4Z" />
            </symbol>

            <symbol id="search" viewBox="0 0 24 24">
                <path fill="currentColor"
                    d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z" />
            </symbol>

            <symbol id="cart" viewBox="0 0 24 24">
                <path fill="currentColor"
                    d="M8.5 19a1.5 1.5 0 1 0 1.5 1.5A1.5 1.5 0 0 0 8.5 19ZM19 16H7a1 1 0 0 1 0-2h8.491a3.013 3.013 0 0 0 2.885-2.176l1.585-5.55A1 1 0 0 0 19 5H6.74a3.007 3.007 0 0 0-2.82-2H3a1 1 0 0 0 0 2h.921a1.005 1.005 0 0 1 .962.725l.155.545v.005l1.641 5.742A3 3 0 0 0 7 18h12a1 1 0 0 0 0-2Zm-1.326-9l-1.22 4.274a1.005 1.005 0 0 1-.963.726H8.754l-.255-.892L7.326 7ZM16.5 19a1.5 1.5 0 1 0 1.5 1.5a1.5 1.5 0 0 0-1.5-1.5Z" />
            </symbol>

        </defs>

    </svg>


    <!-- SEARCH OFFCANVAS -->

    <div class="offcanvas offcanvas-end"
        data-bs-scroll="true"
        tabindex="-1"
        id="offcanvasSearch"
        aria-labelledby="Search">

        <div class="offcanvas-header justify-content-center">

            <button type="button"
                class="btn-close"
                data-bs-dismiss="offcanvas"
                aria-label="Close">
            </button>

        </div>

        <div class="offcanvas-body">

            <div class="order-md-last">

                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-primary">Search</span>
                </h4>

                <form role="search"
                    action="index.html"
                    method="get"
                    class="d-flex mt-3 gap-0">

                    <input class="form-control rounded-start rounded-0 bg-light"
                        type="text"
                        placeholder="What are you looking for?"
                        aria-label="What are you looking for?" />

                    <button class="btn btn-dark rounded-end rounded-0"
                        type="submit">
                        Search
                    </button>

                </form>

            </div>

        </div>

    </div>


    <!-- HEADER -->

    <header class="foodmart-header">

        <div class="container-fluid header-container">

            <div class="row align-items-center">

                <!-- LOGO -->

                <div class="col-6 col-lg-3 text-center text-lg-start">

                    <div class="main-logo">

                        <a href="UserHome.aspx">

                            <img src="images/logo.png"
                                alt="FoodMart Logo"
                                class="img-fluid" />

                        </a>

                    </div>

                </div>


                <!-- SEARCH -->

                <div class="col-lg-5 d-none d-lg-block">

                    <div class="search-bar row align-items-center">

                        <div class="col-md-4">

                            <select class="form-select">

                                <option>All Categories</option>
                                <option>Groceries</option>
                                <option>Drinks</option>
                                <option>Chocolates</option>

                            </select>

                        </div>

                        <div class="col-md-7">

                            <form id="search-form"
                                class="text-center"
                                action="index.html"
                                method="post">

                                <input type="text"
                                    class="form-control"
                                    placeholder="Search for more than 20,000 products" />

                            </form>

                        </div>

                        <div class="col-md-1 text-center">

                            <svg width="22"
                                height="22"
                                viewBox="0 0 24 24">

                                <use xlink:href="#search"></use>

                            </svg>

                        </div>

                    </div>

                </div>


                <!-- RIGHT SIDE -->

                <div class="col-6 col-lg-4">

                    <div class="d-flex justify-content-end align-items-center gap-3">

                        <div class="support-box text-end d-none d-xl-block">

                            <span>For Support?</span>

                            <h5 class="mb-0">
                                +980-34984089
                            </h5>

                        </div>


                        <ul class="d-flex list-unstyled m-0">

                            <li>

                                <a href="#"
                                    class="header-icon mx-1">

                                    <svg width="21"
                                        height="21"
                                        viewBox="0 0 24 24">

                                        <use xlink:href="#user"></use>

                                    </svg>

                                </a>

                            </li>


                            <li>

                                <a href="#"
                                    class="header-icon mx-1">

                                    <svg width="21"
                                        height="21"
                                        viewBox="0 0 24 24">

                                        <use xlink:href="#heart"></use>

                                    </svg>

                                </a>

                            </li>


                            <li class="d-lg-none">

                                <a href="#"
                                    class="header-icon mx-1"
                                    data-bs-toggle="offcanvas"
                                    data-bs-target="#offcanvasSearch">

                                    <svg width="21"
                                        height="21"
                                        viewBox="0 0 24 24">

                                        <use xlink:href="#search"></use>

                                    </svg>

                                </a>

                            </li>

                        </ul>


                        <div class="d-none d-lg-block">

                            <a href="ViewCart1.aspx"
                                class="cart-link">

                                Your Cart

                            </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </header>


    <!-- PRODUCT DETAILS -->

    <form id="form1" runat="server">

        <main class="product-page">

            <div class="product-card">

                <div class="row align-items-center g-4">


                    <!-- PRODUCT IMAGE -->

                    <div class="col-lg-5">

                        <div class="product-image-section">

                            <asp:Image ID="Image1"
                                runat="server"
                                CssClass="product-image"
                                AlternateText="Product Image" />

                        </div>

                    </div>


                    <!-- PRODUCT INFORMATION -->

                    <div class="col-lg-7">

                        <div class="product-details">


                            <!-- PRODUCT NAME -->

                            <div class="product-category">
                                FoodMart Product
                            </div>

                            <h1 class="product-name">

                                <asp:Label ID="Label9"
                                    runat="server"
                                    Text="Label">
                                </asp:Label>

                            </h1>


                            <!-- PRICE -->

                            <div class="product-price">

                                <asp:Label ID="Label10"
                                    runat="server"
                                    Text="Label">
                                </asp:Label>

                            </div>


                            <!-- DESCRIPTION -->

                            <div class="product-description">

                                <asp:Label ID="Label11"
                                    runat="server"
                                    Text="Label">
                                </asp:Label>

                            </div>


                            <!-- QUANTITY -->

                            <div class="quantity-area">

                                <span class="quantity-label">
                                    Quantity:
                                </span>

                                <asp:Label ID="Label14"
                                    runat="server"
                                    Text="1"
                                    CssClass="quantity-number">
                                </asp:Label>

                                <asp:DropDownList ID="DropDownList1"
                                    runat="server"
                                    CssClass="quantity-dropdown"
                                    AutoPostBack="True"
                                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>

                            </div>


                            <!-- BUTTONS -->

                            <div class="product-buttons">

                                <asp:Button ID="Button1"
                                    runat="server"
                                    Text="ADD TO CART"
                                    CssClass="cart-button"
                                    OnClick="Button1_Click" />


                                <asp:Button ID="Button2"
                                    runat="server"
                                    Text="CONTINUE"
                                    CssClass="continue-button"
                                    OnClick="Button1_Click"
                                    PostBackUrl="~/UserHome.aspx" />

                            </div>


                            <!-- FEEDBACK -->

                            <asp:Button ID="btnFeedback0"
                                runat="server"
                                Text="GIVE FEEDBACK"
                                CssClass="feedback-button"
                                PostBackUrl="~/FeedBackPage.aspx"
                                OnClick="btnFeedback_Click" />


                            <!-- HIDDEN / STATUS LABEL -->

                            <asp:Label ID="Label13"
                                runat="server"
                                Text="Label"
                                Visible="False"
                                CssClass="message-label">
                            </asp:Label>

                        </div>

                    </div>

                </div>

            </div>

        </main>

    </form>


    <!-- SCRIPTS -->

    <script src="js/jquery-1.11.0.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous">
    </script>

    <script src="js/plugins.js"></script>

    <script src="js/script.js"></script>
</body>
</html>