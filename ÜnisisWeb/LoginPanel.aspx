<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="ÜnisisWeb.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
        #form1 {
            height: 1080px;
        }

        .auto-style2 {
            color: #FFFFFF;
        }

        .newStyle1 {
            font-family: "Segoe Script";
        }

        .auto-style3 {
            color: #FFFFFF;
            font-weight: 700;
        }

        .auto-style4 {
            color: #FFFFFF;
            font-weight: 700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('ArkaPlan.jpg')">
        <div style="width: 700px; margin: auto">
            <br />
            <h1 style="text-align: center" class="auto-style2"><span class="newStyle1">Web Not Sistemi</span></h1>
            <br />
            <br />
            <br />
            <div style="margin: auto; text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl="~/Avatar.jpg" />
            </div>
            <br />
            <br />
            <div>
                <asp:Label for="TxtNumara" runat="server" CssClass="auto-style3">Kullanıcı Adı</asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control " Width="700px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtSifre" runat="server" CssClass="auto-style4">Şifre</asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Width="700px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click1" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="200px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-default" Width="300px" />
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width="190px" />


        </div>
    </form>
</body>
</html>
