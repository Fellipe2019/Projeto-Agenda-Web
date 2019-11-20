<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Template de login, usando Bootstrap.</title>

    <!-- Principal CSS do Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Estilos customizados para esse template -->
    <link href="bootstrap/css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin" action="logincontroller" method="post">
      <img class="mb-4" src="bootstrap/images/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Faça login</h1>
      <% String logout = (String) request.getAttribute("logout"); %>
      <div class="alert alert-info" role="alert" background-color="red">
      <% if(logout != null){out.print(logout);}%>
      </div>
      
      <label for="login" class="sr-only">Endereço de email</label>
      <input type="email" name="login" id="login" class="form-control" placeholder="Seu login" required autofocus>
      <label for="senha" class="sr-only">Senha</label>
      <input type="password" name="senha" id="senha" class="form-control" placeholder="Senha" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Me lembrar
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    </form>
  </body>
</html>