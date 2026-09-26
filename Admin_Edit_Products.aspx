<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Edit_Products.aspx.cs" Inherits="Template_ecom.Admin_Edit_Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>FoodMart - Edit Products</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&display=swap"
          rel="stylesheet" />


    <style>

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


        /* ========================================
           NAVBAR
           ======================================== */

        .admin-navbar {
            width: 100%;
            background: #ffffff;
            border-bottom: 1px solid #eeeeee;
            padding: 15px 5%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            position: sticky;
            top: 0;
            z-index: 1000;
        }


        /* ========================================
           LOGO
           ======================================== */

        .brand {
            display: flex;
            align-items: center;
            text-decoration: none;
            color: #222;
            min-width: 170px;
        }

        .brand img {
            height: 45px;
            width: auto;
        }

        .brand-name {
            margin-left: 10px;
            font-size: 24px;
            font-weight: 800;
        }

        .brand-name span {
            color: #ffb800;
        }


        /* ========================================
           NAVIGATION
           ======================================== */

        .admin-nav {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
            flex-wrap: wrap;
        }

        .admin-nav a {
            text-decoration: none;
            color: #555;
            font-size: 14px;
            font-weight: 700;
            padding: 9px 14px;
            border-radius: 9px;
            transition: all 0.2s ease;
        }

        .admin-nav a:hover {
            background: #fff8d6;
            color: #222;
        }

        .admin-nav a.active {
            background: #ffd21f;
            color: #222;
        }


        /* ========================================
           ADMIN BADGE
           ======================================== */

        .admin-badge {
            background: #222;
            color: #fff;
            padding: 9px 15px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 700;
            white-space: nowrap;
        }


        /* ========================================
           PAGE
           ======================================== */

        .admin-page {
            width: 100%;
            min-height: calc(100vh - 75px);
            padding: 55px 5%;
        }


        /* ========================================
           PAGE HEADING
           ======================================== */

        .page-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .page-heading h1 {
            margin: 0 0 8px;
            font-size: 36px;
            font-weight: 800;
            color: #222;
        }

        .page-heading h1 span {
            color: #ffb800;
        }

        .page-heading p {
            margin: 0;
            color: #777;
            font-size: 16px;
        }


        /* ========================================
           MAIN CARD
           ======================================== */

        .product-card {
            width: 100%;
            max-width: 1500px;
            margin: auto;
            background: #ffffff;
            border: 1px solid #eeeeee;
            border-radius: 22px;
            padding: 25px;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.06);
        }


        /* ========================================
           CARD TOP
           ======================================== */

        .card-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            margin-bottom: 22px;
        }

        .card-title {
            margin: 0;
            font-size: 21px;
            font-weight: 800;
            color: #222;
        }

        .card-title span {
            color: #ffb800;
        }

        .card-subtitle {
            margin: 5px 0 0;
            font-size: 13px;
            color: #888;
        }

        .products-label {
            background: #fff8d6;
            color: #765e00;
            padding: 8px 14px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 700;
            white-space: nowrap;
        }


        /* ========================================
           GRIDVIEW CONTAINER
           ======================================== */

        .grid-container {
            width: 100%;
            overflow-x: auto;
            border: 1px solid #eeeeee;
            border-radius: 15px;
        }


        /* ========================================
           GRIDVIEW
           ======================================== */

        .product-grid {
            width: 100%;
            min-width: 1100px;
            border-collapse: separate;
            border-spacing: 0;
            font-size: 14px;
        }


        /* ========================================
           GRIDVIEW HEADER
           ======================================== */

        .product-grid th {
            background: #ffd21f;
            color: #222;
            font-weight: 800;
            padding: 16px 14px;
            text-align: center;
            white-space: nowrap;
            border: none;
        }

        .product-grid th:first-child {
            border-top-left-radius: 14px;
        }

        .product-grid th:last-child {
            border-top-right-radius: 14px;
        }


        /* ========================================
           GRIDVIEW CELLS
           ======================================== */

        .product-grid td {
            padding: 16px 14px;
            text-align: center;
            vertical-align: middle;
            background: #ffffff;
            color: #444;
            border-bottom: 1px solid #eeeeee;
        }


        /* ========================================
           ALTERNATE ROW
           ======================================== */

        .product-grid tr:nth-child(even) td {
            background: #fffdf3;
        }

        .product-grid tr:hover td {
            background: #fff8d6;
        }


        /* ========================================
           EDIT BUTTON
           ======================================== */

        .product-grid a {
            display: inline-block;
            padding: 8px 16px;
            background: #ffd21f;
            color: #222 !important;
            text-decoration: none;
            font-weight: 800;
            border-radius: 8px;
            transition: all 0.2s ease;
        }

        .product-grid a:hover {
            background: #ffb800;
            color: #000 !important;
        }


        /* ========================================
           PRODUCT IMAGE
           ======================================== */

        .product-grid img {
            width: 150px !important;
            height: 110px !important;
            object-fit: cover;
            border-radius: 12px;
            border: 1px solid #eeeeee;
            padding: 4px;
            background: #ffffff;
        }


        /* ========================================
           FILE UPLOAD
           ======================================== */

        .product-grid input[type="file"] {
            width: 200px;
            max-width: 100%;
            padding: 8px;
            border: 1px solid #dddddd;
            border-radius: 8px;
            background: #fffdf3;
            font-family: 'Nunito', sans-serif;
            font-size: 13px;
        }


        /* ========================================
           PAGING
           ======================================== */

        .product-grid tr:last-child td {
            padding: 18px;
            background: #ffffff;
            border-bottom: none;
        }

        .product-grid tr:last-child a,
        .product-grid tr:last-child span {
            display: inline-block;
            margin: 3px;
            padding: 7px 12px;
            border-radius: 7px;
            font-weight: 800;
        }

        .product-grid tr:last-child span {
            background: #ffd21f;
            color: #222;
        }


        /* ========================================
           FOOTER
           ======================================== */

        .footer {
            text-align: center;
            padding: 25px 15px;
            color: #888;
            font-size: 13px;
        }


        /* ========================================
           TABLET
           ======================================== */

        @media (max-width: 1000px) {

            .admin-navbar {
                flex-wrap: wrap;
                justify-content: center;
            }

            .brand {
                justify-content: center;
            }

            .admin-nav {
                order: 3;
                width: 100%;
            }

            .admin-badge {
                display: none;
            }

        }


        /* ========================================
           MOBILE
           ======================================== */

        @media (max-width: 600px) {

            .admin-page {
                padding: 35px 15px;
            }

            .brand-name {
                font-size: 21px;
            }

            .brand img {
                height: 38px;
            }

            .admin-nav a {
                font-size: 12px;
                padding: 8px 10px;
            }

            .page-heading h1 {
                font-size: 29px;
            }

            .page-heading p {
                font-size: 14px;
            }

            .product-card {
                padding: 15px;
                border-radius: 16px;
            }

            .card-top {
                align-items: flex-start;
                flex-direction: column;
            }

            .grid-container {
                border-radius: 12px;
            }

            .product-grid {
                min-width: 1100px;
            }

        }

    </style>

