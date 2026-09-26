<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Template_ecom.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">

        /* =====================================================
           REGISTRATION PAGE
        ===================================================== */

        .register-page {
            min-height: calc(100vh - 70px);
            background: #fffdf3;
            padding: 45px 20px 60px;
            font-family: 'Nunito', Arial, sans-serif;
        }


        /* =====================================================
           REGISTRATION CARD
        ===================================================== */

        .register-card {
            max-width: 850px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 18px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
            border: 1px solid #eeeeee;
            overflow: hidden;
        }


        /* =====================================================
           HEADER
        ===================================================== */

        .register-header {
            background: #fff8d6;
            padding: 30px 35px;
            text-align: center;
            border-bottom: 1px solid #f1e7b5;
        }


        .register-logo {
            font-size: 30px;
            font-weight: 800;
            color: #222;
            margin-bottom: 5px;
        }


        .register-logo span {
            color: #ffb800;
        }


        .register-title {
            font-size: 25px;
            font-weight: 800;
            color: #222;
            margin: 10px 0 5px;
        }


        .register-subtitle {
            color: #888;
            font-size: 14px;
            margin: 0;
        }


        /* =====================================================
           FORM AREA
        ===================================================== */

        .register-form {
            padding: 35px 45px 40px;
        }


        .form-section-title {
            font-size: 16px;
            font-weight: 800;
            color: #333;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #fff1a8;
        }


        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 22px;
            margin-bottom: 20px;
        }


        .form-group {
            width: 100%;
        }


        .form-label {
            display: block;
            font-size: 13px;
            font-weight: 800;
            color: #444;
            margin-bottom: 7px;
        }


        .form-input {
            width: 100%;
            height: 45px;
            padding: 10px 13px;

            border: 1px solid #dddddd;
            border-radius: 8px;

            font-family: 'Nunito', Arial, sans-serif;
            font-size: 14px;

            outline: none;

            background: #ffffff;

            transition: 0.2s;
        }


        .form-input:focus {
            border-color: #ffcf19;
            box-shadow: 0 0 0 3px rgba(255, 210, 31, 0.15);
        }


        .form-textarea {
            width: 100%;
            min-height: 90px;

            padding: 10px 13px;

            border: 1px solid #dddddd;
            border-radius: 8px;

            font-family: 'Nunito', Arial, sans-serif;
            font-size: 14px;

            resize: vertical;

            outline: none;
        }


        .form-textarea:focus {
            border-color: #ffcf19;
            box-shadow: 0 0 0 3px rgba(255, 210, 31, 0.15);
        }


        /* =====================================================
           VALIDATORS
        ===================================================== */

        .validation-message {
            display: block;
            color: #d9534f;
            font-size: 11px;
            font-weight: 600;
            margin-top: 5px;
        }


        /* =====================================================
           BUTTON
        ===================================================== */

        .register-button {
            width: 100%;
            height: 48px;

            background: #ffd21f;
            color: #222;

            border: none;
            border-radius: 8px;

            font-family: 'Nunito', Arial, sans-serif;
            font-size: 15px;
            font-weight: 800;

            cursor: pointer;

            transition: 0.2s;

            margin-top: 10px;
        }


        .register-button:hover {
            background: #ffb800;
            transform: translateY(-1px);
        }


        /* =====================================================
           SUCCESS MESSAGE
        ===================================================== */

        .success-message {
            display: block;

            margin-top: 18px;

            padding: 12px 15px;

            background: #eaf8ed;

            border: 1px solid #b8e0c0;

            border-radius: 8px;

            color: #26833a;

            font-size: 13px;

            font-weight: 700;

            text-align: center;
        }


        /* =====================================================
           BOTTOM TEXT
        ===================================================== */

        .register-note {
            text-align: center;
            color: #999;
            font-size: 12px;
            margin-top: 20px;
        }


        /* =====================================================
           MOBILE
        ===================================================== */

        @media screen and (max-width: 700px) {

            .register-page {
                padding: 25px 15px 40px;
            }


            .register-header {
                padding: 25px 20px;
            }


            .register-logo {
                font-size: 26px;
            }


            .register-title {
                font-size: 22px;
            }


            .register-form {
                padding: 25px 20px 30px;
            }


            .form-row {
                grid-template-columns: 1fr;
                gap: 18px;
                margin-bottom: 18px;
            }

        }

    </style>


    <!-- =====================================================
         REGISTRATION PAGE
    ===================================================== -->

    <div class="register-page">


        <!-- =================================================
             REGISTRATION CARD
        ================================================= -->

        <div class="register-card">


            <!-- ================= HEADER ================= -->

            <div class="register-header">

                <div class="register-logo">

                    Food<span>Mart</span>

                </div>


                <div class="register-title">

                    Create Your Account

                </div>


                <p class="register-subtitle">

                    Join FoodMart and enjoy a simple grocery shopping experience

                </p>

            </div>



            <!-- ================= FORM ================= -->

            <div class="register-form">


                <div class="form-section-title">

                    Personal Information

                </div>


                <!-- ================= NAME + AGE ================= -->

                <div class="form-row">


                    <!-- NAME -->

                    <div class="form-group">

                        <label class="form-label">

                            Name

                        </label>


                        <asp:TextBox
                            ID="TextBox1"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>


                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1"
                            runat="server"
                            ErrorMessage="Please enter the Name"
                            ControlToValidate="TextBox1"
                            CssClass="validation-message">
                        </asp:RequiredFieldValidator>

                    </div>



                    <!-- AGE -->

                    <div class="form-group">

                        <label class="form-label">

                            Age

                        </label>


                        <asp:TextBox
                            ID="TextBox12"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>


                        <asp:RangeValidator
                            ID="RangeValidator1"
                            runat="server"
                            ErrorMessage="Minimum Age 18"
                            ControlToValidate="TextBox12"
                            MaximumValue="150"
                            MinimumValue="18"
                            Type="Integer"
                            CssClass="validation-message">
                        </asp:RangeValidator>

                    </div>

                </div>



                <!-- ================= PHONE + EMAIL ================= -->

                <div class="form-row">


                    <!-- PHONE -->

                    <div class="form-group">

                        <label class="form-label">

                            Phone Number

                        </label>


                        <asp:TextBox
                            ID="TextBox9"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>


                        <asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1"
                            runat="server"
                            ErrorMessage="Please enter a valid Phone Number"
                            ControlToValidate="TextBox9"
                            ValidationExpression="^[6789]\d{9}$"
                            CssClass="validation-message">
                        </asp:RegularExpressionValidator>

                    </div>



                    <!-- EMAIL -->

                    <div class="form-group">

                        <label class="form-label">

                            Email

                        </label>


                        <asp:TextBox
                            ID="TextBox4"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>


                        <asp:RegularExpressionValidator
                            ID="RegularExpressionValidator2"
                            runat="server"
                            ErrorMessage="Please enter a proper Email"
                            ControlToValidate="TextBox4"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            CssClass="validation-message">
                        </asp:RegularExpressionValidator>

                    </div>

                </div>



                <!-- ================= ADDRESS ================= -->

                <div class="form-group"
                     style="margin-bottom: 20px;">

                    <label class="form-label">

                        Address

                    </label>


                    <asp:TextBox
                        ID="TextBox5"
                        runat="server"
                        TextMode="MultiLine"
                        CssClass="form-textarea">
                    </asp:TextBox>


                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3"
                        runat="server"
                        ErrorMessage="Please Enter the Address"
                        ControlToValidate="TextBox5"
                        CssClass="validation-message">
                    </asp:RequiredFieldValidator>

                </div>



                <!-- ================= PINCODE ================= -->

                <div class="form-group"
                     style="margin-bottom: 25px;">

                    <label class="form-label">

                        Pincode

                    </label>


                    <asp:TextBox
                        ID="TextBox10"
                        runat="server"
                        CssClass="form-input">
                    </asp:TextBox>


                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator4"
                        runat="server"
                        ErrorMessage="Please Enter the Pincode"
                        ControlToValidate="TextBox10"
                        CssClass="validation-message">
                    </asp:RequiredFieldValidator>

                </div>



                <!-- =================================================
                     ACCOUNT INFORMATION
                ================================================= -->

                <div class="form-section-title">

                    Account Information

                </div>



                <!-- ================= USERNAME ================= -->

                <div class="form-group"
                     style="margin-bottom: 20px;">

                    <label class="form-label">

                        Username

                    </label>


                    <asp:TextBox
                        ID="TextBox7"
                        runat="server"
                        CssClass="form-input">
                    </asp:TextBox>


                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        runat="server"
                        ErrorMessage="Please Enter the Username"
                        ControlToValidate="TextBox7"
                        CssClass="validation-message">
                    </asp:RequiredFieldValidator>

                </div>



                <!-- ================= PASSWORD + CONFIRM ================= -->

                <div class="form-row">


                    <!-- PASSWORD -->

                    <div class="form-group">

                        <label class="form-label">

                            Password

                        </label>


                        <asp:TextBox
                            ID="TextBox8"
                            runat="server"
                            TextMode="Password"
                            CssClass="form-input">
                        </asp:TextBox>


                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator5"
                            runat="server"
                            ErrorMessage="Please Enter the Password"
                            ControlToValidate="TextBox8"
                            CssClass="validation-message">
                        </asp:RequiredFieldValidator>

                    </div>



                    <!-- CONFIRM PASSWORD -->

                    <div class="form-group">

                        <label class="form-label">

                            Confirm Password

                        </label>


                        <asp:TextBox
                            ID="TextBox11"
                            runat="server"
                            TextMode="Password"
                            CssClass="form-input">
                        </asp:TextBox>


                        <asp:CompareValidator
                            ID="CompareValidator1"
                            runat="server"
                            ErrorMessage="The Password doesn't match"
                            ControlToCompare="TextBox8"
                            ControlToValidate="TextBox11"
                            CssClass="validation-message">
                        </asp:CompareValidator>

                    </div>

                </div>



                <!-- ================= REGISTER BUTTON ================= -->

                <asp:Button
                    ID="Button1"
                    runat="server"
                    Text="Create Account"
                    OnClick="Button1_Click1"
                    CssClass="register-button" />



                <!-- ================= SUCCESS MESSAGE ================= -->

                <asp:Label
                    ID="Label11"
                    runat="server"
                    Text="Successfully Registered"
                    Visible="False"
                    CssClass="success-message">
                </asp:Label>



                <div class="register-note">

                    By creating an account, you can shop fresh groceries
                    and manage your FoodMart orders easily.

                </div>


            </div>

        </div>

    </div>

</asp:Content>