<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="produtos.aspx.cs" Inherits="Jagan.Painel.produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="../Style/css/bootstrap.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        p.truncate-3l{
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
    <script src="../Style/js/bootstrap.bundle.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Painel/default.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Painel/produtos.aspx/">Produtos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disable" aria-current="page" href="#">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Login/Cadastro.aspx">Cadastre-se</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Login/default.aspx" />Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <header class="container">
            <div id="carouselMain" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active text-center">
                        <img class="img-fluid d-none d-md-block" src="../Imagens/gab.png" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="..." alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="..." alt="Third slide">
                    </div>
                </div>
            </div>
            <hr class="mt-3" />
        </header>

        <main class="mb-5 pb-5 mb-md-0">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-5">
                        <form class="justify-content-center justify-content-md-start mb-3 mb-md-0">
                            <div class="input-group input-group-sm">
                                <input type="text" class="form-control" placeholder="Digite aqui o que procura" />
                                <asp:Button ID="bntBuscar" runat="server" CssClass="btn btn-danger" Text="Buscar" />
                            </div>
                        </form>
                    </div>
                    <div class="col-12 col-md-7">
                        <div class="d-flex flex-row-reverse justify-content-center justity-content-start">
                            <form>
                                <nav class="d-inline-block">
                                    <ul class="pagination pagination-sm my-0">
                                        <li class="page-item">
                                            <button class="page-link">1</button></li>
                                        <li class="page-item">
                                            <button class="page-link">2</button></li>
                                        <li class="page-item">
                                            <button class="page-link">3</button></li>
                                        <li class="page-item">
                                            <button class="page-link">4</button></li>
                                        <li class="page-item">
                                            <button class="page-link">5</button></li>
                                        <li class="page-item">
                                            <button class="page-link">6</button></li>
                                    </ul>
                                </nav>
                            </form>
                        </div>
                    </div>
                </div>
                <hr class="mt-3" />
                <div class="row g-3">
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card text-center bg-light">
                            <img src="../Imagens/zoiera.jpeg" class="card-img-top" />
                            <div class="card-header">
                                R$ 4,50
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Zoio</h5>
                                <p class="card-text truncate-3l">
                                    zoiudim
                                </p>
                            </div>
                            <div class="card-footer">
                                <form>
                                    <button class="btn btn-danger">Adicionar ao carrinho</button>
                                </form>
                                <small class="text-success">DOido</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card text-center bg-light">
                            <img src="../Imagens/zoiera.jpeg" class="card-img-top" />
                            <div class="card-header">
                                R$ 4,50
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Zoio</h5>
                                <p class="card-text truncate-3l">
                                    zoiudim
                                </p>
                            </div>
                            <div class="card-footer">
                                <form>
                                    <button class="btn btn-danger">Adicionar ao carrinho</button>
                                </form>
                                <small class="text-success">DOido</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card text-center bg-light">
                            <img src="../Imagens/zoiera.jpeg" class="card-img-top" />
                            <div class="card-header">
                                R$ 4,50
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Zoio</h5>
                                <p class="card-text truncate-3l">
                                    zoiudim
                                </p>
                            </div>
                            <div class="card-footer">
                                <form>
                                    <button class="btn btn-danger">Adicionar ao carrinho</button>
                                </form>
                                <small class="text-success">DOido</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card text-center bg-light">
                            <img src="../Imagens/zoiera.jpeg" class="card-img-top" />
                            <div class="card-header">
                                R$ 4,50
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Zoio</h5>
                                <p class="card-text truncate-3l">
                                    zoiudim
                                </p>
                            </div>
                            <div class="card-footer">
                                <form>
                                    <button class="btn btn-danger">Adicionar ao carrinho</button>
                                </form>
                                <small class="text-success">DOido</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card text-center bg-light">
                            <img src="../Imagens/zoiera.jpeg" class="card-img-top" />
                            <div class="card-header">
                                R$ 4,50
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Zoio</h5>
                                <p class="card-text truncate-3l">
                                    zoiudim
                                </p>
                            </div>
                            <div class="card-footer">
                                <form>
                                    <button class="btn btn-danger">Adicionar ao carrinho</button>
                                </form>
                                <small class="text-success">DOido</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card text-center bg-light">
                            <img src="../Imagens/zoiera.jpeg" class="card-img-top" />
                            <div class="card-header">
                                R$ 4,50
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Zoio</h5>
                                <p class="card-text truncate-3l">
                                    zoiudim
                                </p>
                            </div>
                            <div class="card-footer">
                                <form>
                                    <button class="btn btn-danger">Adicionar ao carrinho</button>
                                </form>
                                <small class="text-success">DOido</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card text-center bg-light">
                            <img src="../Imagens/zoiera.jpeg" class="card-img-top" />
                            <div class="card-header">
                                R$ 4,50
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Zoio</h5>
                                <p class="card-text truncate-3l">
                                    zoiudim
                                </p>
                            </div>
                            <div class="card-footer">
                                <form>
                                    <button class="btn btn-danger">Adicionar ao carrinho</button>
                                </form>
                                <small class="text-success">DOido</small>
                            </div>
                        </div>
                    </div>
                    <hr class="mt-3" />
                    <div class="row pb-4">
                        <div class="col-12">

                            <div class="d-flex flex-row-reverse justify-content-center justity-content-start">
                                <form>
                                    <nav class="d-inline-block">
                                        <ul class="pagination pagination-sm my-0">
                                            <li class="page-item">
                                                <button class="page-link">1</button></li>
                                            <li class="page-item">
                                                <button class="page-link">2</button></li>
                                            <li class="page-item">
                                                <button class="page-link">3</button></li>
                                            <li class="page-item">
                                                <button class="page-link">4</button></li>
                                            <li class="page-item">
                                                <button class="page-link">5</button></li>
                                            <li class="page-item">
                                                <button class="page-link">6</button></li>
                                        </ul>
                                    </nav>
                                </form>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </main>

        <footer class="border-top fixed-bottom text-muted bg-light">
            <div class="container">
                <div class="row py-3">
                    <div class="col-12 col-md-4 text-center text-md-left">
                        &copy; 2021 - Black Market
                    </div>
                    <div class="col-12 col-md-4 text-center">
                        <a href="#" class="text-decoration-none text-dark">Politica de Privacidade</a>
                    </div>
                    <div class="col-12 col-md-4 text-center text-md-right">
                        <a href="#" class="text-decoration-none text-dark">Administrar</a>
                    </div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
