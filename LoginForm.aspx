<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Template_ecom.LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>

        .login-page {
            min-height: 80vh;
            background: #fffdf3;
            padding: 60px 20px 80px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Nunito', sans-serif;
        }

        .login-container {
            width: 100%;
            max-width: 460px;
        }

        /* Heading */

        .login-heading {
            text-align: center;
            margin-bottom: 25px;
        }

        .login-icon {
            width: 64px;
            height: 64px;
            margin: 0 auto 15px;
            border-radius: 18px;
            background: #FFD21F;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 30px;
            box-shadow: 0 8px 20px rgba(255, 210, 31, 0.25);
        }

        .login-heading h1 {
            margin: 0;
            color: #292929;
            font-size: 30px;
            font-weight: 800;
        }

        .login-heading p {
            margin: 7px 0 0;
            color: #777;
            font-size: 14px;
        }

        /* Card */

        .login-card {
            background: #ffffff;
            border: 1px solid #f0e6b4;
            border-radius: 24px;
            padding: 35px;
            box-shadow: 0 12px 35px rgba(55, 45, 0, 0.08);
        }

        .login-card-title {
            margin-bottom: 25px;
        }

        .login-card-title h2 {
            margin: 0;
            font-size: 21px;
            font-weight: 800;
            color: #333;
        }

        .login-card-title p {
            margin: 6px 0 0;
            color: #888;
            font-size: 13px;
        }

        /* Form */

        .login-field {
            margin-bottom: 21px;
        }

        .login-label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-size: 14px;
            font-weight: 700;
        }

        .login-input {
            width: 100%;
            height: 49px;
            box-sizing: border-box;
            padding: 0 15px;
            border: 1px solid #dedede;
            border-radius: 10px;
            background: #fff;
            color: #333;
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            outline: none;
            transition: all 0.2s ease;
        }

        .login-input:focus {
            border-color: #FFD21F;
            box-shadow: 0 0 0 3px rgba(255, 210, 31, 0.18);
        }

        /* Validation */

        .login-validation {
            display: block;
            margin-top: 6px;
            color: #d93025;
            font-size: 12px;
            font-family: 'Nunito', sans-serif;
        }

        /* Button */

        .login-button-area {
            margin-top: 27px;
        }

        .login-button {
            width: 100%;
            height: 50px;
            border: none;
            border-radius: 11px;
            background: #FFD21F;
            color: #222;
            font-family: 'Nunito', sans-serif;
            font-size: 16px;
            font-weight: 800;
            cursor: pointer;
            box-shadow: 0 7px 18px rgba(255, 184, 0, 0.25);
            transition: all 0.2s ease;
        }

        .login-button:hover {
            background: #ffbf00;
            transform: translateY(-2px);
            box-shadow: 0 10px 22px rgba(255, 184, 0, 0.30);
        }

        /* Status */

        .login-status {
            display: block;
            margin-top: 15px;
            text-align: center;
            color: #d93025;
            font-size: 13px;
            font-weight: 700;
        }

        /* Mobile */

        @media (max-width: 600px) {

            .login-page {
                padding: 40px 15px 60px;
            }

            .login-card {
                padding: 25px 20px;
                border-radius: 20px;
            }

            .login-heading h1 {
                font-size: 26px;
            }

        }

    </style>


    <div class="login-page">

        <div class="login-container">

            <!-- Heading -->

            <div class="login-heading">

                <div class="login-icon">
                    🔐
                </div>

                <h1>Welcome Back</h1>

                <p>Login to your FoodMart account</p>

            </div>


            <!-- Login Card -->

            <div class="login-card">

                <div class="login-card-title">

                    <h2>Account Login</h2>

                    <p>Enter your username and password to continue.</p>

                </div>


                <!-- Username -->

                <div class="login-field">

                    <div class="login-label">
                        <asp:Label
                            ID="Label6"
                            runat="server"
                            Text="Username">
                        </asp:Label>
                    </div>

                    <asp:TextBox
                        ID="Login_Username"
                        runat="server"
                        CssClass="login-input">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        runat="server"
                        ErrorMessage="Please Enter the Username"
                        ControlToValidate="Login_Username"
                        CssClass="login-validation">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- Password -->

                <div class="login-field">

                    <div class="login-label">
                        <asp:Label
                            ID="Label7"
                            runat="server"
                            Text="Password">
                        </asp:Label>
                    </div>

                    <asp:TextBox
                        ID="Login_Password"
                        runat="server"
                        CssClass="login-input"
                        TextMode="Password">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator5"
                        runat="server"
                        ErrorMessage="Please Enter the Password"
                        ControlToValidate="Login_Password"
                        CssClass="login-validation">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- Login Button -->

                <div class="login-button-area">

                    <asp:Button
                        ID="Button1"
                        runat="server"
                        Text="Login"
                        OnClick="Button1_Click"
                        CssClass="login-button" />

                </div>


                <!-- Status Message -->

                <asp:Label
                    ID="Label9"
                    runat="server"
                    Text="Label"
                    Visible="False"
                    CssClass="login-status">
                </asp:Label>

            </div>

        </div>

    </div>

</asp:Content>