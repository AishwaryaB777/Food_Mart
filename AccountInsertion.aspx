<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountInsertion.aspx.cs" Inherits="Template_ecom.Account_Insertion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <script type="text/javascript">
    function validateAccountNumber() {

        var accountNumber = document.getElementById("<%= TextBox1.ClientID %>").value.trim();

        if (accountNumber == "") {
            alert("Please enter account number.");
            return false;
        }

        if (!/^[0-9]+$/.test(accountNumber)) {
            alert("Account number should contain only numbers.");
            return false;
        }

        if (accountNumber.length != 10) {
            alert("Account number must contain exactly 10 digits.");
            return false;
        }

        return true;
        }
    </script>
    <title>Create Account</title>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f5f7f2;
        }

        /* Main container */
        .account-container {
            width: 450px;
            margin: 80px auto;
            background-color: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.12);
            border-top: 6px solid #2e7d32;
        }

        /* Heading */
        .account-container h1 {
            text-align: center;
            color: #2e7d32;
            margin-bottom: 10px;
        }

        .account-container .subtitle {
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

        /* Textbox and dropdown */
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

        /* Account number error label */
        .error-label {
            display: block;
            color: #d32f2f;
            font-size: 14px;
            margin-top: 7px;
            font-weight: bold;
        }

        /* Button container */
        .button-container {
            text-align: center;
            margin-top: 25px;
        }

        /* Button */
        .btn-create {
            background-color: #2e7d32;
            color: white;
            border: none;
            padding: 12px 30px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-create:hover {
            background-color: #1b5e20;
        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="account-container">

            <h1>Create Account</h1>

            <p class="subtitle">
                Enter the account details below
            </p>

            <!-- Account Type -->

            <div class="form-group">

                <label>Account Type</label>

                <asp:DropDownList ID="DropDown1"
                    runat="server"
                    CssClass="form-control">

                    <asp:ListItem Text="-- Select Account Type --"
                        Value="">
                    </asp:ListItem>

                    <asp:ListItem Text="Savings Account"
                        Value="Savings">
                    </asp:ListItem>

                    <asp:ListItem Text="Current Account"
                        Value="Current">
                    </asp:ListItem>

                    <asp:ListItem Text="Fixed Deposit Account"
                        Value="Fixed Deposit">
                    </asp:ListItem>

                    <asp:ListItem Text="Salary Account"
                        Value="Salary">
                    </asp:ListItem>

                    <asp:ListItem Text="Recurring Deposit Account"
                        Value="Recurring Deposit">
                    </asp:ListItem>

                    <asp:ListItem Text="NRI Account"
                        Value="NRI">
                    </asp:ListItem>

                </asp:DropDownList>

            </div>

            <!-- Account Number -->

            <div class="form-group">

                <label>Account Number</label>

                <asp:TextBox ID="TextBox1"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Enter account number" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>

                <!-- Account number already exists message -->

                <asp:Label ID="Label1"
                    runat="server"
                    CssClass="error-label"
                    Visible="False">This Account Number already exists.</asp:Label>

            </div>

            <!-- Balance -->

            <div class="form-group">

                <label>Balance</label>

                <asp:TextBox ID="TextBox2"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Enter initial balance"
                    TextMode="Number"></asp:TextBox>

            </div>

            <!-- Create Button -->

            <div class="button-container">

<asp:Button ID="Button1"
    runat="server"
    Text="Create Account"
    CssClass="btn-create"
    OnClientClick="return validateAccountNumber();"
    OnClick="Button1_Click" />

            </div>
        </div>
    </form>

</body>

</html>
