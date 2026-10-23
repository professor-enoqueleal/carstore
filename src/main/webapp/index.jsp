<html>
<head>
    <title>CarStore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
    <body>

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
