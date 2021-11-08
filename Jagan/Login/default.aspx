<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Jagan.Login.deafult" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Style/login.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title></title>


</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>

        <div class="wrapper fadeInDown">
            <div id="formContent">


                <div>
                    <asp:TextBox ID="txtNomeUsuario" placeholder="Usuário" runat="server" CssClass="fadeIn second"></asp:TextBox>
                    <asp:TextBox ID="txtSenha" placeholder="Senha" TextMode="password" runat="server" CssClass="fadeIn third"></asp:TextBox>
                    <asp:Button ID="btnLogin" runat="server" Text="Acessar" OnClick="btnLogin_Click" CssClass="fadeIn fourth" />

                </div>


            </div>
        </div>

    </form>
</body>
</html>
