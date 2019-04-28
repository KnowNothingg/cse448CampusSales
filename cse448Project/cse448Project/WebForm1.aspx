<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body>
    
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server">Campus Sale</a></li>
                       <li><a runat="server" href="~/Contact">Contact</a></li>
      
                    </ul>
                    <asp:LoginView runat="server" ViewStateMode="Disabled">
                       
                                        </asp:LoginView>
                    </div>
          </div>
            </div>


     <h1>Campus Sale</h1>

    <div class ="container">
        <div>
            <div class ="col-sm-6">
            <p> Welcome to Miami University Compus Sale. This is a online selling website;</p>
            </div>

            <div class ="col-sm-4">
                            <ul class="nav navbar-right">
                                <li><button class ="btn btn-default" runat="server"><a runat="server" href="~/Account/Register">Register</a></button></li>
                                <br>
                                <li><button class= "btn btn-default" runat="server"><a runat="server" href="~/Account/Login">Log in</a></button></li>
                            </ul>

            </div>
           

    </div>


    </div>
</asp:Content>
</body>