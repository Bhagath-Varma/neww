<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">

<style>
body{margin:0;font-family:Inter;background:#f5f7fb}
header{display:flex;justify-content:space-between;padding:15px 30px;background:white;box-shadow:0 4px 10px rgba(0,0,0,.05)}
.grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:20px;padding:30px}
.product{background:white;padding:15px;border-radius:12px;box-shadow:0 6px 20px rgba(0,0,0,.05)}
.product img{width:100%;height:150px;object-fit:cover;border-radius:10px}
button{cursor:pointer}
.add{margin-top:10px;background:#6366f1;color:white;border:none;padding:10px;border-radius:8px;width:100%}
.cart-btn{position:relative}
.cart-count{position:absolute;top:-8px;right:-10px;background:red;color:white;border-radius:50%;padding:3px 7px;font-size:12px}

/* Cart Drawer */
#cartDrawer{position:fixed;right:-350px;top:0;width:320px;height:100%;background:white;box-shadow:-5px 0 20px rgba(0,0,0,.1);padding:20px;transition:.3s}
#cartDrawer.open{right:0}
.cart-item{display:flex;justify-content:space-between;margin-bottom:10px}
.checkout{margin-top:20px;background:#10b981;color:white;border:none;padding:12px;width:100%;border-radius:8px}

/* Modal */
#checkoutModal{position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.5);display:none;align-items:center;justify-content:center}
#checkoutBox{background:white;padding:20px;border-radius:10px;width:300px}
#checkoutBox input{width:100%;padding:8px;margin:8px 0}
</style>
</head>

<body>

<header>
<h2>NexusShop</h2>
<button class="cart-btn" onclick="toggleCart()">Cart <span class="cart-count" id="count">0</span></button>
</header>

<div class="grid" id="products"></div>

<!-- Cart Drawer -->
<div id="cartDrawer">
<h3>Your Cart</h3>
<div id="cartItems"></div>
<h4>Total: $<span id="total">0</span></h4>
<button class="checkout" onclick="openCheckout()">Checkout</button>
</div>

<!-- Checkout Modal -->
<div id="checkoutModal">
<div id="checkoutBox">
<h3>Checkout</h3>
<input id="name" placeholder="Full Name">
<input id="address" placeholder="Address">
<input placeholder="Card Number">
<button class="checkout" onclick="placeOrder()">Place Order</button>
</div>
</div>

<script>
const PRODUCTS=[
{id:1,name:"iPhone 14",price:999,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
{id:2,name:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45"},
{id:3,name:"Headphones",price:199,img:"https://images.unsplash.com/photo-1518444028785-8b0c6b8f3d61"}
];

let cart=[];

function renderProducts(){
const container=document.getElementById("products");
container.innerHTML="";
PRODUCTS.forEach(p=>{
const div=document.createElement("div");
div.className="product";
div.innerHTML=`
<img src="${p.img}">
<h4>${p.name}</h4>
<p>$${p.price}</p>
<button class="add" onclick="addToCart(${p.id})">Add to Cart</button>
`;
container.appendChild(div);
});
}

function addToCart(id){
const item=cart.find(i=>i.id===id);
if(item){item.qty++}
else{
const p=PRODUCTS.find(x=>x.id===id);
cart.push({...p,qty:1});
}
updateCart();
}

function updateCart(){
document.getElementById("count").innerText=cart.reduce((a,b)=>a+b.qty,0);

const items=document.getElementById("cartItems");
items.innerHTML="";
let total=0;

cart.forEach(i=>{
total+=i.price*i.qty;
items.innerHTML+=`<div class='cart-item'>${i.name} x${i.qty} <button onclick='removeItem(${i.id})'>X</button></div>`;
});

document.getElementById("total").innerText=total;
}

function removeItem(id){
cart=cart.filter(i=>i.id!==id);
updateCart();
}

function toggleCart(){
document.getElementById("cartDrawer").classList.toggle("open");
}

function openCheckout(){
if(cart.length===0){alert("Cart empty");return}
document.getElementById("checkoutModal").style.display="flex";
}

function placeOrder(){
const name=document.getElementById("name").value;
const address=document.getElementById("address").value;
if(!name||!address){alert("Fill all fields");return}
alert("Order placed successfully!");
cart=[];
updateCart();
document.getElementById("checkoutModal").style.display="none";
}

renderProducts();
</script>

</body>
</html>
