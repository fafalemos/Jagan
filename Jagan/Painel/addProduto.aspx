<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addProduto.aspx.cs" Inherits="Jagan.Painel.addProduto" %>


    <!DOCTYPE html>

    <html>
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="../Style/cadastro.css" rel="stylesheet" crossorigin="anonymous" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="//code.jquery.com/jquery-2.1.0.min.js" type="text/javascript"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <style>
            p.truncate-3l {
                display: webkit-box;
                -webkit-line-clamp: 3;
                -webkit-box-orient: vertical;
                overflow: hidden;
                text-overflow: ellipsis;
            }
        </style>
        <title></title>
    </head>
    <body style="min-width: 375px;">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
                                <a class="nav-link active" aria-current="page" href="/Painel/produtos.aspx">Produtos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/Painel/clientes.cshtml">Clientes</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/Login/Cadastro.aspx">Cadastre-se</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/Login/default.aspx">Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>




            <main class="mb-5 pb-5 mb-md-0">
                <div class="container">
                    <div class="row">


                        <div class="row col-12 text-center my-5">

                            <h1 class="display-4">Adicionar Produto</h1>

                        </div>
                    </div>

                    <div class="row justify-content-center mb-5">
                        <div class="col-sm-12 col-md-10 col-lg-8">
                            <form method="post">
                                <div class="row">

                                    <div class="form-group col-sm-6">
                                        <label asp-for="nomeProduto">Nome do produto</label>
                                        <asp:TextBox runat="server" ID="txtNomeProduto" name="nomeProduto" placeholder="Nome do produto" CssClass="form-control"></asp:TextBox>
                                        
                                    </div>

                                    <div class="form-group col-sm-6">
                                        <label asp-for="precoProduto">Preço do produto</label>
                                        <asp:TextBox runat="server" ID="txtValorProduto" name="valorProduto" placeholder="Preço do produto: separe por ." CssClass="form-control"></asp:TextBox>
                                        
                                    </div>

                                    <div>
                                        <label>&nbsp;</label>
                                        <asp:Button id="btnCadastrarProduto" CssClass="btn btn-danger campo" runat="server" Text="Cadastrar" OnClick="btnCadastrarProduto_Click"/>
                                    </div>

                          
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </main>


        </form>


    </body>
</html>
}
