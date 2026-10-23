<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>

    <body>

        <div class="container">

            <h1>Cars</h1>

            <!--
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

            -->

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

            <!--
            -->

        </div>
    </body>

</html>
