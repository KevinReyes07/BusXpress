<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelOptions.aspx.cs" Inherits="BusXpress.TravelOptions" %>

<!DOCTYPE html>
<html lang="en-US" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>voyage | Landing, Corporate &amp;Business Templatee</title>
    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicons/favicon.ico">
    <link rel="manifest" href="img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="css/theme.min.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bus_seat.css" />


</head>


<body>
    <form runat="server">

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

        <!-- ===============================================-->
        <!--    Main Content-->
        <!-- ===============================================-->
        <main class="main" id="top">
            <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll">
                <div class="container">
                    <a class="navbar-brand" href="/MainPage.aspx">
                        <img class="d-inline-block" src="images/img/logo.png" width="50" alt="logo" />
                        <span class="fw-bold text-primary ms-2">BusXpress</span>
                    </a>
                    <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
                        <div class="navbar-nav mx-auto pt-2 pt-lg-0 font-base">
                            <!--li class="nav-item px-2">
                          <a class="nav-link fw-medium active" aria-current="page" href="#destinations">
                              <span class="nav-link-icon text-800 me-1 fas fa-map-marker-alt"></span>
                              <span class="nav-link-text">Locations </span>
                          </a>
                      </!--li-->
                            <!--li class="nav-item px-2">
                          <a class="nav-link" href="#flights">
                              <span class="nav-link-icon text-800 me-1 fas fa-plane"></span>
                              <span class="nav-link-text">Flights</span>
                          </a>
                      </!--li-->
                            <li class="nav-item px-2">
                                <a class="nav-link" href="/MainPage.aspx">
                                    <span class="nav-link-icon text-800 me-1 fas fa-hotel"></span>
                                    <span class="nav-link-text">Return</span>
                                </a>
                            </li>
                            <!--div class="nav-item px-2">
                          <asp:Button ID="Return_Tickets" class="nav-link nav-link-text " runat="server" Text="Return" />
                      </!--div>
                      </div>
                      <!--li class="nav-item px-2">
                          <a class="nav-link" href="#activities">
                              <span class="nav-link-icon text-800 me-1 fas fa-bolt"></span>
                              <span class="nav-link-text">Activities</span>
                          </a>
                      </!--li-->

                            <!--div class="nav-item px-2">
                      <asp:Button ID="Return_MainPage"  class="nav-link nav-link-icon text-800 me-1 fas fa-bolt nav-link-text" runat="server" Text="Return" />
                  </!--div-->
                            <div>
                                <!--asp:button class="btn text-800 order-1 order-lg-0 me-2" href="/MainPage.aspx" type="button">Return</!--asp:button>
                      <asp:Button ID="Back_MainPage" href="/MainPage.aspx" class="btn text-800 order-1 order-lg-0 me-2" runat="server" Text="Log Out" OnClick="Back_MainPage_Click" />
                      <!--button class="btn btn-voyage-outline order-0" type="submit">
                          <span class="text-primary">Sign in</!--span>
                      </!--button-->
                                <asp:Button ID="LogOut_Ticket" href="/Welcome.aspx" class="btn text-800 order-1 order-lg-0 me-2" runat="server" Text="Log Out" OnClick="LogOut_Ticket_Click" />
                            </div>
                        </div>
                    </div>
            </nav>
            <section class="mt-7 py-0">
                 <div class="bg-holder w-50 bg-right d-none d-lg-block" style="background-image:url(images/img/busito1.png);"></div>
                <!--/.bg-holder-->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 py-5 py-xl-5 py-xxl-7">
                            <h1 class="display-3 text-1000 fw-normal">Let’s make a tour</h1>
                            <h1 class="display-3 text-primary fw-bold">Discover new travels in your life</h1>
                            <div class="pt-5">
                                <nav>

                                    <div class="tab-content" id="nav-tabContent">
                                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                            <div class="row g-4 mt-5">
                                                <div class="col-sm-6 col-md-6 col-xl-5">
                                                    <div class="input-group-icon">
                                             <label class="form-label visually-hidden" for="ddlStartingPoint">Starting Point:</label>
                                                  <asp:DropDownList class="form-select form-voyage-select input-box" ID="ddlStartingPoint" runat="server">
                                                    
                                                      <asp:ListItem Text="From" Value="From" />
                                                      <asp:ListItem Text="San Salvador Terminal, El Salvador" Value="1" />
                                                      <asp:ListItem Text="Guatemala City Terminal, Guatemala" Value="2" />
                                                      <asp:ListItem Text="Tegucigalpa Terminal, Honduras" Value="3" />
                                                      <asp:ListItem Text="Managua Terminal, Nicaragua" Value="4" />
                                                      <asp:ListItem Text="San Jose Terminal, Costa Rica" Value="5" />
                                                      <asp:ListItem Text="Panama City Terminal, Panama " Value="6" />

                                                  </asp:DropDownList>
                                                  <span class="nav-link-icon text-800 fs--1 input-box-icon">
                                                      <i class="fas fa-user"></i>
                                                  </span>
                                              </div>
                                          </div>
                                                <div class="col-sm-6 col-md-6 col-xl-5">
                                                    <div class="input-group-icon">
                                                        <label class="form-label visually-hidden" for="ddlDestination">Destination:</label>
                                                        <asp:DropDownList class="form-select form-voyage-select input-box" ID="ddlDestination" runat="server">

                                                            <asp:ListItem Text="To" Value="to" />
                                                            <asp:ListItem Text="San Salvador Terminal, El Salvador" Value="1" />
                                                            <asp:ListItem Text="Guatemala Terminal, Guatemala" Value="2" />
                                                            <asp:ListItem Text="Tegucigalpa Terminal, Honduras" Value="3" />
                                                            <asp:ListItem Text="Managua Terminal, Nicaragua" Value="4" />
                                                            <asp:ListItem Text="San Jose Terminal, Costa Rica" Value="5" />
                                                            <asp:ListItem Text="Panama City Terminal, Panama" Value="6" />
                                                        </asp:DropDownList>
                                                        <span class="nav-link-icon text-800 fs--1 input-box-icon">
                                                            <i class="fas fa-user"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-md-6 col-xl-5">
                                        <div class="input-group-icon">
                                            <label for="txtBirthday"></label>
                                            <asp:TextBox ID="txtBirthday" class="form-control input-box form-voyage-control" runat="server" type="date"></asp:TextBox>
                                            <span class="nav-link-icon text-800 fs--1 input-box-icon">
                                                <i class="fas fa-calendar"></i>
                                            </span>
                                        </div>
                                    </div>
                                                <div class="col-sm-6 col-md-6 col-xl-5">
                                                    <div class="input-group-icon">
                                                        <label for="txtDueDate"></label>
                                                        <asp:TextBox ID="txtDueDate" class="form-control input-box form-voyage-control" runat="server" type="date"></asp:TextBox>
                                                        <span class="nav-link-icon text-800 fs--1 input-box-icon">
                                                            <i class="fas fa-calendar"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-md-6 col-xl-5">
                                                    <div class="input-group-icon">
                                                        <label class="form-label visually-hidden" for="txtPassengers">Number of Passengers:</label>
                                                        <asp:TextBox ID="txtPassengers" class="form-control input-box form-voyage-control" runat="server" type="text" placeholder="Number of Passengers" onkeypress="javascript:return solonumeros(event)" minlength="1" MaxLength="2"></asp:TextBox>
                                                        <span class="nav-link-icon text-800 fs--1 input-box-icon">
                                                            <i class="fas fa-map-marker-alt"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-md-6 col-xl-5">
                                                    <div class="input-group-icon">
                                                        <label class="form-label visually-hidden" for="userEmail">Email:</label>
                                                        <asp:TextBox ID="userEmail" class="form-control input-box form-voyage-control" runat="server" placeholder="Email"></asp:TextBox>
                                                        <span class="nav-link-icon text-800 fs--1 input-box-icon">
                                                            <i class="fas fa-map-marker-alt"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-md-6 col-xl-5">
                                                    <div class="input-group-icon">
                                                        <label class="form-label visually-hidden" for="userPhone">Phone number</label>
                                                        <asp:TextBox ID="userPhone" class="form-control input-box form-voyage-control" runat="server" placeholder="Phone Number" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                                                        <span class="nav-link-icon text-800 fs--1 input-box-icon">
                                                            <i class="fas fa-map-marker-alt"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <h1>Select your Seat</h1>
