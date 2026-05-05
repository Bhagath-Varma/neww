<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop UI Redesign</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
  --primary:#111827;
  --accent:#6366f1;
  --bg:#f9fafb;
  --card:#ffffff;
  --text:#1f2937;
  --muted:#6b7280;
}

body{
  margin:0;
  font-family:Inter, sans-serif;
  background:var(--bg);
  color:var(--text);
}

header{
  background:white;
  padding:14px 40px;
  display:flex;
  justify-content:space-between;
  align-items:center;
  box-shadow:0 4px 20px rgba(0,0,0,0.05);
}

.brand{
  font-family:Poppins;
  font-size:22px;
  font-weight:700;
}
.brand span{color:var(--accent)}

nav a{
  margin:0 12px;
  font-weight:500;
  color:var(--text);
}

.hero{
  display:flex;
  align-items:center;
  justify-content:space-between;
  padding:60px 40px;
  background:linear-gradient(120deg,#6366f1,#8b5cf6);
  color:white;
}

.hero h1{font-size:42px;margin-bottom:10px}
.hero p{opacity:.9;max-width:500px}

.hero img{
  width:400px;
  border-radius:20px;
}

.btn{
  background:white;
  color:var(--accent);
  padding:12px 20px;
  border:none;
  border-radius:8px;
  margin-top:16px;
  cursor:pointer;
  font-weight:600;
}

.section{padding:50px 40px}

.grid{
  display:grid;
  gap:20px;
}

.categories{
  grid-template-columns:repeat(auto-fit,minmax(160px,1fr));
}

.cat{
  background:white;
  padding:20px;
  border-radius:14px;
  text-align:center;
  box-shadow:0 6px 18px rgba(0,0,0,0.05);
  transition:.2s;
}

.cat:hover{transform:translateY(-6px)}

.products{
  grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
}

.product{
  background:white;
  border-radius:16px;
  overflow:hidden;
  box-shadow:0 10px 25px rgba(0,0,0,0.06);
  transition:.2s;
}

.product:hover{transform:translateY(-8px)}

.product img{
  width:100%;
  height:180px;
  object-fit:cover;
}

.product-body{padding:16px}

.price{
  font-weight:700;
  margin-top:6px;
}

.add{
  margin-top:10px;
  width:100%;
  padding:10px;
  background:var(--accent);
  color:white;
  border:none;
  border-radius:8px;
  cursor:pointer;
}

.deal{
  background:white;
  display:flex;
  gap:20px;
  padding:20px;
  border-radius:16px;
  box-shadow:0 10px 30px rgba(0,0,0,0.06);
}

.deal img{
  width:300px;
  border-radius:12px;
}

footer{
  text-align:center;
  padding:30px;
  color:var(--muted);
}

@media(max-width:768px){
  .hero{flex-direction:column;text-align:center}
  .hero img{width:100%;margin-top:20px}
  .deal{flex-direction:column}
}

</style>
</head>

<body>

<header>
  <div class="brand">Nexus<span>Shop</span></div>
  <nav>
    <a href="#">Home</a>
    <a href="#">Shop</a>
    <a href="#">Deals</a>
    <a href="#">Contact</a>
  </nav>
</header>

<section class="hero">
  <div>
    <h1>Upgrade Your Style</h1>
    <p>Discover premium collections with modern design and exclusive offers.</p>
    <button class="btn">Shop Now</button>
  </div>
  <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30">
</section>

<section class="section">
  <h2>Categories</h2>
  <div class="grid categories">
    <div class="cat"><i class="fas fa-mobile"></i><p>Phones</p></div>
    <div class="cat"><i class="fas fa-laptop"></i><p>Laptops</p></div>
    <div class="cat"><i class="fas fa-tshirt"></i><p>Fashion</p></div>
    <div class="cat"><i class="fas fa-headphones"></i><p>Gadgets</p></div>
  </div>
</section>

<section class="section">
  <h2>Trending Products</h2>
  <div class="grid products">
    <div class="product">
      <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb">
      <div class="product-body">
        <h4>iPhone 14 Pro</h4>
        <div class="price">$999</div>
        <button class="add">Add to Cart</button>
      </div>
    </div>

    <div class="product">
      <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45">
      <div class="product-body">
        <h4>MacBook Pro</h4>
        <div class="price">$1999</div>
        <button class="add">Add to Cart</button>
      </div>
    </div>
  </div>
</section>

<section class="section">
  <h2>Hot Deal</h2>
  <div class="deal">
    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8">
    <div>
      <h3>MacBook Air(Bhagath) M2</h3>
      <p>Lightweight. Powerful. Beautiful.</p>
      <div class="price">$999</div>
      <button class="add">Buy Now</button>
    </div>
  </div>
</section>

<footer>
  © 2026 NexusShop. Designed with modern UI.
</footer>

</body>
</html>
