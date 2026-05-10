<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Golden Fork - Fine Dining Restaurant</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Georgia', serif;
            line-height: 1.6;
            color: #333;
        }
        
        header {
            background: linear-gradient(135deg, #2c1810 0%, #3d2817 100%);
            color: #f4e4c1;
            padding: 1rem 0;
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 2px 10px rgba(0,0,0,0.3);
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            font-size: 1.8rem;
            font-weight: bold;
            color: #d4af37;
        }
        
        nav ul {
            display: flex;
            list-style: none;
            gap: 2rem;
        }
        
        nav a {
            color: #f4e4c1;
            text-decoration: none;
            transition: color 0.3s;
        }
        
        nav a:hover {
            color: #d4af37;
        }
        
        .hero {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 600"><rect fill="%23a67c52" width="1200" height="600"/></svg>');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            padding: 150px 20px;
            margin-bottom: 60px;
        }
        
        .hero h1 {
            font-size: 4rem;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }
        
        .hero p {
            font-size: 1.5rem;
            margin-bottom: 2rem;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.5);
        }
        
        .cta-button {
            display: inline-block;
            background: #d4af37;
            color: #2c1810;
            padding: 12px 30px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: bold;
            transition: transform 0.3s, box-shadow 0.3s;
            box-shadow: 0 4px 15px rgba(212, 175, 55, 0.3);
        }
        
        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(212, 175, 55, 0.5);
        }
        
        section {
            padding: 60px 20px;
        }
        
        section h2 {
            font-size: 2.5rem;
            margin-bottom: 2rem;
            color: #2c1810;
            text-align: center;
            border-bottom: 3px solid #d4af37;
            padding-bottom: 1rem;
        }
        
        .menu-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }
        
        .menu-item {
            background: #f9f7f4;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s;
        }
        
        .menu-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 12px rgba(0,0,0,0.15);
        }
        
        .menu-item h3 {
            color: #d4af37;
            margin-bottom: 0.5rem;
        }
        
        .price {
            color: #2c1810;
            font-weight: bold;
            font-size: 1.2rem;
            margin-top: 1rem;
        }
        
        .about {
            background: #f9f7f4;
        }
        
        .about-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
        }
        
        .about-text h3 {
            font-size: 1.8rem;
            color: #d4af37;
            margin-bottom: 1rem;
        }
        
        .contact-form {
            max-width: 600px;
            margin: 2rem auto;
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }
        
        .contact-form input,
        .contact-form textarea {
            padding: 12px;
            border: 1px solid #d4af37;
            border-radius: 4px;
            font-family: inherit;
            font-size: 1rem;
        }
        
        .contact-form button {
            padding: 12px;
            background: #d4af37;
            color: #2c1810;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }
        
        .contact-form button:hover {
            background: #c99e2e;
        }
        
        footer {
            background: #2c1810;
            color: #f4e4c1;
            text-align: center;
            padding: 2rem;
            margin-top: 3rem;
        }
        
        .info-boxes {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin: 2rem 0;
        }
        
        .info-box {
            text-align: center;
            padding: 2rem;
            background: #f9f7f4;
            border-radius: 8px;
        }
        
        .info-box h4 {
            color: #d4af37;
            margin-bottom: 1rem;
        }
        
        @media (max-width: 768px) {
            nav ul {
                gap: 1rem;
                font-size: 0.9rem;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .about-content {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <nav>
                <div class="logo">🍽️ The Golden Fork</div>
                <ul>
                    <li><a href="#menu">Menu</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="hero">
        <div class="container">
            <h1>Experience Fine Dining</h1>
            <p>Culinary Excellence Meets Elegant Ambiance</p>
            <a href="#menu" class="cta-button">View Menu</a>
        </div>
    </section>

    <section id="menu">
        <div class="container">
            <h2>Our Signature Menu</h2>
            <div class="menu-grid">
                <div class="menu-item">
                    <h3>🥩 Premium Steaks</h3>
                    <p>Aged beef cuts, grilled to perfection with our signature spice blend. Accompanied by seasonal vegetables and truffle potatoes.</p>
                    <div class="price">$45.99</div>
                </div>
                <div class="menu-item">
                    <h3>🦞 Fresh Seafood</h3>
                    <p>Daily catch of Atlantic lobster and wild-caught salmon. Prepared with a delicate lemon butter sauce.</p>
                    <div class="price">$52.99</div>
                </div>
                <div class="menu-item">
                    <h3>🍝 Pasta Al Forno</h3>
                    <p>Handmade pasta with homemade marinara, fresh basil, and aged Parmesan. A classic Italian favorite.</p>
                    <div class="price">$38.99</div>
                </div>
                <div class="menu-item">
                    <h3>🍗 Duck Confit</h3>
                    <p>Tender duck leg confit served with crispy potatoes and roasted root vegetables in red wine reduction.</p>
                    <div class="price">$48.99</div>
                </div>
                <div class="menu-item">
                    <h3>🥗 Garden Salad</h3>
                    <p>Mixed organic greens with goat cheese, candied walnuts, and our house-made vinaigrette.</p>
                    <div class="price">$16.99</div>
                </div>
                <div class="menu-item">
                    <h3>🍰 Dessert Delights</h3>
                    <p>Seasonal desserts including chocolate mousse, crème brûlée, and fresh berry tart.</p>
                    <div class="price">$12.99</div>
                </div>
            </div>
        </div>
    </section>

    <section id="about" class="about">
        <div class="container">
            <h2>About The Golden Fork</h2>
            <div class="about-content">
                <div class="about-text">
                    <h3>Where Tradition Meets Innovation</h3>
                    <p>Founded in 2015, The Golden Fork has been serving exceptional cuisine and unforgettable experiences to our valued guests. Our head chef brings 20+ years of international culinary expertise, crafting menus that celebrate both classic techniques and modern creativity.</p>
                    <p style="margin-top: 1rem;">We source the finest local ingredients and maintain partnerships with premium suppliers to ensure every dish meets our exacting standards.</p>
                </div>
                <div class="info-boxes">
                    <div class="info-box">
                        <h4>⭐ Excellence</h4>
                        <p>Michelin Star aspirant with 4.9/5 rating</p>
                    </div>
                    <div class="info-box">
                        <h4>👨‍🍳 Master Chef</h4>
                        <p>International culinary expertise</p>
                    </div>
                    <div class="info-box">
                        <h4>🌱 Local</h4>
                        <p>Farm-to-table philosophy</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <h2>Get In Touch</h2>
            <div class="info-boxes">
                <div class="info-box">
                    <h4>📍 Location</h4>
                    <p>123 Culinary Lane<br>Gourmet City, GC 12345</p>
                </div>
                <div class="info-box">
                    <h4>📞 Phone</h4>
                    <p>+1 (555) 123-4567</p>
                </div>
                <div class="info-box">
                    <h4>🕐 Hours</h4>
                    <p>Tue-Sun: 5PM - 11PM<br>Closed Mondays</p>
                </div>
            </div>
            <form class="contact-form">
                <input type="text" placeholder="Your Name" required>
                <input type="email" placeholder="Your Email" required>
                <textarea rows="5" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2026 The Golden Fork. All rights reserved.</p>
            <p>Excellence in Every Plate | Fine Dining Excellence</p>
        </div>
    </footer>
</body>
</html>
