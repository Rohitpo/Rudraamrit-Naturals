#!/usr/bin/env bash
# generate_site.sh
# Creates rudraamrit-website scaffold with HTML/CSS/JS files and an images folder.
# Usage: chmod +x generate_site.sh && ./generate_site.sh

set -euo pipefail

ROOT="rudraamrit-website"
IMAGES_DIR="$ROOT/images"

echo "Creating project structure in ./$ROOT ..."
mkdir -p "$IMAGES_DIR"

# index.html
cat > "$ROOT/index.html" <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Rudraamrit Naturals</title>
  <link rel="stylesheet" href="style.css"/>
</head>
<body>
  <header class="site-header">
    <div class="container header-inner">
      <img src="images/logo.png" alt="Rudraamrit Logo" class="logo">
      <nav class="main-nav">
        <a href="index.html">Home</a>
        <a href="about.html">About Us</a>
        <a href="categories.html">Categories</a>
        <a href="contact.html">Contact</a>
        <button id="menu-toggle" class="menu-toggle" aria-label="Toggle menu">☰</button>
      </nav>
    </div>
  </header>

  <section class="hero">
    <div class="hero-overlay">
      <h1>Go Natural 🌿</h1>
      <p class="lead">Where Nature Brings Goodness to Your Table</p>
      <a class="btn" href="about.html">Click here for more details</a>
    </div>
  </section>

  <main>
    <section class="intro container">
      <h2>Welcome to Rudraamrit Naturals</h2>
      <p>We bring you pure honey, authentic black pepper, and other natural products directly from farms. Our mission is to connect you with nature’s best offerings — pure, trusted, and sustainable.</p>
    </section>

    <section class="categories container">
      <h2>Our Products</h2>
      <div class="category-grid">
        <article class="card">
          <img src="images/honey.jpg" alt="Honey">
          <h3>Honey</h3>
          <p>Raw and natural honey sourced from local apiaries.</p>
          <a class="btn small" href="categories.html#honey">Explore</a>
        </article>

        <article class="card">
          <img src="images/pepper.jpg" alt="Black Pepper">
          <h3>Black Pepper</h3>
          <p>Aromatic, freshly harvested black pepper from trusted farmers.</p>
          <a class="btn small" href="categories.html#pepper">Explore</a>
        </article>

        <article class="card">
          <img src="images/others.jpg" alt="Other Products">
          <h3>Others</h3>
          <p>Herbs, spices and seasonal natural products.</p>
          <a class="btn small" href="categories.html#others">Explore</a>
        </article>
      </div>
    </section>

    <section class="contact-teaser container">
      <h3>Want to order or know more?</h3>
      <p>Contact us at <strong>+91-9876543210</strong> or <a href="mailto:info@rudraamrit.com">info@rudraamrit.com</a></p>
      <a class="btn" href="contact.html">Contact Us</a>
    </section>
  </main>

  <footer class="site-footer">
    <div class="container">
      <p>📞 +91-9876543210 | ✉️ info@rudraamrit.com</p>
      <p>&copy; 2025 Rudraamrit Naturals. All rights reserved.</p>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
HTML

# about.html
cat > "$ROOT/about.html" <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>About Us | Rudraamrit Naturals</title>
  <link rel="stylesheet" href="style.css"/>
</head>
<body>
  <header class="site-header">
    <div class="container header-inner">
      <img src="images/logo.png" alt="Rudraamrit Logo" class="logo">
      <nav class="main-nav">
        <a href="index.html">Home</a>
        <a href="about.html" class="active">About Us</a>
        <a href="categories.html">Categories</a>
        <a href="contact.html">Contact</a>
        <button id="menu-toggle-2" class="menu-toggle" aria-label="Toggle menu">☰</button>
      </nav>
    </div>
  </header>

  <main class="container page-content">
    <h1>About Rudraamrit Naturals</h1>
    <p>Rudraamrit Naturals is rooted in tradition and purity. We source honey, spices, and natural products directly from farmers to ensure authenticity. Our journey began with a vision to make nature’s richness accessible to everyone.</p>

    <div class="image-gallery">
      <img src="images/farm1.jpg" alt="Farm 1">
      <img src="images/farm2.jpg" alt="Farm 2">
    </div>

    <section>
      <h2>Our Values</h2>
      <ul>
        <li>Pure & unprocessed products</li>
        <li>Direct from farmers</li>
        <li>Sustainability & ethical sourcing</li>
      </ul>
    </section>
  </main>

  <footer class="site-footer">
    <div class="container">
      <p>📞 +91-9876543210 | ✉️ info@rudraamrit.com</p>
      <p>&copy; 2025 Rudraamrit Naturals</p>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