</head>


<body>


    <!-- ========================================
         FOOD MART ADMIN NAVBAR
         ======================================== -->

    <header class="admin-navbar">


        <!-- LOGO -->

        <a href="AdminHome.aspx" class="brand">

            <img src="images/logo.png"
                 alt="FoodMart Logo" />

            <div class="brand-name">
                Food<span>Mart</span>
            </div>

        </a>


        <!-- NAVIGATION -->

        <nav class="admin-nav">

            <a href="AdminHome.aspx">
                Dashboard
            </a>

            <a href="Admin_Edit_Categroy.aspx">
                Categories
            </a>

            <a href="Admin_Product_Page.aspx">
                Add Product
            </a>

            <a href="Admin_Edit_Products.aspx"
               class="active">
                Products
            </a>

            <a href="AdminFeedback.aspx">
                Feedback
            </a>

        </nav>


        <!-- ADMIN BADGE -->

        <div class="admin-badge">
            Admin Panel
        </div>

    </header>



    <!-- ========================================
         ASP.NET FORM
         ======================================== -->

    <form id="form1" runat="server">


        <!-- ========================================
             PAGE CONTENT
             ======================================== -->

        <main class="admin-page">


            <!-- PAGE HEADING -->

            <div class="page-heading">

                <h1>
                    Edit <span>Products</span>
                </h1>

                <p>
                    Manage and update your FoodMart products
                </p>

            </div>


            <!-- ========================================
                 PRODUCT CARD
                 ======================================== -->

            <div class="product-card">


                <div class="card-top">

                    <div>

                        <h2 class="card-title">
                            Product <span>Management</span>
                        </h2>

                        <p class="card-subtitle">
                            Edit product details, images, price, stock and status.
                        </p>

                    </div>

                    <div class="products-label">
                        FoodMart Products
                    </div>

                </div>


                <!-- ========================================
                     GRIDVIEW
                     SAME GRIDVIEW
                     ======================================== -->

                <div class="grid-container">

                    <asp:GridView
                        ID="Product_View"
                        runat="server"
                        AutoGenerateColumns="False"
                        DataKeyNames="Products_id"
                        OnRowCancelingEdit="Product_View_RowCancelingEdit"
                        OnRowEditing="Product_View_RowEditing"
                        OnRowUpdating="Product_View_RowUpdating"
                        AllowPaging="True"
                        OnPageIndexChanging="Product_View_PageIndexChanging"
                        PageSize="4"
                        CssClass="product-grid">

                        <Columns>

                            <asp:CommandField
                                HeaderText="Edit"
                                ShowEditButton="True" />

                            <asp:BoundField
                                DataField="Products_id"
                                HeaderText="Product Id" />

                            <asp:BoundField
                                DataField="Products_Title"
                                HeaderText="Product Name" />

                            <asp:TemplateField
                                HeaderText="Product Image">

                                <EditItemTemplate>

                                    <asp:FileUpload
                                        ID="ProductImage"
                                        runat="server" />

                                </EditItemTemplate>

                                <ItemTemplate>

                                    <asp:Image
                                        ID="Image1"
                                        runat="server"
                                        Height="194px"
                                        ImageUrl='<%# Eval("Products_Photo") %>'
                                        Width="240px" />

                                </ItemTemplate>

                            </asp:TemplateField>

                            <asp:BoundField
                                DataField="Products_Description"
                                HeaderText="Product Description" />

                            <asp:BoundField
                                DataField="Products_Price"
                                HeaderText="Product Price" />

                            <asp:BoundField
                                DataField="Products_Status"
                                HeaderText="Product Status" />

                            <asp:BoundField
                                DataField="Products_Stock"
                                HeaderText="Product Stock" />

                        </Columns>

                    </asp:GridView>

                </div>

            </div>


        </main>


    </form>


    <!-- ========================================
         FOOTER
         ======================================== -->

    <footer class="footer">

        © 2026 FoodMart Admin Panel

    </footer>


</body>

</html>