<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart1.aspx.cs" Inherits="Template_ecom.ViewCart1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Cart - FoodMart</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;500;600;700;800;900&display=swap" rel="stylesheet" />

    <style type="text/css">

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
            box-shadow: 0 3px 15px rgba(0,0,0,0.05);
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

        .cart-link {
            color: #ffb800 !important;
        }

        .shop-btn {
            background: #ffd21f;
            color: #222 !important;
            padding: 10px 18px;
            border-radius: 25px;
            font-weight: 800 !important;
        }

        .shop-btn:hover {
            background: #ffb800;
            color: #ffffff !important;
        }

        /* =========================
           PAGE
           ========================= */

        .page-container {
            max-width: 1200px;
            margin: 0 auto;
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
           CART CARD
           ========================= */

        .cart-card {
            background: #ffffff;
            border-radius: 20px;
            padding: 25px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.07);
            border: 1px solid #f0f0f0;
            overflow: hidden;
        }

        .cart-title {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            gap: 15px;
        }

        .cart-title h2 {
            margin: 0;
            font-size: 23px;
            font-weight: 800;
            color: #222222;
        }

        .cart-title span {
            background: #fff8d6;
            color: #9a7500;
            padding: 7px 14px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 700;
        }

        /* =========================
           GRIDVIEW
           ========================= */

        .cart-table-wrapper {
            width: 100%;
            overflow-x: auto;
            border-radius: 14px;
        }

        .cart-grid {
            width: 100% !important;
            min-width: 750px;
            border-collapse: collapse;
            border: none !important;
        }

        .cart-grid th {
            background: #fff8d6;
            color: #333333;
            padding: 16px 14px;
            border: none !important;
            border-bottom: 1px solid #eee4b5 !important;
            font-size: 14px;
            font-weight: 800;
            text-align: left;
        }

        .cart-grid td {
            padding: 15px 14px;
            border: none !important;
            border-bottom: 1px solid #eeeeee !important;
            font-size: 14px;
            color: #555555;
            vertical-align: middle;
            background: #ffffff;
        }

        .cart-grid tr:last-child td {
            border-bottom: none !important;
        }

        .cart-grid tr:hover td {
            background: #fffdf3;
        }

        /* Product image inside GridView */

        .cart-grid img {
            width: 85px !important;
            height: 85px !important;
            object-fit: cover;
            border-radius: 12px;
            border: 1px solid #eeeeee;
            padding: 4px;
            background: #ffffff;
        }

        /* Edit/Delete links */

        .cart-grid a {
            text-decoration: none;
            font-weight: 700;
        }

        .cart-grid a:hover {
            text-decoration: underline;
        }

        /* =========================
           CONFIRM SECTION
           ========================= */

        .cart-footer {
            margin-top: 25px;
            padding-top: 22px;
            border-top: 1px solid #eeeeee;
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .confirm-btn {
            background: #ffd21f;
            border: none;
            color: #222222;
            padding: 13px 32px;
            border-radius: 28px;
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            font-weight: 900;
            cursor: pointer;
            box-shadow: 0 5px 15px rgba(255, 210, 31, 0.25);
            transition: 0.2s ease;
        }

        .confirm-btn:hover {
            background: #ffb800;
            color: #ffffff;
            transform: translateY(-1px);
        }

        /* =========================
           MOBILE NAVBAR
           ========================= */

        .mobile-nav {
            display: none;
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
                gap: 12px;
            }

            .mobile-nav a {
                text-decoration: none;
                color: #333333;
                font-size: 14px;
                font-weight: 800;
            }

            .mobile-cart {
                color: #ffb800 !important;
            }

            .page-container {
                padding: 35px 15px 50px;
            }

            .page-heading h1 {
                font-size: 30px;
            }

            .cart-card {
                padding: 18px;
            }
        }

        @media (max-width: 500px) {

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
                font-size: 27px;
            }

            .page-heading p {
                font-size: 14px;
            }

            .cart-title {
                align-items: flex-start;
                flex-direction: column;
            }

            .cart-title h2 {
                font-size: 20px;
            }

            .cart-footer {
                justify-content: stretch;
            }

            .confirm-btn {
                width: 100%;
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

                    <a href="UserHome.aspx">Home</a>

                    <a href="UserHome.aspx">Products</a>

                    <a href="AccountInsertion.aspx">My Account</a>

                    <a href="ViewBill.aspx">My Orders</a>

                    <a href="ViewCart1.aspx" class="cart-link">Cart</a>

                    <a href="UserHome.aspx" class="shop-btn">Shop Now</a>

                </div>

                <div class="mobile-nav">

                    <a href="UserHome.aspx">Home</a>

                    <a href="ViewCart1.aspx" class="mobile-cart">Cart</a>

                </div>

            </div>

        </nav>


        <!-- =========================
             PAGE CONTENT
             ========================= -->

        <main class="page-container">

            <div class="page-heading">

                <h1>My Cart</h1>

                <p>Review your items before placing your order.</p>

            </div>


            <!-- CART -->

            <div class="cart-card">

                <div class="cart-title">

                    <h2>Shopping Cart</h2>

                    <span>Your Selected Items</span>

                </div>


                <div class="cart-table-wrapper">

                    <asp:GridView
                        ID="GridView1"
                        runat="server"
                        AutoGenerateColumns="False"
                        DataKeyNames="Cart_Id"
                        CssClass="cart-grid"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowDeleting="GridView1_RowDeleting"
                        OnRowEditing="GridView1_RowEditing"
                        OnRowUpdating="GridView1_RowUpdating">

                        <Columns>

                            <asp:CommandField
                                HeaderText="Edit"
                                ShowEditButton="True" />

                            <asp:CommandField
                                HeaderText="Delete"
                                ShowDeleteButton="True" />

                            <asp:BoundField
                                DataField="Products_Title"
                                HeaderText="Product Name" />

                            <asp:ImageField
                                DataImageUrlField="Products_Photo"
                                HeaderText="Product Image">

                                <ControlStyle
                                    Height="120px"
                                    Width="120px" />

                            </asp:ImageField>

                            <asp:BoundField
                                DataField="Cart_Quantity"
                                HeaderText="Quantity" />

                            <asp:BoundField
                                DataField="Cart_SubTotal"
                                HeaderText="Subtotal" />

                        </Columns>

                    </asp:GridView>

                </div>


                <!-- CONFIRM -->

                <div class="cart-footer">

                    <asp:Button
                        ID="Button1"
                        runat="server"
                        Text="Confirm"
                        OnClick="Button1_Click1"
                        CssClass="confirm-btn" />

                </div>

            </div>

        </main>

    </form>

</body>
</html>