HTML

# categories.html
cat > "$ROOT/categories.html" <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Categories | Rudraamrit Naturals</title>
  <link rel="stylesheet" href="style.css"/>
</head>
<body>
  <header class="site-header">
    <div class="container header-inner">
      <img src="images/logo.png" alt="Rudraamrit Logo" class="logo">
      <nav class="main-nav">
        <a href="index.html">Home</a>
        <a href="about.html">About Us</a>
        <a href="categories.html" class="active">Categories</a>
        <a href="contact.html">Contact</a>
        <button id="menu-toggle-3" class="menu-toggle" aria-label="Toggle menu">☰</button>
      </nav>
    </div>
  </header>

  <main class="container page-content">
    <h1>Our Products</h1>

    <section id="honey" class="product-grid">
      <article class="product-card">
        <img src="images/honey.jpg" alt="Pure Honey">
        <h3>Pure Honey</h3>
        <p>Raw, unprocessed honey. Bottle sizes: 250g / 500g / 1kg.</p>
        <a class="btn" href="https://wa.me/919876543210?text=I%20want%20to%20order%20Pure%20Honey">Buy Now (WhatsApp)</a>
      </article>

      <article class="product-card" id="pepper">
        <img src="images/pepper.jpg" alt="Black Pepper">
        <h3>Black Pepper</h3>
        <p>Freshly harvested peppercorns, premium grade.</p>
        <a class="btn" href="https://wa.me/919876543210?text=I%20want%20to%20order%20Black%20Pepper">Buy Now (WhatsApp)</a>
      </article>

      <article class="product-card" id="others">
        <img src="images/others.jpg" alt="Other Natural Products">
        <h3>Other Products</h3>
        <p>Explore our collection — spices, herbs and seasonal offerings.</p>
        <a class="btn" href="https://wa.me/919876543210?text=I%20want%20to%20know%20more%20about%20other%20products">Buy Now (WhatsApp)</a>
      </article>
    </section>
  </main>

  <footer class="site-footer">
    <div class="container">
      <p>📞 +91-9876543210 | ✉️ info@rudraamrit.com</p>
      <p>&copy; 2025 Rudraamrit Naturals</p>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
HTML

# contact.html
cat > "$ROOT/contact.html" <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Contact | Rudraamrit Naturals</title>
  <link rel="stylesheet" href="style.css"/>
</head>
<body>
  <header class="site-header">
    <div class="container header-inner">
      <img src="images/logo.png" alt="Rudraamrit Logo" class="logo">
      <nav class="main-nav">
        <a href="index.html">Home</a>
        <a href="about.html">About Us</a>
        <a href="categories.html">Categories</a>
        <a href="contact.html" class="active">Contact</a>
        <button id="menu-toggle-4" class="menu-toggle" aria-label="Toggle menu">☰</button>
      </nav>
    </div>
  </header>

  <main class="container page-content">
    <h1>Contact Us</h1>

    <form class="contact-form" onsubmit="alert('This demo form does not submit. Use your backend or email service.'); return false;">
      <input type="text" name="name" placeholder="Your Name" required>
      <input type="email" name="email" placeholder="Your Email" required>
      <textarea name="message" placeholder="Your Message" rows="6" required></textarea>
      <button class="btn" type="submit">Send</button>
    </form>

    <div class="contact-info">
      <p>📍 Location: Pune, India</p>
      <p>📞 +91-9876543210</p>
      <p>✉️ <a href="mailto:info@rudraamrit.com">info@rudraamrit.com</a></p>
      <a class="btn" href="https://wa.me/919876543210">Chat on WhatsApp</a>
    </div>
  </main>

  <footer class="site-footer">
    <div class="container">
      <p>&copy; 2025 Rudraamrit Naturals</p>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
HTML

