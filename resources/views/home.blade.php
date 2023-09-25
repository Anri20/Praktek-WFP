<html>

<head>
    {{-- Bootsrap CDN --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css"
        integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">
</head>

<body>
    <div class="d-flex flex-column">
        <a href="contact-us">
            Contact Us
        </a>
        <a href="4-about-us">
            About Us
        </a>
        <a href="1-delivery">
            Delivery
        </a>
        <a href="guest-tracking">
            Guest Order Tracking
        </a>
        <a href="my-account">
            Sign In / Log In
        </a>
        <a href="5-secure-payment">
            Secure Payment
        </a>
        <a href="stores">
            Stores
        </a>
        <a href="sales/order/track">
            Lacak Pesanan
        </a>
        <a href="mitra10-catalog-product">
            Katalog Produk
        </a>
        <a href="customer/setting">
            Setting
        </a>
        <a href="registration">
            Create Account
        </a>
        <a href="customer/account">
            Dashboard Account
        </a>
        <a href="membership">
            Membership
        </a>
        <a href="whatsapp-stores">
            Whatsapp Stores
        </a>
        <a href="{{ route('kategori.index') }}">
            List Kategori
        </a>
        <a href="{{ route('productTable') }}">
            Products Table
        </a>
        <a href="{{ route('productGrid') }}">
            Products Grid
        </a>
    </div>
</body>

</html>
