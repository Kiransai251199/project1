<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <title>NexusShop — Winter Collection</title>
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,600;0,700;1,400&family=DM+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
  <style>
    :root {
      --bg:        #0c0c0e;
      --surface:   #141416;
      --card:      #1a1a1e;
      --border:    rgba(255,255,255,0.07);
      --primary:   #f5f0e8;
      --muted:     #7a7870;
      --gold:      #c9a84c;
      --gold-light:#f0d080;
      --gold-dim:  rgba(201,168,76,0.12);
      --red:       #e05252;
      --radius:    14px;
      --container: 1240px;
    }
    *{box-sizing:border-box;margin:0;padding:0}
    html,body{height:100%}
    body{font-family:'DM Sans',sans-serif;color:var(--primary);background:var(--bg);-webkit-font-smoothing:antialiased;line-height:1.5}
    a{color:inherit;text-decoration:none}

    ::-webkit-scrollbar{width:6px;height:6px}
    ::-webkit-scrollbar-track{background:var(--bg)}
    ::-webkit-scrollbar-thumb{background:var(--gold);border-radius:99px}

    .container{width:100%;max-width:var(--container);margin:0 auto;padding:0 24px}

    /* HEADER */
    header{
      position:sticky;top:0;z-index:50;
      background:rgba(12,12,14,0.92);
      border-bottom:1px solid var(--border);
      backdrop-filter:blur(18px);
    }
    .header-inner{
      display:flex;align-items:center;justify-content:space-between;
      gap:16px;padding:16px 0;
    }
    .brand{
      font-family:'Playfair Display',serif;
      font-size:22px;font-weight:700;letter-spacing:0.02em;
      display:flex;align-items:center;gap:8px;
    }
    .brand .dot{color:var(--gold)}
    nav ul{display:flex;gap:4px;list-style:none}
    nav ul li a{
      padding:7px 13px;border-radius:8px;
      font-size:14px;font-weight:500;color:var(--muted);
      transition:color .2s,background .2s;
    }
    nav ul li a:hover{color:var(--primary);background:rgba(255,255,255,0.05)}
    .search-bar{
      display:flex;align-items:center;gap:10px;
      background:var(--surface);
      border:1px solid var(--border);
      border-radius:99px;padding:9px 16px;
      min-width:220px;transition:border-color .2s;
    }
    .search-bar:focus-within{border-color:var(--gold)}
    .search-bar input{border:0;background:transparent;outline:none;font-size:13px;color:var(--primary);font-family:'DM Sans',sans-serif;width:100%}
    .search-bar input::placeholder{color:var(--muted)}
    .hdr-actions{display:flex;align-items:center;gap:8px}
    .icon-btn{background:transparent;border:0;cursor:pointer;color:var(--muted);font-size:16px;padding:8px;border-radius:8px;transition:color .2s,background .2s}
    .icon-btn:hover{color:var(--gold);background:var(--gold-dim)}
    .cart-wrap{position:relative}
    .cart-count{
      position:absolute;top:-4px;right:-4px;
      background:var(--gold);color:#0c0c0e;
      font-size:10px;font-weight:700;
      width:18px;height:18px;border-radius:50%;
      display:grid;place-items:center;
    }
    .mobile-toggle{display:none;background:transparent;border:0;color:var(--primary);font-size:20px;cursor:pointer}

    /* HERO */
    .hero{
      position:relative;min-height:580px;
      display:flex;align-items:center;
      overflow:hidden;
    }
    .hero-bg{
      position:absolute;inset:0;
      background:url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      filter:brightness(0.3) saturate(0.6);
    }
    .hero-overlay{
      position:absolute;inset:0;
      background:linear-gradient(120deg,rgba(12,12,14,0.95) 35%,rgba(12,12,14,0.3));
    }
    .hero-content{position:relative;z-index:2;max-width:600px;padding:80px 0}
    .hero-eyebrow{
      display:inline-flex;align-items:center;gap:8px;
      font-size:12px;font-weight:600;letter-spacing:0.18em;text-transform:uppercase;
      color:var(--gold);margin-bottom:18px;
    }
    .hero-eyebrow::before{content:'';width:28px;height:1px;background:var(--gold)}
    .hero h1{
      font-family:'Playfair Display',serif;
      font-size:clamp(36px,5vw,60px);
      font-weight:700;line-height:1.1;
      letter-spacing:-0.01em;
      margin-bottom:20px;
    }
    .hero h1 em{font-style:italic;color:var(--gold)}
    .hero p{font-size:16px;color:rgba(245,240,232,0.65);max-width:480px;margin-bottom:36px;font-weight:300}
    .btn-group{display:flex;gap:12px;flex-wrap:wrap}
    .btn{
      display:inline-flex;align-items:center;gap:10px;
      padding:13px 24px;border-radius:99px;
      font-family:'DM Sans',sans-serif;font-weight:600;font-size:14px;
      cursor:pointer;border:0;transition:transform .15s,box-shadow .15s,opacity .15s;
    }
    .btn:hover{transform:translateY(-2px)}
    .btn-gold{background:var(--gold);color:#0c0c0e}
    .btn-gold:hover{box-shadow:0 8px 30px rgba(201,168,76,0.35)}
    .btn-outline{background:transparent;border:1px solid rgba(255,255,255,0.18);color:var(--primary)}
    .btn-outline:hover{border-color:var(--gold);color:var(--gold)}
    .hero-stats{
      position:relative;z-index:2;
      display:flex;gap:40px;padding-bottom:60px;
    }
    .stat-val{font-family:'Playfair Display',serif;font-size:28px;font-weight:700;color:var(--gold)}
    .stat-lbl{font-size:12px;color:var(--muted);margin-top:2px}

    /* SECTIONS */
    .section{padding:70px 0}
    .sec-header{text-align:center;margin-bottom:40px}
    .sec-eyebrow{
      font-size:11px;font-weight:600;letter-spacing:0.2em;text-transform:uppercase;
      color:var(--gold);margin-bottom:12px;
    }
    .sec-title{
      font-family:'Playfair Display',serif;
      font-size:clamp(26px,3vw,36px);font-weight:700;margin-bottom:10px;
    }
    .sec-sub{color:var(--muted);font-size:15px;font-weight:300}
    .gold-divider{
      width:48px;height:2px;
      background:linear-gradient(90deg,var(--gold),transparent);
      margin:14px auto 0;
    }

    /* CATEGORIES */
    .cat-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
    .cat-card{
      background:var(--card);
      border:1px solid var(--border);
      border-radius:var(--radius);
      padding:22px 14px;text-align:center;
      cursor:pointer;
      transition:transform .2s,border-color .2s,box-shadow .2s;
    }
    .cat-card:hover{
      transform:translateY(-6px);
      border-color:var(--gold);
      box-shadow:0 20px 40px rgba(0,0,0,0.4),0 0 0 1px var(--gold-dim);
    }
    .cat-icon{
      width:52px;height:52px;border-radius:50%;
      background:var(--gold-dim);
      display:grid;place-items:center;
      font-size:20px;color:var(--gold);
      margin:0 auto 12px;
      transition:background .2s;
    }
    .cat-card:hover .cat-icon{background:rgba(201,168,76,0.22)}
    .cat-name{font-size:13px;font-weight:600;margin-bottom:4px}
    .cat-sub{font-size:11px;color:var(--muted)}

    /* PRODUCTS */
    .prod-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
    .product{
      background:var(--card);border:1px solid var(--border);
      border-radius:var(--radius);overflow:hidden;
      display:flex;flex-direction:column;
      transition:transform .2s,border-color .2s,box-shadow .2s;
    }
    .product:hover{
      transform:translateY(-6px);
      border-color:rgba(201,168,76,0.3);
      box-shadow:0 24px 50px rgba(0,0,0,0.5);
    }
    .product-img-wrap{position:relative;overflow:hidden;height:210px}
    .product-img-wrap img{
      width:100%;height:100%;object-fit:cover;display:block;
      transition:transform .4s ease;
    }
    .product:hover .product-img-wrap img{transform:scale(1.07)}
    .prod-badge{
      position:absolute;top:12px;left:12px;
      padding:4px 10px;border-radius:6px;
      font-size:11px;font-weight:700;letter-spacing:0.04em;
    }
    .badge-new{background:var(--gold);color:#0c0c0e}
    .badge-sale{background:var(--red);color:#fff}
    .product-body{padding:16px;flex:1;display:flex;flex-direction:column;gap:8px}
    .product-cat{font-size:11px;font-weight:600;letter-spacing:0.12em;text-transform:uppercase;color:var(--gold)}
    .product-title{font-family:'Playfair Display',serif;font-size:16px;font-weight:600;line-height:1.3}
    .price-row{display:flex;align-items:center;justify-content:space-between;margin-top:auto;padding-top:8px}
    .price{font-size:18px;font-weight:700;color:var(--primary)}
    .old-price{font-size:13px;color:var(--muted);text-decoration:line-through;margin-left:6px}
    .rating{font-size:12px;color:var(--gold)}
    .product-footer{
      display:flex;gap:10px;padding:12px 16px;
      border-top:1px solid var(--border);
    }
    .add-btn{
      flex:1;background:transparent;border:1px solid var(--border);
      color:var(--primary);padding:9px;border-radius:8px;
      font-family:'DM Sans',sans-serif;font-weight:600;font-size:13px;
      cursor:pointer;transition:background .2s,border-color .2s,color .2s;
      display:flex;align-items:center;justify-content:center;gap:8px;
    }
    .add-btn:hover{background:var(--gold);border-color:var(--gold);color:#0c0c0e}
    .wish-btn{
      background:transparent;border:1px solid var(--border);
      color:var(--muted);padding:8px 12px;border-radius:8px;
      cursor:pointer;transition:color .2s,border-color .2s;
    }
    .wish-btn:hover{color:var(--red);border-color:var(--red)}

    /* DEAL */
    .deal-wrap{
      display:grid;grid-template-columns:1fr 1fr;
      border:1px solid var(--border);border-radius:var(--radius);
      overflow:hidden;
    }
    .deal-img{width:100%;height:100%;min-height:360px;object-fit:cover;display:block}
    .deal-content{
      padding:48px 44px;
      background:var(--card);
      display:flex;flex-direction:column;justify-content:center;
    }
    .deal-tag{
      font-size:11px;font-weight:700;letter-spacing:0.2em;text-transform:uppercase;
      color:var(--gold);margin-bottom:10px;
    }
    .deal-content h2{font-family:'Playfair Display',serif;font-size:34px;margin-bottom:10px}
    .deal-content p{color:var(--muted);font-weight:300;margin-bottom:24px}
    .timer{display:flex;gap:10px;margin-bottom:28px}
    .time-box{
      background:var(--bg);border:1px solid var(--border);
      border-radius:10px;padding:14px 18px;text-align:center;min-width:72px;
    }
    .time-val{font-family:'Playfair Display',serif;font-size:26px;font-weight:700;color:var(--gold)}
    .time-lbl{font-size:10px;color:var(--muted);text-transform:uppercase;letter-spacing:0.1em;margin-top:2px}
    .deal-price-row{display:flex;align-items:baseline;gap:12px;margin-bottom:10px}
    .deal-price{font-family:'Playfair Display',serif;font-size:36px;font-weight:700;color:var(--primary)}
    .deal-save{background:var(--red);color:#fff;font-size:12px;font-weight:700;padding:4px 10px;border-radius:6px}
    .deal-stock{font-size:13px;color:var(--muted);margin-bottom:24px}
    .deal-stock strong{color:var(--primary)}

    /* TESTIMONIALS */
    .test-grid{display:flex;gap:16px;overflow-x:auto;padding-bottom:8px}
    .testimonial{
      min-width:300px;
      background:var(--card);border:1px solid var(--border);
      border-radius:var(--radius);padding:24px;
    }
    .stars{color:var(--gold);font-size:13px;margin-bottom:12px}
    .test-text{font-size:14px;color:rgba(245,240,232,0.75);line-height:1.6;margin-bottom:16px;font-style:italic}
    .test-author{display:flex;align-items:center;gap:10px}
    .test-avatar{width:38px;height:38px;border-radius:50%;object-fit:cover;border:2px solid var(--gold-dim)}
    .test-name{font-weight:600;font-size:14px}
    .test-role{font-size:12px;color:var(--muted)}

    /* NEWSLETTER */
    .newsletter{
      background:var(--card);border:1px solid var(--border);
      border-radius:var(--radius);padding:60px;text-align:center;
      position:relative;overflow:hidden;
    }
    .newsletter::before{
      content:'';position:absolute;
      top:-80px;left:50%;transform:translateX(-50%);
      width:400px;height:400px;border-radius:50%;
      background:radial-gradient(circle,rgba(201,168,76,0.08),transparent 70%);
      pointer-events:none;
    }
    .newsletter h3{font-family:'Playfair Display',serif;font-size:30px;margin-bottom:10px}
    .newsletter p{color:var(--muted);margin-bottom:28px;font-weight:300}
    .nl-form{display:flex;justify-content:center;gap:10px;flex-wrap:wrap}
    .nl-input{
      padding:13px 20px;border-radius:99px;
      border:1px solid var(--border);background:var(--bg);
      color:var(--primary);font-family:'DM Sans',sans-serif;font-size:14px;
      outline:none;width:320px;max-width:100%;
      transition:border-color .2s;
    }
    .nl-input:focus{border-color:var(--gold)}
    .nl-msg{margin-top:14px;font-size:13px}

    /* FOOTER */
    footer{margin-top:20px;border-top:1px solid var(--border);padding:48px 0 28px}
    .footer-grid{display:flex;gap:40px;flex-wrap:wrap;justify-content:space-between;margin-bottom:36px}
    .footer-brand-name{font-family:'Playfair Display',serif;font-size:20px;font-weight:700;margin-bottom:8px}
    .footer-desc{color:var(--muted);font-size:14px;font-weight:300;max-width:300px;line-height:1.7}
    .footer-socials{display:flex;gap:8px;margin-top:18px}
    .footer-col-title{font-weight:700;font-size:13px;letter-spacing:0.06em;text-transform:uppercase;color:var(--gold);margin-bottom:14px}
    .footer-links{display:flex;flex-direction:column;gap:8px}
    .footer-links a{color:var(--muted);font-size:14px;transition:color .2s}
    .footer-links a:hover{color:var(--primary)}
    .footer-bottom{border-top:1px solid var(--border);padding-top:22px;text-align:center;font-size:13px;color:var(--muted)}

    /* MOBILE MENU */
    #mobileMenu{display:none;border-top:1px solid var(--border);background:var(--surface)}
    #mobileMenu ul{list-style:none;padding:12px 0;display:flex;flex-direction:column;gap:4px}
    #mobileMenu ul li a{display:block;padding:10px 16px;color:var(--muted);font-size:15px;border-radius:8px;transition:color .2s}
    #mobileMenu ul li a:hover{color:var(--primary)}

    /* ANIMATIONS */
    @keyframes fadeUp{from{opacity:0;transform:translateY(22px)}to{opacity:1;transform:translateY(0)}}
    .hero-content>*{animation:fadeUp .6s ease both}
    .hero-content>*:nth-child(1){animation-delay:.05s}
    .hero-content>*:nth-child(2){animation-delay:.15s}
    .hero-content>*:nth-child(3){animation-delay:.25s}
    .hero-content>*:nth-child(4){animation-delay:.35s}

    /* RESPONSIVE */
    @media(max-width:1100px){
      .cat-grid{grid-template-columns:repeat(3,1fr)}
      .prod-grid{grid-template-columns:repeat(3,1fr)}
    }
    @media(max-width:900px){
      nav{display:none}
      .mobile-toggle{display:inline-block}
      .search-bar{min-width:160px}
      .prod-grid{grid-template-columns:repeat(2,1fr)}
      .cat-grid{grid-template-columns:repeat(2,1fr)}
      .deal-wrap{grid-template-columns:1fr}
      .deal-img{min-height:260px}
    }
    @media(max-width:560px){
      .hero h1{font-size:32px}
      .prod-grid{grid-template-columns:1fr}
      .cat-grid{grid-template-columns:repeat(2,1fr)}
      .deal-content{padding:28px 20px}
      .newsletter{padding:32px 20px}
      .hero-stats{gap:24px}
    }
  </style>
</head>
<body>

<!-- HEADER -->
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:16px">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">Nexus<span class="dot">.</span>Shop</a>
    </div>
    <nav aria-label="Primary">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Trending</a></li>
        <li><a href="#deals">Flash Sale</a></li>
        <li><a href="#about">About</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:12px">
      <div class="search-bar" role="search">
        <i class="fas fa-search" style="color:var(--muted);font-size:13px"></i>
        <input type="search" id="searchInput" placeholder="Search products..."/>
      </div>
      <div class="hdr-actions">
        <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart"><i class="fas fa-bag-shopping"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Trending</a></li>
        <li><a href="#deals">Flash Sale</a></li>
      </ul>
    </div>
  </div>
</header>

<main>

  <!-- HERO -->
  <section class="hero">
    <div class="hero-bg"></div>
    <div class="hero-overlay"></div>
    <div class="container" style="display:flex;flex-direction:column;justify-content:space-between;height:100%;padding-top:0;padding-bottom:0">
      <div class="hero-content">
        <div class="hero-eyebrow">Winter Collection 2025</div>
        <h1>Premium Picks<br>Curated <em>Just</em> for You</h1>
        <p>Discover the latest trends in fashion, technology and accessories. Enjoy limited-time deals and complimentary shipping.</p>
        <div class="btn-group">
          <button class="btn btn-gold" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-outline" id="exploreDeals">Explore Deals</button>
        </div>
      </div>
      <div class="hero-stats">
        <div><div class="stat-val">50K+</div><div class="stat-lbl">Happy Customers</div></div>
        <div><div class="stat-val">2.4K</div><div class="stat-lbl">Premium Products</div></div>
        <div><div class="stat-val">4.9★</div><div class="stat-lbl">Average Rating</div></div>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <div class="sec-header">
        <div class="sec-eyebrow">Browse</div>
        <h2 class="sec-title">Shop by Category</h2>
        <p class="sec-sub">Curated selections across top categories</p>
        <div class="gold-divider"></div>
      </div>
      <div class="cat-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products">
    <div class="container">
      <div class="sec-header">
        <div class="sec-eyebrow">Popular</div>
        <h2 class="sec-title">Trending Products</h2>
        <p class="sec-sub">Top picks based on recent activity</p>
        <div class="gold-divider"></div>
      </div>
      <div class="prod-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- DEAL -->
  <section class="section" id="deals">
    <div class="container">
      <div class="sec-header">
        <div class="sec-eyebrow">Limited Time</div>
        <h2 class="sec-title">Flash Sale</h2>
        <p class="sec-sub">Don't miss out — offer ends soon</p>
        <div class="gold-divider"></div>
      </div>
      <div class="deal-wrap">
        <img class="deal-img" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2">
        <div class="deal-content">
          <div class="deal-tag">Flash Deal</div>
          <h2>MacBook Air M2</h2>
          <p>Thin, light and powerful — with next-gen M2 performance and all-day battery life.</p>
          <div class="timer">
            <div class="time-box"><div class="time-val" id="dealDays">0</div><div class="time-lbl">Days</div></div>
            <div class="time-box"><div class="time-val" id="dealHours">00</div><div class="time-lbl">Hours</div></div>
            <div class="time-box"><div class="time-val" id="dealMinutes">00</div><div class="time-lbl">Mins</div></div>
            <div class="time-box"><div class="time-val" id="dealSeconds">00</div><div class="time-lbl">Secs</div></div>
          </div>
          <div class="deal-price-row">
            <span class="deal-price">$999</span>
            <span class="old-price">$1,199</span>
            <span class="deal-save">−17%</span>
          </div>
          <p class="deal-stock">Only <strong>12</strong> items left at this price!</p>
          <button class="btn btn-gold" id="buyDeal" style="align-self:flex-start;margin-top:8px">Buy Now <i class="fas fa-arrow-right"></i></button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section">
    <div class="container">
      <div class="sec-header">
        <div class="sec-eyebrow">Reviews</div>
        <h2 class="sec-title">What Customers Say</h2>
        <p class="sec-sub">Real feedback from verified buyers</p>
        <div class="gold-divider"></div>
      </div>
      <div class="test-grid">
        <div class="testimonial">
          <div class="stars">★★★★★</div>
          <p class="test-text">"Fast shipping and excellent customer support. The product exceeded every expectation!"</p>
          <div class="test-author">
            <img class="test-avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava">
            <div><div class="test-name">Ava Martin</div><div class="test-role">Verified Buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="stars">★★★★☆</div>
          <p class="test-text">"Great selection and the checkout was incredibly smooth. Will definitely shop again."</p>
          <div class="test-author">
            <img class="test-avatar" src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael">
            <div><div class="test-name">Michael Lee</div><div class="test-role">Frequent Buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="stars">★★★★★</div>
          <p class="test-text">"The quality of packaging alone tells you this brand values its customers. Outstanding."</p>
          <div class="test-author">
            <img class="test-avatar" src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=80" alt="Sara">
            <div><div class="test-name">Sara Chen</div><div class="test-role">Verified Buyer</div></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section">
    <div class="container">
      <div class="newsletter">
        <div class="sec-eyebrow" style="margin-bottom:12px">Stay in the loop</div>
        <h3>Exclusive Offers, First</h3>
        <p>Subscribe for new arrivals, flash sales, and members-only discounts.</p>
        <div class="nl-form">
          <input class="nl-input" id="newsletterEmail" type="email" placeholder="Enter your email address" required>
          <button class="btn btn-gold" id="subscribeBtn">Subscribe <i class="fas fa-arrow-right"></i></button>
        </div>
        <div class="nl-msg" id="newsletterMsg" style="display:none"></div>
      </div>
    </div>
  </section>

</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="footer-brand-name">Nexus<span style="color:var(--gold)">.</span>Shop</div>
        <p class="footer-desc">A refined e-commerce experience built for those who value quality, aesthetics, and speed.</p>
        <div class="footer-socials">
          <button class="icon-btn" title="Facebook"><i class="fab fa-facebook"></i></button>
          <button class="icon-btn" title="Twitter"><i class="fab fa-twitter"></i></button>
          <button class="icon-btn" title="Instagram"><i class="fab fa-instagram"></i></button>
          <button class="icon-btn" title="Pinterest"><i class="fab fa-pinterest"></i></button>
        </div>
      </div>
      <div>
        <div class="footer-col-title">Company</div>
        <div class="footer-links">
          <a href="#">About</a><a href="#">Careers</a><a href="#">Press</a>
        </div>
      </div>
      <div>
        <div class="footer-col-title">Support</div>
        <div class="footer-links">
          <a href="#">Help Center</a><a href="#">Shipping & Returns</a><a href="#">Contact</a>
        </div>
      </div>
      <div>
        <div class="footer-col-title">Legal</div>
        <div class="footer-links">
          <a href="#">Privacy Policy</a><a href="#">Terms of Use</a><a href="#">Cookies</a>
        </div>
      </div>
    </div>
    <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
const CATEGORIES=[
  {id:'phones',name:'Smartphones',icon:'fa-mobile-alt',count:'120+ Items'},
  {id:'laptops',name:'Laptops',icon:'fa-laptop',count:'80+ Items'},
  {id:'clothing',name:'Clothing',icon:'fa-tshirt',count:'340+ Items'},
  {id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:'95+ Items'},
  {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:'160+ Items'},
  {id:'accessories',name:'Accessories',icon:'fa-watch',count:'210+ Items'}
];
const PRODUCTS=[
  {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',category:'phones'},
  {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',category:'laptops'},
  {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'-25%',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',category:'footwear'},
  {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',category:'gadgets'},
  {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',category:'gadgets'}
];

const categoriesGrid=document.getElementById('categoriesGrid');
const productsGrid=document.getElementById('productsGrid');
const cartCountEl=document.getElementById('cartCount');
const searchInput=document.getElementById('searchInput');
let cartCount=0;

function esc(t){return String(t).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]))}

function renderCategories(){
  categoriesGrid.innerHTML='';
  CATEGORIES.forEach(c=>{
    const el=document.createElement('div');
    el.className='cat-card';
    el.innerHTML=`<div class="cat-icon"><i class="fas ${c.icon}"></i></div><div class="cat-name">${c.name}</div><div class="cat-sub">${c.count}</div>`;
    el.addEventListener('click',()=>{
      searchInput.value=c.name;
      filterProducts(c.name);
      document.getElementById('products').scrollIntoView({behavior:'smooth',block:'start'});
    });
    categoriesGrid.appendChild(el);
  });
}

function renderProducts(list){
  productsGrid.innerHTML='';
  if(!list.length){productsGrid.innerHTML='<p style="color:var(--muted);grid-column:1/-1;text-align:center;padding:40px 0">No products found.</p>';return}
  list.forEach(p=>{
    const el=document.createElement('article');
    el.className='product';
    const badgeHtml=p.badge?`<span class="prod-badge ${p.badge.startsWith('-')?'badge-sale':'badge-new'}">${esc(p.badge)}</span>`:'';
    el.innerHTML=`
      <div class="product-img-wrap">${badgeHtml}<img src="${p.img}" alt="${esc(p.title)}" loading="lazy"></div>
      <div class="product-body">
        <div class="product-cat">${esc(p.category)}</div>
        <div class="product-title">${esc(p.title)}</div>
        <div class="price-row">
          <div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice?`<span class="old-price">$${p.oldPrice.toLocaleString()}</span>`:''}</div>
          <div class="rating">${'★'.repeat(Math.round(p.rating))}<span style="color:var(--muted);font-size:11px;margin-left:4px">(${p.reviews})</span></div>
        </div>
      </div>
      <div class="product-footer">
        <button class="add-btn" data-id="${p.id}"><i class="fas fa-bag-shopping"></i> Add to Cart</button>
        <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
      </div>`;
    productsGrid.appendChild(el);
  });
  productsGrid.querySelectorAll('.add-btn').forEach(btn=>{
    btn.addEventListener('click',()=>addToCart(Number(btn.dataset.id)));
  });
}

function addToCart(id){
  if(!PRODUCTS.find(x=>x.id===id))return;
  cartCount++;cartCountEl.textContent=cartCount;
  const btn=document.querySelector(`.add-btn[data-id="${id}"]`);
  if(btn){const o=btn.innerHTML;btn.innerHTML='<i class="fas fa-check"></i> Added';btn.disabled=true;setTimeout(()=>{btn.innerHTML=o;btn.disabled=false},1300)}
}

function filterProducts(q){
  const s=(q||'').trim().toLowerCase();
  renderProducts(s?PRODUCTS.filter(p=>p.title.toLowerCase().includes(s)||p.category.toLowerCase().includes(s)):PRODUCTS);
}

document.getElementById('searchInput').addEventListener('keydown',e=>{if(e.key==='Enter')filterProducts(e.target.value)});

document.getElementById('mobileToggle').addEventListener('click',()=>{
  const m=document.getElementById('mobileMenu');
  m.style.display=m.style.display==='block'?'none':'block';
});

document.getElementById('subscribeBtn').addEventListener('click',()=>{
  const email=document.getElementById('newsletterEmail').value.trim();
  const msg=document.getElementById('newsletterMsg');
  msg.style.display='block';
  if(!email||!email.includes('@')){msg.style.color='#e05252';msg.textContent='Please enter a valid email.';return}
  msg.style.color='var(--gold)';msg.textContent="You're subscribed — welcome to the inner circle.";
  document.getElementById('newsletterEmail').value='';
  setTimeout(()=>msg.style.display='none',3500);
});

(function(){
  const target=new Date(Date.now()+(24*60+36)*60*1000);
  function tick(){
    const d=target-Date.now();
    if(d<=0)return;
    document.getElementById('dealDays').textContent=Math.floor(d/86400000);
    document.getElementById('dealHours').textContent=String(Math.floor(d%86400000/3600000)).padStart(2,'0');
    document.getElementById('dealMinutes').textContent=String(Math.floor(d%3600000/60000)).padStart(2,'0');
    document.getElementById('dealSeconds').textContent=String(Math.floor(d%60000/1000)).padStart(2,'0');
  }
  tick();setInterval(tick,1000);
})();

document.getElementById('shopNow').addEventListener('click',()=>document.getElementById('products').scrollIntoView({behavior:'smooth'}));
document.getElementById('exploreDeals').addEventListener('click',()=>document.getElementById('deals').scrollIntoView({behavior:'smooth'}));
document.getElementById('buyDeal').addEventListener('click',()=>{cartCount++;cartCountEl.textContent=cartCount;alert('MacBook Air M2 added to cart!')});

renderCategories();
renderProducts(PRODUCTS);
document.getElementById('year').textContent=new Date().getFullYear();
</script>
</body>
</html>
