<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDriver.aspx.cs" Inherits="BusXpress.AddDriver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Add - Driver</title>
    <link href="css/all.min.css" rel="stylesheet" type="text/css" />
    <link rel="icon" type="image/x-icon" href="images/Bus.png" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet" />
    <link href="EstilosCss/EstilosStorage.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.js"></script>
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />
    <link href="css/busxpress-admin.min.css" rel="stylesheet" />
</head>
<body id="page-top">
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
            function NumCheck(e, field) {
                key = e.keyCode ? e.keyCode : e.which
                // backspace
                if (key == 8) return true
                // 0-9
                if (key > 47 && key < 58) {
                    if (field.value == "") return true
                    regexp = /.[0-9]{2}$/
                    return !(regexp.test(field.value))
                }
                // .
                if (key == 46) {
                    if (field.value == "") return false
                    regexp = /^[0-9]+$/
                    return regexp.test(field.value)
                }
                // other key
                return false
            }
        </script>
        <div>
            <!-- Page Wrapper -->
            <div id="wrapper">

                <!-- Sidebar -->
                <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                    <!-- Sidebar - Brand -->
                    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/Admin.aspx">
                        <div class="sidebar-brand-icon rotate-n-15">
                            <i class=""></i>
                        </div>
                        <div class="sidebar-brand-text mx-3">Administrator Panel <sup></sup></div>
                    </a>

                    <!-- Divider -->
                    <hr class="sidebar-divider my-0">

                    <!-- Nav Item - Dashboard -->
                    <li class="nav-item">
                        <a class="nav-link" href="/Admin.aspx">
                            <i class=""></i>
                            <span>Dashboard</span></a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider">

                    <!-- Heading -->
                    <div class="sidebar-heading">
                        Interface
                    </div>

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="/AdminTicket.aspx" data-toggle="collapse" data-target="#collapseTwo"
                            aria-expanded="true" aria-controls="collapseTwo">
                            <i class=""></i>
                            <span>Tickets</span>
                        </a>
                        <!--div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>
                </div-->
                    </li>

                    <!-- Nav Item - Utilities Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="/AdminDriver.aspx" data-toggle="collapse" data-target="#collapseUtilities"
                            aria-expanded="true" aria-controls="collapseUtilities">
                            <i class=""></i>
                            <span>Driver</span>
                        </a>

                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider">

                    <!-- Heading -->
                    <div class="sidebar-heading">
                        Addons
                    </div>

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item active">
                        <a class="nav-link collapsed" href="/AddDriver.aspx" data-toggle="collapse" data-target="#collapsePages"
                            aria-expanded="true" aria-controls="collapsePages">
                            <i class=""></i>
                            <span>Add</span>
                        </a>

                    </li>

                    <!-- Nav Item - Charts -->
                    <li class="nav-item">
                        <a class="nav-link" href="/EditDriver.aspx">
                            <i class=""></i>
                            <span>Edit</span></a>
                    </li>

                    <!-- Nav Item - Tables -->
                    <li class="nav-item">
                        <a class="nav-link" href="/DeleteDriver.aspx">
                            <i class=""></i>
                            <span>Delete</span></a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider d-none d-md-block">
                </ul>
                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Topbar -->
                        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">



                            <!-- Topbar Search -->
                            <div>
                                <i class="Admin-presentation">Admin - BusXpress</i>
                            </div>



                            <!-- Topbar Navbar -->
                            <ul class="navbar-nav ml-auto">



                                <div class="topbar-divider d-none d-sm-block"></div>

                                <!-- Nav Item - User Information -->
                                <li class="nav-item dropdown no-arrow">
                                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="mr-2 d-none d-lg-inline text-gray-600 small">BusXpress</span>
                                        <img class="img-profile rounded-circle"
                                            src="images/bus.png">
                                    </a>

                                </li>

                            </ul>

                        </nav>
                        <!-- End of Topbar -->

                        <!-- Begin Page Content -->
                        <div class="container-fluid">

                            <!-- Page Heading -->
                            <h1 class="h3 mb-2 text-gray-800">Add - Driver</h1>
                            <p class="mb-4">
                                Here you can add drivers.<a target="_blank"
                                    href="#"></a>
                            </p>

                            <!-- DataTales Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Driver</h6>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                            <!--nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top"-->
                                            <%--<a class="navbar-brand" href="MainPage.aspx">BusXpress</a>--%>
                                            <%--<asp:Button ID="btnInicio" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btnInicio_Click" />--%>
        </nav>
        <br />
                                            <br />
                                            <div class="my-content">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-sn-12">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <br />
                                                        <br />
                                                        <div class="col-sm-6 col-sm-offset-3 myform-cont">
                                                            <br />
                                                            <br />
                                                            <h1>Add Diver</h1>
                                                            <div class="myform-top">
                                                            </div>
                                                            <div class="myform-bottom">
                                                                <div role="form" action="" method="post" class="">
                                                                    <br />

                                                                    <div class="form-group">
                                                                        <asp:TextBox ID="txtname" runat="server" placeholder="Driver Name..." type="text" class="form-control" onpaste="return false"></asp:TextBox>
                                                                    </div>
                                                                    <br />


                                                                    <div class="form-group">
                                                                        <asp:DropDownList class="form-control" ID="ddlBuss" runat="server">

                                                                            <asp:ListItem Text="Assigned Bus..." Value="Assigned Bus" />
                                                                            <asp:ListItem Text="Bus 1" Value="1" />
                                                                            <asp:ListItem Text="Bus 2" Value="2" />

                                                                        </asp:DropDownList>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <asp:DropDownList class="form-control" ID="ddlDeparture" runat="server">

                                                                            <asp:ListItem Text="Departure..." Value="Select Bus" />
                                                                            <asp:ListItem Text="San Salvador Terminal, El Salvador" Value="1" />
                                                                            <asp:ListItem Text="Guatemala City Terminal, Guatemala" Value="2" />
                                                                            <asp:ListItem Text="Tegucigalpa Terminal, Honduras" Value="3" />
                                                                            <asp:ListItem Text="Managua Terminal, Nicaragua" Value="4" />
                                                                            <asp:ListItem Text="San Jose Terminal, Costa Rica" Value="5" />
                                                                            <asp:ListItem Text="Panama City Terminal, Panama" Value="6" />

                                                                        </asp:DropDownList>
                                                                    </div>


                                                                    <div class="form-group">
                                                                        <asp:DropDownList class="form-control" ID="ddlDestiny" runat="server">

                                                                            <asp:ListItem Text="Destiny..." Value="Select Bus" />
                                                                            <asp:ListItem Text="San Salvador Terminal, El Salvador" Value="1" />
                                                                            <asp:ListItem Text="Guatemala City Terminal, Guatemala" Value="2" />
                                                                            <asp:ListItem Text="Tegucigalpa Terminal, Honduras" Value="3" />
                                                                            <asp:ListItem Text="Managua Terminal, Nicaragua" Value="4" />
                                                                            <asp:ListItem Text="San Jose Terminal, Costa Rica" Value="5" />
                                                                            <asp:ListItem Text="Panama City Terminal, Panama" Value="6" />

                                                                        </asp:DropDownList>
                                                                    </div>

                                                                    <asp:Button ID="ADDBUTTON" runat="server" Text="Add" OnClick="ADDBUTTON_Click1" />



                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                        </table>



                                    </div>
                                    <div class="container">
                                        <asp:GridView ID="gvdlist" runat="server" AutoGenerateColumns="False" Width="1004px" Height="80px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="ID_driver" HeaderText="ID_driver" />
                                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                                <asp:BoundField DataField="Bus" HeaderText="Bus" />
                                                <asp:BoundField DataField="Departure" HeaderText="Departure Point" />
                                                <asp:BoundField DataField="Destiny" HeaderText="Destiny" />

                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#dca73a" Font-Bold="True" ForeColor="Black" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>


                        </div>

                        <!-- /.container-fluid -->

                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <footer class="sticky-footer bg-white">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; BusXpress 2023</span>
                            </div>
                        </div>

                        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                        <script src="js/bootstrap.min.js"></script>
                    </footer>
                    <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->



            <!-- Bootstrap core JavaScript-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin-2.min.js"></script>

            <!-- Page level plugins -->
            <script src="vendor/datatables/jquery.dataTables.min.js"></script>
            <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

            <!-- Page level custom scripts -->
            <script src="js/demo/datatables-demo.js"></script>
    </form>
</body>
</html>
