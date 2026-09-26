<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Category_Page.aspx.cs" Inherits="Template_ecom.Admin_Category_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>FoodMart - Add Category</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />

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
            padding: 55px 20px 70px;
        }

        .page-container {
            max-width: 1050px;
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
           CATEGORY CARD
        ========================= */

        .category-card {
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.08);
            overflow: hidden;
            border: 1px solid #f0f0f0;
        }

        .card-header {
            background: #fff8d6;
            padding: 24px 35px;
            border-bottom: 1px solid #f2e8a8;
        }

        .card-header h3 {
            margin: 0;
            font-size: 21px;
            font-weight: 800;
            color: #222;
        }

        .card-header p {
            margin: 5px 0 0;
            color: #777;
            font-size: 14px;
        }

        .card-body {
            padding: 38px;
        }


        /* =========================
           FORM
        ========================= */

        .form-group {
            margin-bottom: 25px;
        }

        .form-label {
            display: block;
            margin-bottom: 9px;
            font-size: 15px;
            font-weight: 800;
            color: #333;
        }

        .required {
            color: #e53935;
        }

        .form-control-custom {
            width: 100%;
            height: 48px;
            border: 1px solid #dddddd;
            border-radius: 10px;
            padding: 0 15px;
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            outline: none;
            transition: 0.3s;
            background: #fff;
        }

        .form-control-custom:focus {
            border-color: #ffd21f;
            box-shadow: 0 0 0 3px rgba(255,210,31,0.18);
        }

        .description-box {
            width: 100%;
            min-height: 130px;
            border: 1px solid #dddddd;
            border-radius: 10px;
            padding: 13px 15px;
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            resize: vertical;
            outline: none;
        }

        .description-box:focus {
            border-color: #ffd21f;
            box-shadow: 0 0 0 3px rgba(255,210,31,0.18);
        }


        /* =========================
           FILE UPLOAD
        ========================= */

        .file-upload {
            width: 100%;
            padding: 12px;
            border: 1px dashed #d5d5d5;
            border-radius: 10px;
            background: #fafafa;
            font-family: 'Nunito', sans-serif;
            cursor: pointer;
        }

        .file-upload:hover {
            border-color: #ffd21f;
            background: #fffdf3;
        }


        /* =========================
           BUTTON
        ========================= */

        .button-area {
            margin-top: 32px;
            text-align: right;
        }

        .add-button {
            background: #ffd21f;
            color: #222;
            border: none;
            border-radius: 10px;
            padding: 13px 42px;
            font-family: 'Nunito', sans-serif;
            font-size: 16px;
            font-weight: 800;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0 5px 12px rgba(255,210,31,0.25);
        }

        .add-button:hover {
            background: #ffbd00;
            transform: translateY(-2px);
        }


        /* =========================
           SUCCESS MESSAGE
        ========================= */

        .success-message {
            display: block;
            margin-top: 20px;
            padding: 12px 15px;
            border-radius: 8px;
            background: #eaf8ed;
            color: #25803c;
            font-weight: 700;
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

            .card-header {
                padding: 20px;
            }

            .card-body {
                padding: 25px 20px;
            }

            .button-area {
                text-align: center;
            }

            .add-button {
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

        <nav class="admin-navbar">

            <div class="navbar-container">

                <a href="AdminHome.aspx" class="brand">
                    <img src="images/logo.png" alt="FoodMart" />
                </a>

                <div class="nav-links">

                    <a href="AdminHome.aspx">
                        Dashboard
                    </a>

                    <a href="Admin_Category_Page.aspx" class="active">
                        Categories
                    </a>

                    <a href="Admin_Product_Page.aspx">
                        Products
                    </a>

                    <a href="AdminFeedback.aspx">
                        Feedback
                    </a>

                    <a href="LoginForm.aspx">
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
                        Add New Category
                    </h1>

                    <p>
                        Create a new product category for your FoodMart store
                    </p>

                    <div class="title-line"></div>

                </div>


                <!-- CATEGORY CARD -->

                <div class="category-card">

                    <div class="card-header">

                        <h3>
                            Category Information
                        </h3>

                        <p>
                            Enter the details below to add a new category.
                        </p>

                    </div>


                    <div class="card-body">

                        <!-- CATEGORY NAME -->

                        <div class="form-group">

                            <asp:Label
                                ID="Label3"
                                runat="server"
                                Text="Category Name"
                                CssClass="form-label">
                            </asp:Label>

                            <span class="required">*</span>

                            <asp:TextBox
                                ID="Category_Name"
                                runat="server"
                                CssClass="form-control-custom"
                                placeholder="Enter category name">
                            </asp:TextBox>

                        </div>


                        <!-- CATEGORY IMAGE -->

                        <div class="form-group">

                            <asp:Label
                                ID="Label4"
                                runat="server"
                                Text="Category Image"
                                CssClass="form-label">
                            </asp:Label>

                            <span class="required">*</span>

                            <asp:FileUpload
                                ID="Category_Image"
                                runat="server"
                                CssClass="file-upload">
                            </asp:FileUpload>

                        </div>


                        <!-- DESCRIPTION -->

                        <div class="form-group">

                            <asp:Label
                                ID="Label9"
                                runat="server"
                                Text="Category Description"
                                CssClass="form-label">
                            </asp:Label>

                            <asp:TextBox
                                ID="Category_Description"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="description-box"
                                placeholder="Enter a short description about this category...">
                            </asp:TextBox>

                        </div>


                        <!-- BUTTON -->

                        <div class="button-area">

                            <asp:Button
                                ID="Button1"
                                runat="server"
                                Text="Add Category"
                                Width="180px"
                                CssClass="add-button"
                                OnClick="Button1_Click1" />

                        </div>


                        <!-- SUCCESS / STATUS MESSAGE -->

                        <asp:Label
                            ID="Label11"
                            runat="server"
                            Visible="False"
                            CssClass="success-message">
                        </asp:Label>

                    </div>

                </div>

            </div>

        </main>


        <!-- FOOTER -->

        <footer class="footer">
            © 2026 FoodMart Admin Panel. All Rights Reserved.
        </footer>


    </form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>