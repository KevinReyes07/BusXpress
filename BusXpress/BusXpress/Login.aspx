<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusXpress.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title>Login</title>
    <link rel="icon" type="image/x-icon" href="images/Bus.png" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure>
                            <img src="images/image5.jpg" alt="sing up image"></figure>
                        <a href="/SignUp.aspx" class="signup-image-link">Create an account to access BusXpress</a>
                         <a href="/RecoverAccount.aspx" class="signup-image-link">Forgot password?</a>
                        <%--<asp:Button ID="LoginToInicio" href="#" runat="server" Text="Create an account" BackColor="White" BorderColor="White" BorderStyle="None" ForeColor="Black" OnClick="LoginToInicio_Click"  />--%>
                    </div>
                    <div class="signin-form">
                        <h2 class="form-title">Log In</h2>
                        <h3 class="Welcome-to-BusXpress" style="font-size: 20px">Hello again</h3>
                        <form method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <%--<input type="text" name="your_name" id="your_name" placeholder="Your Name" />--%>
                                <asp:TextBox type="text" ID="LoginUser" runat="server" placeholder="Username"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <%-- <input type="password" name="your_pass" id="your_pass" placeholder="Password" />--%>
                                <asp:TextBox type="password" ID="LoginPass" runat="server" placeholder="Password"></asp:TextBox>
                            <%--</div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>--%>
                                <br />
                                <br />
                            <div class="form-group form-button">
                                <%--<input type="submit" name="signin" id="signin" class="form-submit" value="Log in" />--%>
                                <asp:Button ID="ConfirmSession" runat="server" Text="Log In" OnClick="ConfirmSession_Click" />
                            </div>
                        </form>
    <%--<div class="social-login">
                            <span class="social-label">Or login with</span>--%>                           <%-- <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>--%>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        </div>

        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() { dataLayer.push(arguments); }
            gtag('js', new Date());

            gtag('config', 'UA-23581568-13');
        </script>
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7c9ef799eae3ef02","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}' crossorigin="anonymous"></script>
        <div>
        </div>
         <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
    </form>
</body>
</html>
