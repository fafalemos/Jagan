<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Jagan.Painel._default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Style/cadastro.css" rel="stylesheet" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!---<link href="../Style/bootstrap.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Oswald:300' rel='stylesheet' type='text/css'>
    <link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet">-->
    <script src="//code.jquery.com/jquery-2.1.0.min.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" name="menu">
            <div class="container-fluid">
                <a class="navbar-brand">Jagan</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent" name="menu">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Painel/default.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Painel/produtos.cshtml">Produtos</a>
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
                    <span class="navbar-text">Usuário
                    </span>
                </div>
            </div>
        </nav>

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../Imagens/gab.png" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="..." alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="..." alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <main class="mb-5 pb-5 mb-md-0">
            <div class="container">
                <div class="row">

                    <hr class="mt-3" />
                    <h1 class="campo">Ofertas</h1>
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
                    </div>
                </div>
        </main>

    </form>
</body>
</html>
