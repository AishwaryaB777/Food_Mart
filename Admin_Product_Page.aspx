<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Product_Page.aspx.cs" Inherits="Template_ecom.Admin_Product_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>FoodMart - Add Product</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&display=swap" rel="stylesheet" />

    <style type="text/css">

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            background: #fffdf3;
            font-family: 'Nunito', sans-serif;
            color: #333;
        }

        /* =========================
           NAVBAR
        ========================= */

        .navbar {
            width: 100%;
            background: #ffffff;
            border-bottom: 1px solid #eeeeee;
            padding: 18px 6%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            text-decoration: none;
        }

        .logo-box {
            width: 42px;
            height: 42px;
            background: #FFD21F;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
        }

        .logo-text {
            font-size: 25px;
            font-weight: 800;
            color: #222;
        }

        .logo-text span {
            color: #e4a900;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .nav-links a {
            text-decoration: none;
            color: #444;
            font-size: 15px;
            font-weight: 700;
            transition: 0.2s;
        }

        .nav-links a:hover {
            color: #e2a800;
        }

        .admin-badge {
            background: #fff4bd;
            color: #9b7300;
            padding: 9px 16px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: 800;
        }

        /* =========================
           PAGE
        ========================= */

        .page-wrapper {
            min-height: calc(100vh - 80px);
            padding: 50px 20px 70px;
        }

        .page-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .page-heading h1 {
            margin: 0;
            font-size: 34px;
            font-weight: 800;
            color: #222;
        }

        .page-heading p {
            margin-top: 8px;
            color: #777;
            font-size: 15px;
        }

        /* =========================
           PRODUCT CARD
        ========================= */

        .product-card {
            width: 100%;
            max-width: 850px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 24px;
            padding: 38px;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.07);
            border: 1px solid #f0ead0;
        }

        .card-title {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 30px;
            padding-bottom: 18px;
            border-bottom: 1px solid #eeeeee;
        }

        .card-icon {
            width: 45px;
            height: 45px;
            border-radius: 13px;
            background: #fff3b0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
        }

        .card-title h2 {
            margin: 0;
            font-size: 21px;
            font-weight: 800;
            color: #292929;
        }

        .card-title p {
            margin: 2px 0 0;
            color: #888;
            font-size: 13px;
        }

        /* =========================
           FORM GRID
        ========================= */

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 24px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group.full-width {
            grid-column: 1 / -1;
        }

        .form-label {
            margin-bottom: 8px;
            font-size: 14px;
            font-weight: 800;
            color: #444;
        }

        .form-label span {
            color: #e1a800;
        }

        /* =========================
           ASP.NET CONTROLS
        ========================= */

        .form-input,
        .form-select,
        .form-file,
        .form-textarea {
            width: 100%;
            border: 1px solid #dedede;
            border-radius: 12px;
            padding: 13px 15px;
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            color: #333;
            background: #fff;
            outline: none;
            transition: 0.2s;
        }

        .form-input:focus,
        .form-select:focus,
        .form-file:focus,
        .form-textarea:focus {
            border-color: #FFD21F;
            box-shadow: 0 0 0 3px rgba(255, 210, 31, 0.15);
        }

        .form-textarea {
            min-height: 120px;
            resize: vertical;
        }

        .form-file {
            padding: 10px;
            background: #fffdf5;
        }

        /* =========================
           BUTTON
        ========================= */

        .button-area {
            margin-top: 32px;
            padding-top: 25px;
            border-top: 1px solid #eeeeee;
            text-align: center;
        }

        .add-button {
            width: 180px !important;
            height: 50px;
            border: none;
            border-radius: 12px;
            background: #FFD21F;
            color: #222;
            font-family: 'Nunito', sans-serif;
            font-size: 16px;
            font-weight: 800;
            cursor: pointer;
            transition: 0.2s;
        }

        .add-button:hover {
            background: #ffbd00;
            transform: translateY(-1px);
            box-shadow: 0 6px 15px rgba(255, 190, 0, 0.25);
        }

        /* =========================
           STATUS MESSAGE
        ========================= */

        .status-area {
            margin-top: 18px;
            text-align: center;
        }

        .status-message {
            color: #5b8500;
            font-size: 14px;
            font-weight: 700;
        }

        /* =========================
           FOOTER
        ========================= */

        .footer {
            text-align: center;
            margin-top: 35px;
            color: #999;
            font-size: 13px;
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 850px) {

            .navbar {
                padding: 16px 25px;
            }

            .nav-links {
                gap: 15px;
            }

            .nav-links a {
                display: none;
            }

            .product-card {
                padding: 28px 22px;
            }
        }

        @media (max-width: 600px) {

            .page-wrapper {
                padding: 35px 15px 50px;
            }

            .page-heading h1 {
                font-size: 28px;
            }

            .form-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }

            .form-group.full-width {
                grid-column: auto;
            }

            .product-card {
                border-radius: 18px;
                padding: 22px 18px;
            }

            .logo-text {
                font-size: 22px;
            }

            .admin-badge {
                padding: 8px 12px;
                font-size: 12px;
            }
        }

    </style>

