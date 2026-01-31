# Lydia Jingxian Wang's Personal Website

A beautiful, responsive personal portfolio website showcasing Lydia's achievements in academics, sports, arts, and community service.

## 🌟 Features

- **Responsive Design** - Works perfectly on desktop, tablet, and mobile devices
- **Smooth Animations** - Engaging scroll animations and interactive elements
- **Tabbed Navigation** - Easy-to-browse sections for different areas of achievement
- **Colorful & Creative** - Age-appropriate, cheerful design reflecting Lydia's vibrant personality
- **Easy to Customize** - Simple HTML/CSS structure, no build tools needed

## 📁 Project Structure

```
lydia-website/
├── index.html          # Main website page
├── css/
│   └── style.css      # All styling
├── js/
│   └── main.js        # Interactive elements
├── assets/
│   ├── images/        # Add your photos here!
│   └── icons/         # Custom icons (optional)
├── resources/         # Source materials (PDF resume, etc.)
└── README.md          # This file
```

## 🚀 How to View the Website

### Option 1: Python (Recommended)
Open a terminal in the project folder and run:
```bash
python3 -m http.server 8000
```
Then open your browser to: http://localhost:8000

### Option 2: Using a Browser
Simply double-click the `index.html` file to open it in your default browser.

### Option 3: VS Code Live Server
If you use VS Code:
1. Install the "Live Server" extension
2. Right-click on `index.html`
3. Select "Open with Live Server"

## ✏️ Customizing the Website

### Adding Your Own Photos

1. Place your images in the `assets/images/` folder
2. Replace the placeholder SVGs in the gallery section with actual `<img>` tags:

```html
<!-- Replace this -->
<div class="gallery-placeholder">
    <span class="placeholder-icon">⛳</span>
    <p>Golf Competition</p>
</div>

<!-- With this -->
<img src="assets/images/golf-competition.jpg" alt="Golf Competition">
```

### Updating the Profile Picture

In the `index.html` file, find the hero section and replace the SVG with:

```html
<img src="assets/images/profile-photo.jpg" alt="Lydia Wang" class="profile-photo">
```

### Changing Colors

Edit the CSS variables in `css/style.css`:

```css
:root {
    --primary: #FF6B9D;      /* Main pink color */
    --secondary: #4ECDC4;    /* Teal accent */
    --accent: #FFE66D;       /* Yellow highlights */
    /* ... etc */
}
```

### Adding New Achievements

Each section uses a consistent card structure. Simply copy an existing card and update the content:

```html
<div class="academic-card">
    <div class="card-icon">🏆</div>
    <h3>Your Title Here</h3>
    <ul class="achievement-list">
        <li><strong>Achievement Name</strong> - Description</li>
    </ul>
</div>
```

## 🌐 Publishing the Website

### GitHub Pages (Free!)

1. Create a GitHub account
2. Create a new repository named `lydia-website`
3. Upload all files to the repository
4. Go to Settings → Pages
5. Select "main" branch as the source
6. Your site will be live at: `https://yourusername.github.io/lydia-website/`

### Netlify (Drag & Drop)

1. Go to [netlify.com](https://netlify.com)
2. Drag and drop the entire project folder
3. Your site will be live instantly with a free URL!

### Vercel

1. Go to [vercel.com](https://vercel.com)
2. Import your project
3. Deploy with one click

## 📱 Sections Overview

1. **Hero** - Welcoming introduction with profile image
2. **About Me** - Brief biography and key highlights
3. **Academic Excellence** - Mathematics, English, and Poetry achievements
4. **Sports & Golf** - State-level golf championships and other sports
5. **Creative Arts** - Music, Drama, Visual Arts, and Language Arts (with tabs!)
6. **Leadership** - Community service and leadership roles
7. **Gallery** - Photo gallery (add your own images!)

## 🎨 Design Features

- **Floating Shapes** - Animated background elements in the hero section
- **Smooth Scrolling** - Click navigation links for smooth scroll to sections
- **Hover Effects** - Cards lift up on hover
- **Tabbed Content** - Easy navigation through different art categories
- **Mobile Menu** - Responsive hamburger menu for mobile devices
- **Scroll Animations** - Elements fade in as you scroll down

## 🎯 Tips for Parents

1. **Photos**: Use high-quality, well-lit photos. Landscape orientation works best.
2. **Keep it Updated**: Add new achievements as they happen!
3. **Privacy**: Only share information you're comfortable making public.
4. **Backup**: Keep a copy of the original files before making major changes.
5. **Test**: Always test on different devices (phone, tablet, computer).

## 🦄 Easter Egg

Try entering the Konami Code on your keyboard:
↑↑↓↓←→←→BA

## 📞 Support

If you need help or want to add new features, the code is well-commented throughout. Each section clearly indicates its purpose.

---

Built with ❤️ for Lydia Jingxian Wang
