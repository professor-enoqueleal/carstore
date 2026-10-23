<html>
<head>
    <title>CarStore</title>
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

            <h2>Car Store</h2>

            <br>

            <form action="/create-car" method="post">

                <input type="hidden" id="id" name="id" value="${param.id}">

                <div class="form-field">

                    <label class="form-label">Name</label>
                    <input type="text" name="name" id="name" class="form-control" value="${param.name}">

                </div>

                <div class="form-field">

                    <label class="form-label">Color</label>
                    <input type="text" name="color" id="color" class="form-control" value="${param.name}">

                </div>
                <br>
                <div>
                    <button type="submit" class="btn btn-primary">Register</button>
                </div>

            </form>

        </div>
    </body>
</html>
