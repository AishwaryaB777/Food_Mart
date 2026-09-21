`<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Users.aspx.cs" Inherits="Template_ecom.Admin_Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>FoodMart - Manage Users</title>

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f7f7f7;
            color: #333;
        }

        /* NAVBAR */

        .navbar {
            height: 70px;
            background-color: #ffffff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 5%;
            border-bottom: 1px solid #eeeeee;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: #f4c400;
        }

        .admin-title {
            font-size: 15px;
            color: #555555;
            font-weight: bold;
        }

        /* MAIN */

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 40px auto;
        }

        .page-heading {
            margin-bottom: 25px;
        }

        .page-heading h1 {
            margin: 0 0 8px 0;
            font-size: 30px;
            color: #222222;
        }

        .page-heading p {
            margin: 0;
            color: #777777;
            font-size: 14px;
        }

        /* BACK BUTTON */

        .back-btn {
            display: inline-block;
            margin-bottom: 20px;
            padding: 10px 18px;
            background-color: #333333;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 13px;
            font-weight: bold;
        }

        .back-btn:hover {
            background-color: #555555;
        }

        /* CARD */

        .card {
            background-color: #ffffff;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
        }

        .card-title {
            margin: 0 0 20px 0;
            font-size: 20px;
            color: #222222;
        }

        /* GRID */

        .grid-container {
            width: 100%;
            overflow-x: auto;
        }

        .user-grid {
            width: 100%;
            min-width: 750px;
            border-collapse: collapse;
            border: 1px solid #eeeeee;
        }

        .user-grid th {
            background-color: #f4c400;
            color: #222222;
            padding: 14px 12px;
            text-align: left;
            font-size: 14px;
            font-weight: bold;
            border: 1px solid #e5b800;
        }

        .user-grid td {
            padding: 13px 12px;
            border: 1px solid #eeeeee;
            font-size: 14px;
            color: #444444;
        }

        .user-grid tr:nth-child(even) {
            background-color: #fffdf0;
        }

        .user-grid tr:hover {
            background-color: #fff6c7;
        }

        /* BLOCK BUTTON */

        .block-btn {
            background-color: #dc3545;
            color: #ffffff;
            border: none;
            padding: 9px 22px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 13px;
            font-weight: bold;
            min-width: 85px;
        }

        .block-btn:hover {
            background-color: #b02a37;
        }

        .block-btn:active {
            transform: scale(0.97);
        }

        /* MOBILE */

        @media (max-width: 700px) {

            .navbar {
                padding: 0 20px;
            }

            .logo {
                font-size: 23px;
            }

            .admin-title {
                font-size: 13px;
            }

            .container {
                width: 94%;
                margin-top: 25px;
            }

            .page-heading h1 {
                font-size: 25px;
            }

            .card {
                padding: 15px;
            }

        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <!-- NAVBAR -->

        <div class="navbar">

            <div class="logo">
                FoodMart
            </div>

            <div class="admin-title">
                Admin Panel
            </div>

        </div>


        <!-- MAIN CONTENT -->

        <div class="container">

            <div class="page-heading">

                <h1>Manage Users</h1>

                <p>
                    View and manage registered FoodMart users
                </p>

            </div>


            <a href="AdminHome.aspx" class="back-btn">
                ← Back to Dashboard
            </a>


            <!-- USER CARD -->

            <div class="card">

     Registered Users
                </h2>

                <div class="grid-container">

                    <asp:GridView
                        ID="GridView1"
                        runat="server"
                        CssClass="user-grid"
                        AutoGenerateColumns="False"
                        EmptyDataText="No users found."
                        DataKeyNames="Users_Id"
                        OnRowCommand="GridView1_RowCommand">

                        <Columns>

                            <asp:BoundField
                                DataField="Users_Id"
                                HeaderText="ID" />

                            <asp:BoundField
                                DataField="Users_Name"
                                HeaderText="Name" />

                            <asp:BoundField
                                DataField="Users_Age"
                                HeaderText="Age" />

                            <asp:BoundField
                                DataField="Users_Email"
                                HeaderText="Email" />

                            <asp:TemplateField
                                HeaderText="Status">

                                <ItemTemplate>

                                    <asp:Button
                                        ID="Button2"
                                        runat="server"
                                        Text="BLOCK"
                                        CssClass="block-btn"
                                        CommandName="BlockUser"
                                        CommandArgument='<%# Eval("Users_Id") %>' />

                                </ItemTemplate>

                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>

            </div>

        </div>

    </form>

</body>

</html>