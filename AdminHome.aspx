<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Template_ecom.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>FoodMart - Admin Dashboard</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style type="text/css">

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #fffdf3;
            color: #222;
        }


        /* ================= HEADER ================= */

        .header {
            height: 60px;
            background: #ffffff;
            display: flex;
            align-items: center;
            padding: 0 35px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
        }

        .logo {
            font-size: 25px;
            font-weight: 800;
        }

        .logo span {
            color: #FFB800;
        }


        /* ================= MAIN ================= */

        .main-container {
            max-width: 1050px;
            margin: auto;
            padding: 40px 20px;
        }


        /* ================= TITLE ================= */

        .page-title {
            text-align: center;
            margin-bottom: 35px;
        }

        .page-title h1 {
            margin: 0;
            font-size: 28px;
            font-weight: 750;
        }

        .page-title p {
            margin: 7px 0 0;
            color: #888;
            font-size: 14px;
        }

        .yellow-line {
            width: 45px;
            height: 4px;
            background: #FFD21F;
            border-radius: 10px;
            margin: 9px auto;
        }


        /* ================= DASHBOARD ================= */

        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
            align-items: stretch;
        }


        /* ================= CARD ================= */

        .dashboard-card {
            background: #ffffff;
            border-radius: 14px;
            padding: 28px 22px;
            text-align: center;
            border-top: 4px solid #FFD21F;
            box-shadow: 0 4px 14px rgba(0,0,0,0.08);
            transition: 0.25s;
            min-height: 245px;
            display: flex;
            flex-direction: column;
        }

        .dashboard-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.12);
        }


        /* ================= ICON ================= */

        .card-icon {
            width: 52px;
            height: 52px;
            margin: 0 auto 14px;
            border-radius: 50%;
            background: #fff8d6;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 25px;
        }


        /* ================= CARD TITLE ================= */

        .card-title {
            font-size: 17px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .card-description {
            font-size: 12px;
            color: #888;
            line-height: 1.5;
            margin-bottom: 20px;
        }


        /* ================= BUTTON AREA ================= */

        .button-group {
            margin-top: auto;
            display: flex;
            gap: 10px;
        }


        /* ================= BUTTON ================= */

        .dashboard-button {
            display: block;
            width: 100%;
            padding: 10px 6px;
            border-radius: 7px;
            background: #FFD21F;
            color: #222;
            text-decoration: none;
            font-size: 11px;
            font-weight: 700;
            transition: 0.2s;
        }

        .dashboard-button:hover {
            background: #FFB800;
            box-shadow: 0 4px 8px rgba(255,184,0,0.25);
        }


        /* ================= PRODUCT CARD ================= */

        .product-card {
            border-top-color: #FFB800;
        }

        .product-card .card-icon {
            background: #fff8d6;
        }


        /* ================= USER CARD ================= */

        .user-card {
            border-top-color: #4A90E2;
        }

        .user-card .card-icon {
            background: #eaf3ff;
        }

        .user-button {
            background: #4A90E2;
            color: white;
        }

        .user-button:hover {
            background: #357ABD;
            box-shadow: 0 4px 8px rgba(74,144,226,0.25);
        }


        /* ================= FEEDBACK ================= */

        .feedback-button {
            background: #28A745;
            color: white;
        }

        .feedback-button:hover {
            background: #218838;
            box-shadow: 0 4px 8px rgba(40,167,69,0.25);
        }


        /* ================= FOOTER ================= */

        .footer {
            text-align: center;
            padding: 25px;
            color: #999;
            font-size: 12px;
        }


        /* ================= TABLET ================= */

        @media screen and (max-width: 850px) {

            .dashboard-grid {
                grid-template-columns: repeat(2, 1fr);
            }

        }


        /* ================= MOBILE ================= */

        @media screen and (max-width: 600px) {

            .dashboard-grid {
                grid-template-columns: 1fr;
            }

            .main-container {
                padding: 25px 15px;
            }

            .header {
                padding: 0 20px;
            }

            .button-group {
                flex-direction: column;
            }

        }

    </style>

</head>


<body>

    <form id="form1" runat="server">


        <!-- ================= HEADER ================= -->

        <div class="header">

            <div class="logo">
                Food<span>Mart</span>
            </div>

        </div>


        <!-- ================= MAIN ================= -->

        <div class="main-container">


            <!-- ================= PAGE TITLE ================= -->

            <div class="page-title">

                <h1>Admin Dashboard</h1>

                <div class="yellow-line"></div>

                <p>Manage your FoodMart store</p>

            </div>


            <!-- ================= DASHBOARD ================= -->

            <div class="dashboard-grid">


                <!-- ================= CATEGORY MANAGEMENT ================= -->

                <div class="dashboard-card">

                    <div class="card-icon">
                        📂
                    </div>

                    <div class="card-title">
                        Category Management
                    </div>

                    <div class="card-description">
                        Add new categories and manage existing categories.
                    </div>

                    <div class="button-group">

                        <asp:LinkButton
                            ID="LinkButton1"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/Admin_Category_Page.aspx">

                            ADD CATEGORY

                        </asp:LinkButton>


                        <asp:LinkButton
                            ID="LinkButton3"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/Admin_Edit_Categroy.aspx">

                            EDIT CATEGORY

                        </asp:LinkButton>

                    </div>

                </div>


                <!-- ================= PRODUCT MANAGEMENT ================= -->

                <div class="dashboard-card product-card">

                    <div class="card-icon">
                        🛒
                    </div>

                    <div class="card-title">
                        Product Management
                    </div>

                    <div class="card-description">
                        Add new products and edit existing product details.
                    </div>

                    <div class="button-group">

                        <asp:LinkButton
                            ID="LinkButton2"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/Admin_Product_Page.aspx">

                            ADD PRODUCT

                        </asp:LinkButton>


                        <asp:LinkButton
                            ID="LinkButton4"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/Admin_Edit_Products.aspx">

                            EDIT PRODUCT

                        </asp:LinkButton>

                    </div>

                </div>


                <!-- ================= USER & FEEDBACK MANAGEMENT ================= -->

                <div class="dashboard-card user-card">

                    <div class="card-icon">
                        👥
                    </div>

                    <div class="card-title">
                        User & Feedback Management
                    </div>

                    <div class="card-description">
                        View customer details, manage user status and respond to feedback.
                    </div>

                    <div class="button-group">

                        <asp:LinkButton
                            ID="LinkButton5"
                            runat="server"
                            CssClass="dashboard-button user-button"
                            PostBackUrl="~/Admin_Users.aspx">

                            MANAGE USERS

                        </asp:LinkButton>


                        <asp:LinkButton
                            ID="LinkButton6"
                            runat="server"
                            CssClass="dashboard-button feedback-button"
                            PostBackUrl="~/AdminFeedback.aspx">

                            VIEW FEEDBACK

                        </asp:LinkButton>

                    </div>

                </div>


            </div>

        </div>


        <!-- ================= FOOTER ================= -->

        <div class="footer">

            FoodMart Admin Panel

        </div>


    </form>

</body>

</html>