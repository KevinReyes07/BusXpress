<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BusXpress.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title>Registro</title>
    <link rel="icon" type="image/x-icon" href="images/Bus.png" />
</head>

<body>
    <form id="form1" runat="server">

        <script type="text/javascript">
            function validar(e) { // 1
                tecla = (document.all) ? e.keyCode : e.which; // 2
                if (tecla == 8) return true; // 3
                patron = /[A-Za-z\s]/; // 4
                te = String.fromCharCode(tecla); // 5
                return patron.test(te); // 6
            }
        </script>

        <script type="text/javascript">
            function numeros(nu) { // 1
                tecla = (document.all) ? e.keyCode : e.which; // 2
                if (tecla == 8) return true; // 3
                ppatron = /\d/; // Solo acepta números// 4
                te = String.fromCharCode(tecla); // 5
                return patron.test(te); // 6
            }
        </script>

        <script>
            function solonumeros(e) {
                var key;
                if (window.event) // IE
                {
                    key = e.keyCode;
                }
                else if (e.which) // Netscape/Firefox/Opera
                {
                    key = e.which;
                }
                if (key < 48 || key > 57) {
                    return false;
                }
                return true;
            }

        </script>
        <div class="main">

            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign Up</h2>
                            <h3 style="font-size: 20px">Welcome to BusXpress</h3>
                            <form method="POST" class="register-form" id="register-form">
                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <%--<input type="text" name="name" id="name" placeholder="Your Name" />--%>
                                    <asp:TextBox type="text" ID="TextName" runat="server" placeholder="First Names" onpaste="return false" minlength="3" MaxLength="30" onkeypress="return validar(event)"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <asp:TextBox type="text" ID="TextLast" runat="server" placeholder="Last Names" onpaste="return false" minlength="3" MaxLength="30" onkeypress="return validar(event)"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <asp:TextBox type="text" ID="TextUsername" runat="server" placeholder="Username" onpaste="return false" minlength="3" MaxLength="20"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label>
                                    <%--<input type="email" name="email" id="email" placeholder="Your Email" />--%>
                                    <asp:TextBox type="email" ID="TextEmail" runat="server" placeholder="Email" onpaste="return false" minlength="6" MaxLength="50"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <asp:TextBox type="number" ID="TextAge" runat="server" placeholder="Age"  min="18" max="120" onpaste="return false" onkeypress="javascript:return solonumeros(event)" minlength="2" MaxLength="3"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <%--<input type="password" name="pass" id="pass" placeholder="Password" />--%>
                                    <asp:TextBox type="password" ID="TextPassword" runat="server" placeholder="Password" minlength="5" MaxLength="30"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <%--<input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" />--%>
                                    <asp:TextBox type="password" ID="TextRepeat" runat="server" placeholder="Repeat password" minlength="5" MaxLength="30"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="agree-term" class="label-agree-term"><span><span></span></span>Learn more about us with <a href="/Terms_and_conditions.aspx" class="term-service">Terms of service</a></label>
                                </div>

                                <div class="form-group form-button">
                                   
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Button runat="server" Text="Sign Up" OnClick="Sign_up" />



                                    <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                                </div>
                            </form>
                        </div>
                        <div class="signup-image" style="background-color: #FFFFFF">
                            <figure>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <img src="images/image4.jpg" alt="sing up image">
                            </figure>
                            <a href="/Login.aspx" ID="RegistroToLogin" class="signup-image-link">I already have an account</a>
                           <%-- <asp:Button ID="RegistroToLogin" href="#" runat="server" Text="I have an account" class="signup-image-link" BackColor="White" BorderColor="Black" ForeColor="Black"  OnClick="RegistroToLogin_Click" Width="280px" />--%>
                            <%-- <a href="#" ID="RegistroToLogin">I have an account</a>--%>
                            <%--<asp:Button ID="RegistroToLogin"--%>
                        </div>
                    </div>
                </div>
            </section>
    </form>
</body>
</html>
