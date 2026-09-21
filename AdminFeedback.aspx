<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFeedback.aspx.cs" Inherits="Template_ecom.AdminFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>FoodMart - Customer Feedback</title>

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style type="text/css">

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #fffbea;
            color: #222;
        }


        /* ========================================
           HEADER
           ======================================== */

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
            color: #F4B400;
        }


        /* ========================================
           MAIN CONTAINER
           ======================================== */

        .main-container {
            max-width: 1150px;
            margin: auto;
            padding: 30px 20px;
        }


        /* ========================================
           PAGE TITLE
           ======================================== */

        .title-section {
            text-align: center;
            margin-bottom: 25px;
        }

        .title-icon {
            width: 50px;
            height: 50px;
            margin: 0 auto 8px;
            border-radius: 50%;
            background: #fff3c4;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
        }

        .page-title {
            margin: 0;
            font-size: 28px;
            font-weight: 750;
        }

        .red-line {
            width: 45px;
            height: 4px;
            background: #F4B400;
            border-radius: 10px;
            margin: 8px auto;
        }

        .page-description {
            color: #888;
            font-size: 14px;
            margin: 0;
        }


        /* ========================================
           GRIDVIEW CONTAINER
           ======================================== */

        .feedback-container {
            background: white;
            border-radius: 12px;
            padding: 18px;
            box-shadow: 0 5px 18px rgba(0,0,0,0.08);
            overflow-x: auto;
            border-top: 4px solid #F4B400;
        }


        /* ========================================
           GRIDVIEW
           ======================================== */

        .feedback-grid {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }

        .feedback-grid th {
            background: #F4B400;
            color: white;
            padding: 13px 10px;
            text-align: center;
            font-weight: 700;
            border: none;
        }

        .feedback-grid td {
            padding: 12px 10px;
            border-bottom: 1px solid #eeeeee;
            text-align: center;
            vertical-align: middle;
        }

        .feedback-grid tr:nth-child(even) {
            background: #fffdf0;
        }

        .feedback-grid tr:hover {
            background: #fff4c7;
        }


        /* ========================================
           FEEDBACK TEXT
           ======================================== */

        .feedback-text {
            text-align: left !important;
            max-width: 400px;
            word-wrap: break-word;
        }


        /* ========================================
           EMAIL
           ======================================== */

        .status {
            font-weight: 600;
        }


        /* ========================================
           REPLY BUTTON
           ======================================== */

        .reply-button {
            background-color: #F4B400;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 7px 16px;
            font-size: 12px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .reply-button:hover {
            background-color: #D99A00;
            box-shadow: 0 3px 8px rgba(244,180,0,0.25);
        }


        /* ========================================
           BACK BUTTON
           ======================================== */

        .back-button {
            display: inline-block;
            margin-top: 18px;
            padding: 9px 20px;
            background: #F4B400;
            color: white;
            text-decoration: none;
            border-radius: 7px;
            font-size: 12px;
            font-weight: 700;
            transition: 0.2s;
        }

        .back-button:hover {
            background: #D99A00;
            box-shadow: 0 4px 10px rgba(244,180,0,0.25);
        }


        /* ========================================
           REPLY PANEL
           ======================================== */

        .reply-panel {
            margin-top: 30px;
            margin-bottom: 25px;
        }


        /* REPLY BOX */

        .reply-box {
            max-width: 700px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 14px;
            padding: 28px 30px;
            box-shadow: 0 6px 22px rgba(0,0,0,0.09);
            border-top: 4px solid #F4B400;
        }


        /* REPLY HEADER */

        .reply-header {
            display: flex;
            align-items: center;
            gap: 14px;
            padding-bottom: 20px;
            margin-bottom: 22px;
            border-bottom: 1px solid #eeeeee;
        }

        .reply-icon {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            background: #fff3c4;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
        }

        .reply-header h2 {
            margin: 0 0 3px;
            font-size: 22px;
            font-weight: 750;
            color: #222;
        }

        .reply-header p {
            margin: 0;
            font-size: 12px;
            color: #888;
        }


        /* FORM GROUP */

        .form-group {
            margin-bottom: 20px;
        }

        .form-group > label {
            display: block;
            margin-bottom: 7px;
            font-size: 13px;
            font-weight: 700;
            color: #333;
        }


        /* EMAIL INPUT */

        .input-wrapper {
            position: relative;
        }

        .input-icon {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 14px;
            color: #999;
            z-index: 1;
        }

        .email-field {
            padding-left: 36px !important;
            background: #f8f8f8;
            color: #555;
        }


        /* COMMON INPUT */

        .form-control {
            width: 100%;
            padding: 11px 13px;
            border: 1px solid #dddddd;
            border-radius: 7px;
            font-family: 'Segoe UI', Arial, sans-serif;
            font-size: 13px;
            color: #333;
            outline: none;
            transition: 0.2s;
        }

        .form-control:focus {
            border-color: #F4B400;
            box-shadow: 0 0 0 3px rgba(244,180,0,0.12);
        }


        /* CUSTOMER FEEDBACK */

        .feedback-display {
            background: #fffdf3;
            border: 1px solid #f1e4a8;
            border-radius: 8px;
            padding: 10px;
        }

        .feedback-label {
            font-size: 11px;
            font-weight: 600;
            color: #9a7a00;
            margin-bottom: 6px;
        }

        .feedback-box {
            height: 85px;
            resize: none;
            background: #ffffff;
            border-color: #eee2aa;
        }


        /* ADMIN RESPONSE */

        .answer-box {
            height: 125px;
            resize: vertical;
            line-height: 1.5;
        }

        .answer-box::placeholder {
            color: #aaa;
        }


        /* HELPER TEXT */

        .helper-text {
            margin-top: 6px;
            font-size: 11px;
            color: #999;
        }


        /* BUTTON AREA */

        .reply-actions {
            display: flex;
            justify-content: flex-end;
            gap: 10px;
            padding-top: 8px;
            border-top: 1px solid #eeeeee;
            margin-top: 25px;
        }


        /* SEND */

        .send-button {
            background: #F4B400;
            color: white;
            border: none;
            border-radius: 7px;
            padding: 10px 20px;
            font-size: 12px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
        }

        .send-button:hover {
            background: #D99A00;
            box-shadow: 0 4px 10px rgba(244,180,0,0.25);
        }


        /* CANCEL */

        .cancel-button {
            background: #f2f2f2;
            color: #555;
            border: 1px solid #dddddd;
            border-radius: 7px;
            padding: 10px 18px;
            font-size: 12px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
        }

        .cancel-button:hover {
            background: #e8e8e8;
        }


        /* ========================================
           FOOTER
           ======================================== */

        .footer {
            text-align: center;
            padding: 20px;
            color: #999;
            font-size: 12px;
        }


        /* ========================================
           MOBILE
           ======================================== */

        @media screen and (max-width: 700px) {

            .header {
                padding: 0 20px;
            }

            .main-container {
                padding: 25px 12px;
            }

            .page-title {
                font-size: 24px;
            }

            .feedback-container {
                padding: 10px;
            }

            .reply-box {
                padding: 22px 18px;
            }

            .reply-header {
                align-items: flex-start;
            }

            .reply-header h2 {
                font-size: 19px;
            }

            .reply-actions {
                justify-content: stretch;
            }

            .send-button,
            .cancel-button {
                flex: 1;
            }

        }

    </style>

</head>


<body>

    <form id="form1" runat="server">


        <!-- ========================================
             HEADER
             ======================================== -->

        <div class="header">

            <div class="logo">
                Food<span>Mart</span>
            </div>

        </div>


        <!-- ========================================
             MAIN
             ======================================== -->

        <div class="main-container">


            <!-- PAGE TITLE -->

            <div class="title-section">

                <div class="title-icon">
                    💬
                </div>

                <h1 class="page-title">
                    Customer Feedback
                </h1>

                <div class="red-line"></div>

                <p class="page-description">
                    View feedback submitted by FoodMart customers
                </p>

            </div>


            <!-- GRIDVIEW -->

            <div class="feedback-container">

                <asp:GridView
                    ID="GridView1"
                    runat="server"
                    AutoGenerateColumns="False"
                    CssClass="feedback-grid"
                    GridLines="None"
                    EmptyDataText="No customer feedback available."
                    DataKeyNames="Users_Id"
                    OnRowCommand="GridView1_RowCommand">

                    <Columns>

                        <asp:BoundField
                            DataField="Products_Id"
                            HeaderText="Product ID" />

                        <asp:BoundField
                            DataField="Users_Username"
                            HeaderText="Username" />

                        <asp:BoundField
                            DataField="FeedBack_Message"
                            HeaderText="Customer Feedback"
                            ItemStyle-CssClass="feedback-text" />

                        <asp:BoundField
                            DataField="Users_Email"
                            HeaderText="Email"
                            ItemStyle-CssClass="status" />

                        <asp:BoundField
                            DataField="FeedBack_Date"
                            HeaderText="Date" />

                        <asp:TemplateField
                            HeaderText="Reply">

                            <ItemTemplate>

                                <asp:Button
                                    ID="btnReply"
                                    runat="server"
                                    Text="REPLY"
                                    CssClass="reply-button"
                                    CommandName="ReplyFeedback"
                                    CommandArgument='<%# Eval("Users_Id") %>' />

                            </ItemTemplate>

                        </asp:TemplateField>

                    </Columns>

                </asp:GridView>

            </div>


            <!-- BACK BUTTON -->

            <div style="text-align: center;">

                <asp:LinkButton
                    ID="btnBack"
                    runat="server"
                    CssClass="back-button"
                    PostBackUrl="~/AdminHome.aspx">

                    ← BACK TO DASHBOARD

                </asp:LinkButton>

            </div>


            <!-- ========================================
                 REPLY PANEL
                 ======================================== -->

            <asp:Panel
                ID="Panel1"
                runat="server"
                Visible="False"
                CssClass="reply-panel">

                <div class="reply-box">


                    <!-- REPLY HEADER -->

                    <div class="reply-header">

                        <div class="reply-icon">
                            ✉
                        </div>

                        <div>

                            <h2>
                                Reply to Customer
                            </h2>

                            <p>
                                Respond to the feedback received from the customer.
                            </p>

                        </div>

                    </div>


                    <!-- TO ADDRESS -->

                    <div class="form-group">

                        <asp:Label
                            ID="Label1"
                            runat="server"
                            Text="To:"></asp:Label>

                        <div class="input-wrapper">

                            <span class="input-icon">
                                ✉
                            </span>

                            <asp:TextBox
                                ID="txtToEmail"
                                runat="server"
                                CssClass="form-control email-field"
                                ReadOnly="true">
                            </asp:TextBox>

                        </div>

                    </div>


                    <!-- CUSTOMER FEEDBACK -->

                    <div class="form-group">

                        <asp:Label
                            ID="Label2"
                            runat="server"
                            Text="From:"></asp:Label>

                        <div class="form-group">
                            <div class="input-wrapper">
                                <span class="input-icon">✉ </span>
                                <asp:TextBox ID="txtToEmail1" runat="server" CssClass="form-control email-field" ReadOnly="true">
                            </asp:TextBox>
                            </div>
                        </div>
                        <!-- CUSTOMER FEEDBACK -->

                    </div>


                    <!-- ADMIN RESPONSE -->

                    <div class="form-group">

                        <asp:Label
                            ID="Label3"
                            runat="server"
                            Text="Your Response">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtAnswer"
                            runat="server"
                            CssClass="form-control answer-box"
                            TextMode="MultiLine"
                            placeholder="Write your response to the customer...">
                        </asp:TextBox>

                    </div>


                    <!-- BUTTONS -->

                    <div class="reply-actions">

                        <asp:Button
                            ID="btnSend"
                            runat="server"
                            Text="SEND RESPONSE"
                            CssClass="send-button"
                            OnClick="btnSend_Click" />

                    </div>


                </div>

            </asp:Panel>


        </div>


        <!-- FOOTER -->

        <div class="footer">
            FoodMart Admin Panel
        </div>


    </form>

</body>

</html>
