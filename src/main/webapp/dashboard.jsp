<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>

    <body>

        <nav class="navbar navbar-expand-lg bg-body-tertiary">
          <div class="container">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="/index.jsp">Cadastrar</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/find-all-cars">Listar</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>

        <div class="container">

            <h1>Cars</h1>

            <!--
            -->
            <table class="table">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Options</th>
                </tr>

                <c:forEach var="car" items="${cars}">
                    <tr>
                        <td>${car.id}</td>
                        <td>${car.name}</td>
                        <td>
                            <form action="/delete-car" method="post">
                                <input type="hidden" id="id" name="id" value="${car.id}">
                                <button type="submit" class="btn btn-outline-primary">Delete</button>
                                <span>&nbsp</span>
                                <a href="index.jsp?id=${car.id}&name=${car.name}" class="btn btn-outline-secondary">Update</a>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>


            <!--
            <div class="row">
                <c:forEach var="car" items="${cars}">
                    <div class="col-md-4 mb-4">
                        <div class="card" style="width: 100%;">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVQU91ptqlontsx-R_vYZoayIKYjC6FdYMulam-Emccg&s=10"
                                 class="card-img-top" alt="Carro">
                            <div class="card-body">
                                <h5 class="card-title">${car.name}</h5>
                                <p class="card-text">${car.color}</p>
                                <hr>
                                <a href="#" class="btn btn-primary">Saiba mais</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            -->

        </div>
    </body>

</html>
