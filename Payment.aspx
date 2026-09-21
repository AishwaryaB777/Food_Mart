<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Template_ecom.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Payment</title>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f5f7f2;
        }

        /* Main container */
        .payment-container {
            width: 450px;
            margin: 80px auto;
            background-color: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.12);
            border-top: 6px solid #2e7d32;
        }

        /* Heading */
        .payment-container h1 {
            text-align: center;
            color: #2e7d32;
            margin-bottom: 10px;
        }

        .payment-container .subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        /* Form group */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            color: #444;
            margin-bottom: 8px;
        }

        /* Textbox */
        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
            box-sizing: border-box;
            outline: none;
        }

        .form-control:focus {
            border-color: #2e7d32;
        }

        /* Account creation link */
        .account-link {
            display: block;
            text-align: right;
            margin-top: 8px;
            color: #2e7d32;
            font-size: 14px;
            text-decoration: none;
        }

        .account-link:hover {
            text-decoration: underline;
        }

        /* Button container */
        .button-container {
            text-align: center;
            margin-top: 25px;
        }

        /* Pay button */
        .btn-pay {
            background-color: #2e7d32;
            color: white;
            border: none;
            padding: 12px 40px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-pay:hover {
            background-color: #1b5e20;
        }

        .error-label {
            display: block;
            color: #d32f2f;
            font-size: 14px;
            margin-top: 7px;
            font-weight: bold;
        }

        </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="payment-container">

            <h1>Payment</h1>

            <p class="subtitle">
                Enter your account details to make payment
            </p>

            <!-- Account Number -->

            <div class="form-group">

                <label>Account Number</label>

                <asp:TextBox ID="TextBox1"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Enter account number">
                </asp:TextBox>

                <asp:Label ID="Label1"
                    runat="server"
                    CssClass="error-label"
                    Visible="False">Insufficient Balance</asp:Label>

                <!-- Account creation link -->

                <asp:HyperLink ID="HyperLink1"
                    runat="server"
                    CssClass="account-link"
                    NavigateUrl="AccountInsertion.aspx">
                    Don't have an account? Create one
                </asp:HyperLink>

            </div>

            <!-- Pay Button -->

            <div class="button-container">

                <asp:Button ID="Button1"
                    runat="server"
                    Text="Pay"
                    CssClass="btn-pay"
                    OnClick="Button1_Click" />

            </div>

        </div>

    </form>

</body>

</html>