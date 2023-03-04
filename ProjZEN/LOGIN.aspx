<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="ProjZEN.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Blood Bank</title>
  <meta name="description" content="Hi5Dash - HTML5 Admin Template By Jewel Theme">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="apple-touch-icon" href="apple-touch-icon.html">

  <!-- Import Template Icons CSS Files -->
  <link rel="stylesheet" href="main/assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="main/assets/css/simple-line-icons.css">
  <link rel="stylesheet" href="main/assets/css/linea-basic.css">

  <!-- Import Custom Country Select CSS Files -->
  <link rel="stylesheet" href="main/assets/css/countrySelect.min.css">

  <!-- Import Perfect ScrollBar CSS Files -->
  <link rel="stylesheet" href="main/assets/css/perfect-scrollbar.css">   

  <!-- Import Bootstrap CSS File -->

  <link rel="stylesheet" href="main/assets/css/bootstrap.min.css"> 

  <!-- Import Template's CSS Files -->
  <link rel="stylesheet" href="main/assets/css/presets.css">
  <link rel="stylesheet" href="main/assets/css/style.css">
  <link rel="stylesheet" href="main/assets/css/pages/pages.css">
  <link rel="stylesheet" href="main/assets/css/responsive.css">

</head>
<body>
    
        <div class="admin-login d-flex align-content-center flex-wrap">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 offset-md-3">
          <div class="login-content bg-light">
            <div class="login-logo pt-4 pb-3 background-bg" data-image-src="main/images/we.jpg">
              <a href="#" class="navbar-brand"> 
                <img class="align-content" src="IMAGE/Blood.png" alt=""> 
                  <%--<img src="../logo.png" alt="Site Logo">--%>
              </a>
              <p class="mt-2 mb-0 color-white">Blood Bank Management System</p>
            </div>
            <div class="login-form">
              <form id="form1" runat="server">
                <div class="form-group">
                  <lSource Sans Pro>Email address</lSource Sans Pro>
                  <%--<input type="email" class="form-control" placeholder="Email">--%>
                    <asp:TextBox ID="txtmail" runat="server" type="email" class="form-control" placeholder="Email">
                    </asp:TextBox>
                </div>
                <div class="form-group">
                  <lSource Sans Pro>Password</lSource Sans Pro>
                  <%--<input type="password" class="form-control" placeholder="Password">--%>
                    <asp:TextBox ID="txtpass" type="password" class="form-control" TextMode="Password" placeholder="Password" runat="server">
                    </asp:TextBox>
                </div>
                <%--<div class="form-group">
                    <lSource Sans Pro>Category</lSource Sans Pro>
                    <asp:DropDownList ID="drpLogin" class="form-control" runat="server">
                        <asp:ListItem>Admin login</asp:ListItem>
                        <asp:ListItem>Users login</asp:ListItem>
                        <asp:ListItem>Donors Login</asp:ListItem>
                    </asp:DropDownList>
                </div>--%>
                <div class="checkbox">
                  

                </div>
                
                  <asp:Button ID="BtnSubmit" type="submit" class="btn btn-primary btn-flat mb-3 mt-3" runat="server" Text="Login" OnClick="BtnSubmit_Click"/>
                <div><br /></div>
                  <div class="register-link mt-1 text-center">
                     <asp:Label ID="errlbl" runat="server" Font-Bold="True" ForeColor="Red" Text="" Font-Size="Medium"></asp:Label>
                  </div>

                <div class="register-link mt-1 text-center">
                  <p>Don't have account ? <a href="SignUp.aspx"> Sign Up Here</a></p>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



  <script src="main/assets/js/jquery-3.2.1.slim.min.js"></script>
  <script src="main/assets/js/plugins.js"></script>
  <script src="main/assets/js/main.js"></script>
    
</body>

</html>
