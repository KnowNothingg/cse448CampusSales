<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="cse448Project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-md-4">
        <h2>item 1</h2>
        <img src="apple.jpg" height="255" width="255"/>
        <p>item description--------------------</p>
            <p>
                <a class="btn btn-default" href="item">item detail &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
        <h2>item 2</h2>
        <img src="GUEST_66d6b45f-c4ac-4023-831d-4c7f85b9eb49.jpg" height="255" width="255"/>
        <p>item description--------------------</p>
            <p>
                <a class="btn btn-default" href="item">item detail &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
        <h2>item 3</h2>
        <img src="images.jpg" height="255" width="255"/>
        <p>item description--------------------</p>
            <p>
                <a class="btn btn-default" href="item">item detail &raquo;</a>
            </p>
        </div>
    </div>

    <asp:Label ID="lblUsers" runat="server" Text=""></asp:Label>

</asp:Content>