# style.css
cat > "$ROOT/style.css" <<'CSS'
/* style.css - Rudraamrit Naturals */
:root{
  --green:#2e7d32;
  --accent:#ffb300;
  --muted:#6b6b6b;
  --container-max:1100px;
}
*{box-sizing:border-box;margin:0;padding:0}
body{font-family:Inter, Arial, sans-serif;color:#222;background:#f7f7f6;line-height:1.5}
.container{max-width:var(--container-max);margin:0 auto;padding:24px}
.site-header{background:var(--green);color:#fff;position:sticky;top:0;z-index:40}
.header-inner{display:flex;align-items:center;justify-content:space-between;padding:12px 24px}
.logo{height:52px;object-fit:contain}
.main-nav{display:flex;gap:14px;align-items:center}
.main-nav a{color:#fff;text-decoration:none;font-weight:600}
.main-nav a.active{text-decoration:underline}
.menu-toggle{display:none;background:transparent;border:none;color:#fff;font-size:20px}

/* Hero */
.hero{height:70vh;background-image:url('images/hero.jpg');background-size:cover;background-position:center;display:flex;align-items:center;justify-content:center;position:relative}
.hero-overlay{background:rgba(0,0,0,0.35);padding:36px;border-radius:10px;color:#fff;text-align:center;max-width:900px}
.hero h1{font-size:clamp(28px,5vw,48px);margin-bottom:8px}
.lead{font-size:18px;margin-bottom:12px}

/* Cards & grids */
.category-grid,.product-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(240px,1fr));gap:20px;margin-top:18px}
.card,.product-card{background:#fff;padding:16px;border-radius:12px;box-shadow:0 6px 16px rgba(0,0,0,0.08);text-align:center}
.card img,.product-card img{width:100%;height:180px;object-fit:cover;border-radius:8px;margin-bottom:10px}

/* Buttons */
.btn{display:inline-block;background:var(--green);color:#fff;padding:10px 16px;border-radius:8px;text-decoration:none;font-weight:600}
.btn.small{padding:8px 12px;font-size:14px}
.btn:focus{outline:3px solid rgba(46,125,50,0.2)}

/* forms */
.contact-form{max-width:600px;margin:18px auto;display:flex;flex-direction:column;gap:12px}
.contact-form input,.contact-form textarea{padding:10px;border-radius:8px;border:1px solid #ddd}

/* footer */
.site-footer{background:var(--green);color:#fff;padding:18px;margin-top:30px;text-align:center}

/* responsive */
@media (max-width:820px){
  .menu-toggle{display:inline-block}
  .main-nav a{display:none}
  .main-nav.open a{display:inline-block;padding:8px 0;width:100%}
  .header-inner{gap:12px}
  .hero{height:50vh}
}
CSS

# script.js
cat > "$ROOT/script.js" <<'JS'
/* Minimal script for menu toggle and small interactions */
document.addEventListener('DOMContentLoaded', function () {
  function attachToggle(btnId) {
    const btn = document.getElementById(btnId);
    if (!btn) return;
    btn.addEventListener('click', function () {
      const nav = btn.closest('.header-inner').querySelector('.main-nav');
      nav.classList.toggle('open');
    });
  }

  attachToggle('menu-toggle');
  attachToggle('menu-toggle-2');
  attachToggle('menu-toggle-3');
  attachToggle('menu-toggle-4');

  // Smooth scroll for anchor links
  document.querySelectorAll('a[href^="#"]').forEach(a => {
    a.addEventListener('click', function (e) {
      e.preventDefault();
      const id = this.getAttribute('href').slice(1);
      const el = document.getElementById(id);
      if (el) el.scrollIntoView({behavior: 'smooth', block: 'start'});
    });
  });
});
JS

# Create placeholder image files (tiny SVG placeholders)
cat > "$IMAGES_DIR/placeholder.svg" <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="800" height="600" viewBox="0 0 800 600">
  <rect width="100%" height="100%" fill="#eee"/>
  <text x="50%" y="50%" dominant-baseline="middle" text-anchor="middle" fill="#888" font-family="Arial" font-size="24">Replace this image in images/</text>
</svg>
SVG

# Duplicate placeholders with suggested names
cp "$IMAGES_DIR/placeholder.svg" "$IMAGES_DIR/logo.png"
cp "$IMAGES_DIR/placeholder.svg" "$IMAGES_DIR/hero.jpg"
cp "$IMAGES_DIR/placeholder.svg" "$IMAGES_DIR/honey.jpg"
cp "$IMAGES_DIR/placeholder.svg" "$IMAGES_DIR/pepper.jpg"
cp "$IMAGES_DIR/placeholder.svg" "$IMAGES_DIR/others.jpg"
cp "$IMAGES_DIR/placeholder.svg" "$IMAGES_DIR/farm1.jpg"
cp "$IMAGES_DIR/placeholder.svg" "$IMAGES_DIR/farm2.jpg"

echo "Done. Project scaffold created at: ./$ROOT"
echo
echo "Next steps:"
echo "1) Replace the placeholder images in $IMAGES_DIR with your real images (logo.png, hero.jpg, honey.jpg, pepper.jpg, others.jpg, farm1.jpg, farm2.jpg)."
echo "2) Open the site: open $ROOT/index.html  (on mac) or start a simple local server:"
echo "     python3 -m http.server --directory $ROOT 8000"
echo "   Then visit http://localhost:8000 in your browser."
echo "3) To publish: push this folder to GitHub and enable GitHub Pages, or deploy on Netlify/Vercel."