<div class="containerbus">
  <!-- Squared ONE -->
  <div class="autobus input-group-icon">

    <div class="fila">
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento1" name="check" />
          <label for="asiento1">1</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento2" name="check" />
          <label for="asiento2">2</label>
        </div>
      </div>
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento3" name="check" />
          <label for="asiento3">3</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento4" name="check" />
          <label for="asiento4">4</label>
        </div>
      </div>
    </div>

    <div class="fila">
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento5" name="check" />
          <label for="asiento5">5</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento6" name="check" />
          <label for="asiento6">6</label>
        </div>
      </div>
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento7" name="check" />
          <label for="asiento7">7</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento8" name="check" />
          <label for="asiento8">8</label>
        </div>
      </div>
    </div>

    <div class="fila">
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento9" name="check" />
          <label for="asiento9">9</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento10" name="check" />
          <label for="asiento10">10</label>
        </div>
      </div>
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento11" name="check" />
          <label for="asiento11">11</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento12" name="check" />
          <label for="asiento12">12</label>
        </div>
      </div>
    </div>

    <div class="fila">
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento13" name="check" />
          <label for="asiento13">13</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento14" name="check" />
          <label for="asiento14">14</label>
        </div>
      </div>
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento15" name="check" />
          <label for="asiento15">15</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento16" name="check" />
          <label for="asiento16">16</label>
        </div>
      </div>
    </div>

    <div class="fila">
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento17" name="check" />
          <label for="asiento17">17</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento18" name="check" />
          <label for="asiento18">18</label>
        </div>
      </div>
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento19" name="check" />
          <label for="asiento19">19</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento20" name="check" />
          <label for="asiento20">20</label>
        </div>
      </div>
    </div>

    <div class="fila">
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento21" name="check" />
          <label for="asiento21">21</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento22" name="check" />
          <label for="asiento22">22</label>
        </div>
      </div>
      <div class="seccion">
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento23" name="check" />
          <label for="asiento23">23</label>
        </div>
        <div class="asiento">
          <input type="checkbox" value="None" id="asiento24" name="check" />
          <label for="asiento24">24</label>
        </div>
      </div>
    </div>
  </div>
