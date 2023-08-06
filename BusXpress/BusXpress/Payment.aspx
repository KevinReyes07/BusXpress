<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs"  Async="true" Inherits="BusXpress.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BusXpress Payment Method</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="css/bootstrap.payment.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.payment.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>                       
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>       
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
        <div>
            <div class="container">

<div class="page-header">
    <h1>ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤBusXpress Payment Method<small></small></h1>
</div>


<!-- ======= Header ======= -->
<div id="logo">
</div>
<nav id="navbar" class="navbar">
  <ul>
  
    <li><a class="nav-link scrollto" href="/TravelOptions.aspx">Return</a></li>
  
  </ul>
  <i class="bi bi-list mobile-nav-toggle"></i>
</nav><!-- .navbar -->
</div>
</header><!-- End Header -->

<!-- Credit Card Payment Form - START -->

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h3 class="text-center">Payment Details</h3>
                        <img class="img-responsive cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png"/>
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD NUMBER</label>
                                    <div class="input-group">
                                        <%--<input type="tel" class="form-control" placeholder="Valid Card Number" />--%>
                                        <asp:TextBox ID="ValidCard" class="form-control" type="text" runat="server" onpaste="return false" onkeypress="javascript:return solonumeros(event)" minlength="12" MaxLength="19"></asp:TextBox>
                                        <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <%--<input type="tel" class="form-control" placeholder="MM / YY" />--%>
                                    <asp:TextBox ID="ExpirationCard" class="form-control" runat="server" placeholder="MM / YY" onkeypress="javascript:return solonumeros(event)" minlength="4" MaxLength="4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label>CV CODE</label>
                                    <%--<input type="tel" class="form-control" placeholder="CVC" />--%>
                                    <asp:TextBox ID="TxtCVC" type="tex" class="form-control" runat="server" placeholder="CVC" onpaste="return false" onkeypress="javascript:return solonumeros(event)" minlength="3" MaxLength="3"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                    <%--<input type="text" class="form-control" placeholder="Card Owner Names" />--%>
                                    <asp:TextBox ID="CardOwner" type="text" class="form-control" runat="server" onkeypress="return validar(event)" placeholder="Card Owner Names"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-12">
                            <%--<button class="btn btn-warning btn-lg btn-block">Process your Payment</button>--%>
                            <asp:Button ID="PayConfirm" class="btn btn-warning btn-lg btn-block" runat="server" Text="Process your Payment" OnClick="Paypal_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .cc-img {
        margin: 0 auto;
    }
</style>
<!-- Credit Card Payment Form - END -->
</div>
        
    </form>
</body>
</html>
