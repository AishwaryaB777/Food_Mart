<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Edit_Categroy.aspx.cs" Inherits="Template_ecom.Admin_Edit_Categroy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>FoodMart - Edit Categories</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet" />

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
            background: #fffdf3;
            font-family: 'Nunito', sans-serif;
            color: #333;
        }

        /* =========================
           NAVBAR
        ========================= */

        .admin-navbar {
            background: #ffffff;
            border-bottom: 1px solid #eeeeee;
            padding: 15px 45px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.04);
        }

        .navbar-container {
            max-width: 1400px;
            margin: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .brand {
            display: flex;
            align-items: center;
            text-decoration: none;
        }

        .brand img {
            width: 145px;
            height: auto;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .nav-links a {
            text-decoration: none;
            color: #444;
            font-weight: 700;
            padding: 10px 16px;
            border-radius: 25px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            background: #fff4b8;
            color: #222;
        }

        .nav-links .active {
            background: #ffd21f;
            color: #222;
        }

        .admin-badge {
            background: #fff4b8;
            padding: 9px 16px;
            border-radius: 25px;
            font-weight: 700;
            margin-left: 10px;
        }


        /* =========================
           PAGE
        ========================= */

        .category-page {
            min-height: calc(100vh - 80px);
            padding: 50px 25px 70px;
        }

        .page-container {
            max-width: 1350px;
            margin: auto;
        }


        /* =========================
           PAGE TITLE
        ========================= */

        .page-title {
            text-align: center;
            margin-bottom: 35px;
        }

        .page-title h1 {
            font-size: 34px;
            font-weight: 800;
            margin-bottom: 8px;
            color: #222;
        }

        .page-title p {
            margin: 0;
            color: #777;
            font-size: 15px;
        }

        .title-line {
            width: 55px;
            height: 4px;
            background: #ffd21f;
            border-radius: 10px;
            margin: 14px auto 0;
        }


        /* =========================
           GRID CARD
        ========================= */

        .grid-card {
            background: #ffffff;
            border-radius: 20px;
            border: 1px solid #eeeeee;
            box-shadow: 0 8px 30px rgba(0,0,0,0.08);
            overflow: hidden;
        }

        .grid-header {
            background: #fff8d6;
            padding: 24px 30px;
            border-bottom: 1px solid #f2e8a8;

            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .grid-header h3 {
            margin: 0;
            font-size: 21px;
            font-weight: 800;
            color: #222;
        }

        .grid-header p {
            margin: 4px 0 0;
            color: #777;
            font-size: 14px;
        }

        .category-count {
            background: #ffd21f;
            color: #222;
            padding: 8px 16px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 800;
        }

        .grid-body {
            padding: 25px;
            overflow-x: auto;
        }


        /* =========================
           GRIDVIEW
        ========================= */

        .category-grid {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            border: 1px solid #eeeeee;
            border-radius: 12px;
            overflow: hidden;
            font-size: 14px;
        }

        .category-grid th {
            background: #333;
            color: #ffffff;
            padding: 15px 14px;
            text-align: left;
            font-weight: 800;
            white-space: nowrap;
        }

        .category-grid td {
            padding: 15px 14px;
            border-bottom: 1px solid #eeeeee;
            vertical-align: middle;
            background: #ffffff;
        }

        .category-grid tr:last-child td {
            border-bottom: none;
        }

        .category-grid tr:hover td {
            background: #fffdf3;
        }


        /* =========================
           EDIT BUTTON
        ========================= */

        .category-grid a {
            display: inline-block;
            text-decoration: none;
            color: #222;
            background: #ffd21f;
            padding: 7px 15px;
            border-radius: 7px;
            font-weight: 800;
            transition: 0.3s;
        }

        .category-grid a:hover {
            background: #ffbd00;
        }


        /* =========================
           CATEGORY IMAGE
        ========================= */

        .category-grid img {
            object-fit: cover;
            border-radius: 10px;
            border: 1px solid #eeeeee;
            box-shadow: 0 3px 8px rgba(0,0,0,0.08);
        }


        /* =========================
           EDIT MODE INPUTS
        ========================= */

        .category-grid input[type="text"],
        .category-grid textarea {
            border: 1px solid #dddddd;
            border-radius: 7px;
            padding: 8px 10px;
            font-family: 'Nunito', sans-serif;
            outline: none;
        }

        .category-grid input[type="text"]:focus,
        .category-grid textarea:focus {
            border-color: #ffd21f;
            box-shadow: 0 0 0 3px rgba(255,210,31,0.15);
        }

        .category-grid input[type="file"] {
            max-width: 220px;
            font-size: 13px;
        }


        /* =========================
           FOOTER
        ========================= */

        .footer {
            text-align: center;
            padding: 20px;
            color: #888;
            font-size: 13px;
        }


        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 900px) {

            .admin-navbar {
                padding: 15px 20px;
            }

            .navbar-container {
                flex-direction: column;
                gap: 15px;
            }

            .nav-links {
                flex-wrap: wrap;
                justify-content: center;
            }

            .category-page {
                padding-top: 35px;
            }

            .grid-header {
                flex-direction: column;
                align-items: flex-start;
                gap: 12px;
            }

        }


        @media (max-width: 600px) {

            .brand img {
                width: 125px;
            }

            .nav-links {
                gap: 4px;
            }

            .nav-links a {
                padding: 8px 10px;
                font-size: 13px;
            }

            .admin-badge {
                display: none;
            }

            .page-title h1 {
                font-size: 27px;
            }

            .grid-body {
                padding: 15px;
            }

        }

    </style>

</head>


<body>

    <form id="form1" runat="server">

        <!-- =========================
             ADMIN NAVBAR
        ========================= -->

        <nav class="admin-navbar">

            <div class="navbar-container">

                <a href="AdminHome.aspx" class="brand">

                    <img src="images/logo.png"
                         alt="FoodMart" />

                </a>


                <div class="nav-links">

                    <a href="AdminHome.aspx">
                        Dashboard
                    </a>

                    <a href="Admin_Category_Page.aspx">
                        Categories
                    </a>

                    <a href="Admin_Edit_Categroy.aspx"
                       class="active">
                        Edit Categories
                    </a>

                    <a href="Admin_Product_Page.aspx">
                        Products
                    </a>

                    <a href="AdminFeedback.aspx">
                        Feedback
                    </a>

                    <a href="Login.aspx">
                        Logout
                    </a>

                    <span class="admin-badge">
                        Admin
                    </span>

                </div>

            </div>

        </nav>


        <!-- =========================
             MAIN CONTENT
        ========================= -->

        <main class="category-page">

            <div class="page-container">


                <!-- PAGE TITLE -->

                <div class="page-title">

                    <h1>
                        Edit Categories
                    </h1>

                    <p>
                        View and update the categories available in your FoodMart store
                    </p>

                    <div class="title-line"></div>

                </div>


                <!-- GRID CARD -->

                <div class="grid-card">


                    <div class="grid-header">

                        <div>

                            <h3>
                                Category Management
                            </h3>

                            <p>
                                Click the Edit button to modify a category.
                            </p>

                        </div>

                        <div class="category-count">
                            FoodMart Categories
                        </div>

                    </div>


                    <div class="grid-body">


                        <!-- =========================
                             ORIGINAL GRIDVIEW
                             FUNCTIONALITY PRESERVED
                        ========================= -->

                        <asp:GridView
                            ID="Category_View"
                            runat="server"
                            AutoGenerateColumns="False"
                            DataKeyNames="Category_Id"
                            CssClass="category-grid"

                            OnRowCancelingEdit="Category_View_RowCancelingEdit"
                            OnRowEditing="Category_View_RowEditing"
                            OnRowUpdated="Category_View_RowUpdated"
                            OnRowUpdating="Category_View_RowUpdating">

                            <Columns>

                                <asp:CommandField
                                    HeaderText="Edit"
                                    ShowEditButton="True" />

                                <asp:BoundField
                                    DataField="Category_Id"
                                    HeaderText="Category Id" />

                                <asp:BoundField
                                    DataField="Category_Name"
                                    HeaderText="Category Name" />

                                <asp:TemplateField
                                    HeaderText="Category Image">

                                    <EditItemTemplate>

                                        <asp:FileUpload
                                            ID="CateImage"
                                            runat="server" />

                                    </EditItemTemplate>

                                    <ItemTemplate>

                                        <asp:Image
                                            ID="Image1"
                                            runat="server"
                                            Height="194px"
                                            ImageUrl='<%# Eval("Category_Image") %>'
                                            Width="240px" />

                                    </ItemTemplate>

                                </asp:TemplateField>

                                <asp:BoundField
                                    DataField="Category_Description"
                                    HeaderText="Category Description" />

                                <asp:BoundField
                                    DataField="Category_Status"
                                    HeaderText="Category Status" />

                            </Columns>

                        </asp:GridView>


                    </div>

                </div>

            </div>

        </main>


        <!-- =========================
             FOOTER
        ========================= -->

        <footer class="footer">

            © 2026 FoodMart Admin Panel. All Rights Reserved.

        </footer>


    </form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>