</div>
                                                <div class="col-12 col-xl-10 col-lg-12 d-grid mt-6">
                                                    <asp:Button ID="btnSubmit" class="btn btn-secondary" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                                                </div>

                                            </div>


                                        </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ============================================-->
            <!-- <section> begin ============================-->
            <section class="py-0 overflow-hidden">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 px-0">
                           <img class="img-fluid order-md-0 mb-4 h-100 fit-cover" src="images/img/busito 2.png" alt="..."/>
                        </div>
                        <div class="col-lg-6 px-0 bg-primary-gradient bg-offcanvas-right">
                            <div class="mx-6 mx-xl-8 my-8">
                                <div class="align-items-center d-block d-flex mb-5">
                                    <img class="img-fluid me-3 me-md-2 me-lg-4" src="images/img/logo1.png" alt="..." />
                                    <div class="flex-1 align-items-center pt-2">
                                        <h5 class="fw-bold text-light">Visit the greatest places</h5>
                                    </div>
                                </div>
                                <div class="align-items-center d-block d-flex mb-5">
                                    <img class="img-fluid me-3 me-md-2 me-lg-4" src="images/img/reloj.png" alt="..." />
                                    <div class="flex-1 align-items-center pt-2">
                                        <h5 class="fw-bold text-light">Make your own plans.</h5>
                                    </div>
                                </div>
                                <div class="align-items-center d-block d-flex mb-5">
                                    <img class="img-fluid me-3 me-md-2 me-lg-4" src="images/img/descuento.png" alt="..." />
                                    <div class="flex-1 align-items-center pt-2">
                                        <h5 class="fw-bold text-light">Save 50% on your next trip</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end of .container-->
            </section>
            <!-- <section> close ============================-->
            <!-- ============================================-->

            <!-- <section> close ============================-->
            <!-- ============================================-->
            <!-- ============================================-->
            <!-- <section> begin ============================-->
            <br />
            <br />
            <br />
            <section class="py-0" id="flights">
                <div class="container-fluid">
                    <div class="row h-100">
                        <div class="col-lg-7 mx-auto text-center mb-6">
                            <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3">Travels</h5>
                        </div>
                    </div>
                    <div class="row g-0 flex-center">
                        <div class="col-12 col-sm-4 col-md-3 col-lg-4 col-xl-2">
                            <div class="d-flex flex-column justify-content-center px-3" style="background-color: #000000; min-height: 230px;">
                                <h5 class="text-light">El Salvador - Costa Rica</h5>
                                <h6 class="text-light fw-normal fs-0">From $75.60</h6>
                                <i class="fas fa-arrow-right text-light mt-4"></i>
                                <a class="stretched-link" href="#!"></a>
                            </div>
                        </div>
                        <div class="col-12 col-sm-4 col-md-3 col-lg-4 col-xl-2">
                            <div class="d-flex flex-column justify-content-center px-3" style="background-color: #dca73a; min-height: 230px;">
                                <h5 class="text-light">Guatemala - Nicaragua</h5>
                                <h6 class="text-light fw-normal fs-0">From $60.35</h6>
                                <i class="fas fa-arrow-right text-light mt-4"></i>
                                <a class="stretched-link" href="#!"></a>
                            </div>
                        </div>
                        <div class="col-12 col-sm-4 col-md-3 col-lg-4 col-xl-2">
                            <div class="d-flex flex-column justify-content-center px-3" style="background-color: #000000; min-height: 230px;">
                                <h5 class="text-light">Panama - Honduras</h5>
                                <h6 class="text-light fw-normal fs-0">From $70.50</h6>
                                <i class="fas fa-arrow-right text-light mt-4"></i>
                                <a class="stretched-link" href="#!"></a>
                            </div>
                        </div>
                        <div class="col-12 col-sm-4 col-md-3 col-lg-4 col-xl-2">
                            <div class="d-flex flex-column justify-content-center px-3" style="background-color: #dca73a; min-height: 230px;">
                                <h5 class="text-light">Guatemala - Panama</h5>
                                <h6 class="text-light fw-normal fs-0">From $85.90</h6>
                                <i class="fas fa-arrow-right text-light mt-4"></i>
                                <a class="stretched-link" href="#!"></a>
                            </div>
                        </div>
                        <div class="col-12 col-sm-4 col-md-3 col-lg-4 col-xl-2">
                            <div class="d-flex flex-column justify-content-center px-3" style="background-color: #000000; min-height: 230px;">
                                <h5 class="text-light">Nicaragua - Costa Rica </h5>
                                <h6 class="text-light fw-normal fs-0">From $60.50</h6>
                                <i class="fas fa-arrow-right text-light mt-4"></i>
                                <a class="stretched-link" href="#!"></a>
                            </div>
                        </div>
                        <div class="col-12 col-sm-4 col-md-3 col-lg-4 col-xl-2">
                            <div class="d-flex flex-column justify-content-center px-3" style="background-color: #dca73a; min-height: 230px;">
                                <h5 class="text-light">El Salvador - Costa Rica</h5>
                                <h6 class="text-light fw-normal fs-0">From $82.50</h6>
                                <i class="fas fa-arrow-right text-light mt-4"></i>
                                <a class="stretched-link" href="#!"></a>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- end of .container-->
            </section>

            <!-- <section> close ============================-->
            <!-- ============================================-->
        </main>
        <!-- ===============================================-->
        <!--    End of Main Content-->
        <!-- ===============================================-->
        <!-- ===============================================-->
        <!--    JavaScripts-->
        <!-- ===============================================-->





    </form>
</body>
</html>
