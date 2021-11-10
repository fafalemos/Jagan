<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Jagan.Login.Cadastro" %>

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
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <div>
                    <asp:TextBox ID="txtNomeUsuario" placeholder="Digite seu usuário" runat="server" CssClass="fadeIn second"></asp:TextBox>
                    <asp:TextBox ID="txtSenha" placeholder="Digite uma senha" runat="server" CssClass="fadeIn third"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" placeholder="Digite seu email" runat="server" CssClass="fadeIn third"></asp:TextBox>
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" CssClass="fadeIn fourth" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
