<!DOCTYPE html>
<html lang="en">

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

    <div class="container">
        <a href="{{ route('back') }}">
            Back
        </a>
        <h2>Products</h2>
        <p>These are the products that is available right now!!</p>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama Produk</th>
                    <th>Deskripsi</th>
                    <th>Stock</th>
                    <th>Harga</th>
                    <th>Kategori</th>
                    <th>Sub Kategori</th>
                    <th>Nama Kategori</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $product->id }}</td>
                    <td>{{ $product->nama_produk }}</td>
                    <td>{{ $product->deskripsi }}</td>
                    <td>{{ $product->stok }}</td>
                    <td>{{ $product->harga }}</td>
                    <td>{{ $product->category->kategori }}</td>
                    <td>{{ $product->category->sub_kategori }}</td>
                    <td>{{ $product->category->nama_kategori }}</td>
                </tr>
            </tbody>
        </table>
    </div>

</body>

</html>
