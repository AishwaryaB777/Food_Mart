<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminR.aspx.cs" Inherits="Template_ecom.AdminR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>

        .admin-register-page {
            background: #fffdf3;
            min-height: 100vh;
            padding: 55px 20px 80px;
            font-family: 'Nunito', sans-serif;
        }

        .admin-register-container {
            max-width: 900px;
            margin: 0 auto;
        }

        /* Page Heading */

        .admin-page-heading {
            display: flex;
            align-items: center;
            gap: 16px;
            margin-bottom: 28px;
        }

        .admin-heading-icon {
            width: 58px;
            height: 58px;
            background: #FFD21F;
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            box-shadow: 0 8px 20px rgba(255, 210, 31, 0.25);
        }

        .admin-page-heading h1 {
            margin: 0;
            font-size: 30px;
            font-weight: 800;
            color: #292929;
        }

        .admin-page-heading p {
            margin: 5px 0 0;
            color: #777;
            font-size: 15px;
        }

        /* Main Card */

        .admin-register-card {
            background: #ffffff;
            border: 1px solid #f0e6b4;
            border-radius: 24px;
            box-shadow: 0 12px 35px rgba(55, 45, 0, 0.08);
            overflow: hidden;
        }

        .register-card-header {
            background: linear-gradient(135deg, #fff8d6, #fffdf3);
            padding: 25px 32px;
            border-bottom: 1px solid #f2e7b3;
        }

        .register-card-header h2 {
            margin: 0;
            font-size: 21px;
            font-weight: 800;
            color: #333;
        }

        .register-card-header p {
            margin: 6px 0 0;
            font-size: 14px;
            color: #777;
        }

        /* Form */

        .register-form {
            padding: 32px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 24px 28px;
        }

        .form-field {
            display: flex;
            flex-direction: column;
        }

        .form-field.full-width {
            grid-column: 1 / -1;
        }

        .form-label {
            margin-bottom: 8px;
            font-size: 14px;
            font-weight: 700;
            color: #333;
        }

        .foodmart-input {
            width: 100%;
            box-sizing: border-box;
            height: 48px;
            padding: 0 15px;
            border: 1px solid #dedede;
            border-radius: 10px;
            background: #fff;
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            color: #333;
            outline: none;
            transition: all 0.2s ease;
        }

        .foodmart-input:focus {
            border-color: #FFD21F;
            box-shadow: 0 0 0 3px rgba(255, 210, 31, 0.18);
        }

        /* Validators */

        .validation-message {
            margin-top: 6px;
            font-size: 12px;
            color: #d93025;
            font-family: 'Nunito', sans-serif;
        }

        /* Password */

        .password-input {
            width: 100%;
            box-sizing: border-box;
            height: 48px;
            padding: 0 15px;
            border: 1px solid #dedede;
            border-radius: 10px;
            background: #fff;
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            color: #333;
            outline: none;
        }

        .password-input:focus {
            border-color: #FFD21F;
            box-shadow: 0 0 0 3px rgba(255, 210, 31, 0.18);
        }

        /* Button Area */

        .register-actions {
            grid-column: 1 / -1;
            display: flex;
            justify-content: flex-end;
            align-items: center;
            padding-top: 8px;
            border-top: 1px solid #eeeeee;
            margin-top: 5px;
        }

        .register-button {
            background: #FFD21F;
            color: #222;
            border: none;
            border-radius: 10px;
            min-width: 155px;
            height: 48px;
            padding: 0 25px;
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            font-weight: 800;
            cursor: pointer;
            box-shadow: 0 7px 18px rgba(255, 184, 0, 0.25);
            transition: all 0.2s ease;
        }

        .register-button:hover {
            background: #ffbf00;
            transform: translateY(-2px);
            box-shadow: 0 10px 22px rgba(255, 184, 0, 0.3);
        }

        /* Status Label */

        .status-message {
            grid-column: 1 / -1;
            text-align: center;
            color: #2e7d32;
            font-weight: 700;
            font-size: 14px;
        }

        /* Responsive */

        @media (max-width: 700px) {

            .admin-register-page {
                padding: 35px 15px 60px;
            }

            .admin-page-heading h1 {
                font-size: 25px;
            }

            .register-form {
                grid-template-columns: 1fr;
                padding: 24px;
                gap: 20px;
            }

            .form-field.full-width {
                grid-column: auto;
            }

            .register-actions {
                grid-column: auto;
                justify-content: stretch;
            }

            .register-button {
                width: 100%;
            }

            .register-card-header {
                padding: 22px 24px;
            }
        }

    </style>


    <div class="admin-register-page">

        <div class="admin-register-container">

            <!-- Page Heading -->

            <div class="admin-page-heading">

                <div class="admin-heading-icon">
                    👤
                </div>

                <div>
                    <h1>Admin Registration</h1>
                    <p>Create a new administrator account for FoodMart.</p>
                </div>

            </div>


            <!-- Registration Card -->

            <div class="admin-register-card">

                <div class="register-card-header">

                    <h2>Administrator Details</h2>

                    <p>
                        Enter the administrator's information and account credentials.
                    </p>

                </div>


                <div class="register-form">

                    <!-- Name -->

                    <div class="form-field">

                        <div class="form-label">
                            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                        </div>

                        <asp:TextBox
                            ID="Admin_Name"
                            runat="server"
                            CssClass="foodmart-input">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1"
                            runat="server"
                            ErrorMessage="Please enter the Name"
                            ControlToValidate="Admin_Name"
                            CssClass="validation-message">
                        </asp:RequiredFieldValidator>

                    </div>


                    <!-- Email -->

                    <div class="form-field">

                        <div class="form-label">
                            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                        </div>

                        <asp:TextBox
                            ID="Admin_Email"
                            runat="server"
                            CssClass="foodmart-input">
                        </asp:TextBox>

                        <asp:RegularExpressionValidator
                            ID="RegularExpressionValidator2"
                            runat="server"
                            ErrorMessage="Please Enter the proper Email"
                            ControlToValidate="Admin_Email"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            CssClass="validation-message">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- Address -->

                    <div class="form-field full-width">

                        <div class="form-label">
                            <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                        </div>

                        <asp:TextBox
                            ID="Admin_Address"
                            runat="server"
                            CssClass="foodmart-input">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3"
                            runat="server"
                            ErrorMessage="Please Enter the Address"
                            ControlToValidate="Admin_Address"
                            CssClass="validation-message">
                        </asp:RequiredFieldValidator>

                    </div>


                    <!-- Username -->

                    <div class="form-field">

                        <div class="form-label">
                            <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                        </div>

                        <asp:TextBox
                            ID="Admin_Username"
                            runat="server"
                            CssClass="foodmart-input">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2"
                            runat="server"
                            ErrorMessage="Please Enter the Username"
                            ControlToValidate="Admin_Username"
                            CssClass="validation-message">
                        </asp:RequiredFieldValidator>

                    </div>


                    <!-- Password -->

                    <div class="form-field">

                        <div class="form-label">
                            <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                        </div>

                        <asp:TextBox
                            ID="Admin_Password"
                            runat="server"
                            CssClass="password-input">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator5"
                            runat="server"
                            ErrorMessage="Please Enter the Password"
                            ControlToValidate="Admin_Password"
                            CssClass="validation-message">
                        </asp:RequiredFieldValidator>

                    </div>


                    <!-- Confirm Password -->

                    <div class="form-field">

                        <div class="form-label">
                            <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
                        </div>

                        <asp:TextBox
                            ID="Admin_CP"
                            runat="server"
                            CssClass="password-input">
                        </asp:TextBox>

                        <asp:CompareValidator
                            ID="CompareValidator1"
                            runat="server"
                            ErrorMessage="The Password doesnt match"
                            ControlToCompare="Admin_Password"
                            ControlToValidate="Admin_CP"
                            CssClass="validation-message">
                        </asp:CompareValidator>

                    </div>


                    <!-- Register Button -->

                    <div class="register-actions">

                        <asp:Button
                            ID="Button1"
                            runat="server"
                            Text="Register"
                            OnClick="Button1_Click"
                            CssClass="register-button" />

                    </div>


                    <!-- Status Label -->

                    <asp:Label
                        ID="Label9"
                        runat="server"
                        Text="Label"
                        Visible="False"
                        CssClass="status-message">
                    </asp:Label>

                </div>

            </div>

        </div>

    </div>

</asp:Content>