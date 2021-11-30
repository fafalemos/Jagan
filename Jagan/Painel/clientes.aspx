<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clientes.aspx.cs" Inherits="Jagan.Painel.clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Style/cadastro.css" rel="stylesheet" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <title></title>
</head>
<body style="min-width: 375px;">


    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand">Jagan</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Painel/default.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Painel/produto.aspx/">Produtos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Painel/clientes.aspx">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Login/Cadastro.aspx">Cadastre-se</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Login/default.aspx" />Login</a>
                        </li>
                    </ul>
                    <span class="navbar-text">Usuário
                    </span>
                </div>
            </div>
        </nav>

        <main class="mb-5 pb-5 mb-md-0">
            <div class="container">
                <div class="row g-3">
                    <h1>Clientes</h1>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="row justify-content-center mb-5">
                                    <div class="col-sm-12 col-md-10 col-lg-8">
                                        <div class="row">
                                            <asp:GridView ID="gvclientes" runat="server" AutoGenerateColumns="false" DataKeyNames="ID" ShowFooter="true" ShowHeaderWhenEmpty="true" OnRowDeleting="gvclientes_RowDeleting"
                                                
                                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                                <%-- Theme Properties --%>
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#00547E" />


                                                <Columns>
                                                    <asp:TemplateField HeaderText="Nome">
                                                        <ItemTemplate>
                                                            <asp:Label Text='<%# Eval("nome_usuario") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txtNome_usuario" Text='<%# Eval("nome_usuario") %>' runat="server"></asp:TextBox>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Email">
                                                        <ItemTemplate>
                                                            <asp:Label Text='<%# Eval("email") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txtEmail" Text='<%# Eval("email") %>' runat="server"></asp:TextBox>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>


                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            
                                                            <asp:ImageButton runat="server" ImageUrl="~/Imagens/delete.png" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                           
                                                            <asp:ImageButton runat="server" ImageUrl="~/Imagens/cancel.png" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                                                        </EditItemTemplate>

                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <br />
                                            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
                                            <br />
                                            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
            </div>
        </main>
    </form>
</body>
</html>
