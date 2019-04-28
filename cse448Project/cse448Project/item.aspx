<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="item.aspx.cs" Inherits="cse448Project.item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h2>Item name</h2>  
    <div class="container">
        <div class="row">
  <div id="myCarousel" class="carousel slide col-md-9" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="apple.jpg" alt="headphone1" width="450" height = "300">
      </div>

      <div class="item">
        <img src="GUEST_66d6b45f-c4ac-4023-831d-4c7f85b9eb49.jpg" alt="headphone2" width="450" height = "300">
      </div>
    
      <div class="item">
        <img src="images.jpg" alt="headphone3" width="450" height = "300">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
        <div style ="float:right">
            <p>Price</p>
            <br><p>Description</p>
            <br><p>Owner</p>
            <br><p>Seller</p>
            <br><p>newness</p>
            <br><p>category</p>
        </div>
    </div>
 </div>

</asp:Content>