</head>

<body>

    <!-- =========================
         NAVBAR
    ========================= -->

    <nav class="navbar">

        <a href="AdminHome.aspx" class="logo">
            <div class="logo-box">🛒</div>

            <div class="logo-text">
                Food<span>Mart</span>
            </div>
        </a>

        <div class="nav-links">
            <a href="AdminHome.aspx">Dashboard</a>
            <a href="Admin_Edit_Categroy.aspx">Categories</a>
            <a href="Admin_Product_Page.aspx">Products</a>

            <div class="admin-badge">
                Admin Panel
            </div>
        </div>

    </nav>


    <!-- =========================
         MAIN CONTENT
    ========================= -->

    <div class="page-wrapper">

        <div class="page-heading">

            <h1>Add New Product</h1>

            <p>
                Add a new product to your FoodMart store
            </p>

        </div>


        <form id="form1" runat="server">

            <div class="product-card">

                <!-- CARD TITLE -->

                <div class="card-title">

                    <div class="card-icon">
                        🛍️
                    </div>

                    <div>
                        <h2>Product Information</h2>

                        <p>
                            Enter the details of the product below
                        </p>
                    </div>

                </div>


                <!-- FORM -->

                <div class="form-grid">


                    <!-- CATEGORY -->

                    <div class="form-group">

                        <asp:Label
                            ID="Label10"
                            runat="server"
                            Text="Category Name"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:DropDownList
                            ID="ProductDropDown"
                            runat="server"
                            CssClass="form-select">
                        </asp:DropDownList>

                    </div>


                    <!-- PRODUCT NAME -->

                    <div class="form-group">

                        <asp:Label
                            ID="Label3"
                            runat="server"
                            Text="Product Name"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:TextBox
                            ID="Product_Name"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>

                    </div>


                    <!-- IMAGE -->

                    <div class="form-group full-width">

                        <asp:Label
                            ID="Label4"
                            runat="server"
                            Text="Product Image"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:FileUpload
                            ID="Product_Image"
                            runat="server"
                            CssClass="form-file" />

                    </div>


                    <!-- DESCRIPTION -->

                    <div class="form-group full-width">

                        <asp:Label
                            ID="Label9"
                            runat="server"
                            Text="Description"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:TextBox
                            ID="Product_Description"
                            runat="server"
                            TextMode="MultiLine"
                            CssClass="form-textarea">
                        </asp:TextBox>

                    </div>


                    <!-- PRICE -->

                    <div class="form-group">

                        <asp:Label
                            ID="Label11"
                            runat="server"
                            Text="Price"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:TextBox
                            ID="Product_price"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>

                    </div>


                    <!-- STOCK -->

                    <div class="form-group">

                        <asp:Label
                            ID="Label12"
                            runat="server"
                            Text="Stock"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:TextBox
                            ID="Product_Stock"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- BUTTON -->

                <div class="button-area">

                    <asp:Button
                        ID="Button1"
                        runat="server"
                        Text="Add Product"
                        Width="155px"
                        OnClick="Button1_Click1"
                        CssClass="add-button" />

                </div>


                <!-- STATUS -->

                <div class="status-area">

                    <asp:Label
                        ID="Label13"
                        runat="server"
                        Text="Label"
                        Visible="False"
                        CssClass="status-message">
                    </asp:Label>

                </div>

            </div>

        </form>


        <div class="footer">
            © 2026 FoodMart Admin Panel
        </div>

    </div>

</body>
</html>