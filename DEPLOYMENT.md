# Deployment Guide

## Pre-Deployment Checklist

- [ ] Test all photo links work correctly
- [ ] Test mobile responsiveness (use browser DevTools or your phone)
- [ ] Check for any typos or errors
- [ ] Verify all sections display correctly

## Deployment Options

### 1. Netlify (Recommended - Easiest)
**Pros:**
- Drag & drop deployment
- Free SSL certificate
- Automatic HTTPS
- Fast CDN
- Custom domain support later

**Steps:**
1. Go to https://app.netlify.com/drop
2. Drag the `lydia-website` folder onto the page
3. Your site is live instantly!
4. You can change the site name in Netlify settings

**URL:** `https://random-name.netlify.app`

---

### 2. GitHub Pages (Best for developers)
**Pros:**
- Completely free
- Version control
- Easy updates
- Professional

**Steps:**
1. Install Git: `brew install git` (if not installed)
2. Create a GitHub account at https://github.com
3. Create a new repository (name it `lydia-website`)
4. In your project folder, run these commands:

```bash
cd /Users/eric/Documents/repo/lydia-website
git init
git add .
git commit -m "Initial commit - Lydia's portfolio website"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/lydia-website.git
git push -u origin main
```

5. Go to repository Settings → Pages
6. Select "main" branch as source
7. Click Save
8. Your site will be live at: `https://YOUR_USERNAME.github.io/lydia-website/`

---

### 3. Vercel
**Pros:**
- Excellent performance
- Automatic deployments
- Free SSL
- Easy preview URLs

**Steps:**
1. Go to https://vercel.com
2. Sign up with GitHub
3. Import your repository or upload folder
4. Deploy!

---

## Custom Domain (Optional)

If you want a custom domain like `lydiawang.com`:
1. Purchase a domain from Namecheap, GoDaddy, or Google Domains (~$10-15/year)
2. Follow the hosting provider's instructions to connect your domain

## Updating Your Website

### Netlify:
- Drag & drop the updated folder again

### GitHub Pages:
```bash
git add .
git commit -m "Update content"
git push
```

### Vercel:
- Automatic when you push to GitHub

## Recommended

For most users, I recommend **Netlify** for its simplicity and excellent performance.
