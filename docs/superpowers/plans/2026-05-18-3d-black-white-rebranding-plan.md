# 3D Monochrome Design Overhaul & Rebranding Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Overhaul the visual identity and user interface of the Web Dev Portfolio to reflect a premium 3D Neo-Brutalist high-contrast Black & White aesthetic and rename all branding occurrences to "Crizaldo Nozal AJ".

**Architecture:** Establish a modern, strict two-color CSS custom properties architecture in the root themes (Light & Dark), overhaul interactive button elements to respond to mouse events with 3D translations, apply card shadow translations, and perform a global replacement of name branding references in index and login pages.

**Tech Stack:** Vanilla HTML, CSS, JavaScript, Supabase Client library.

---

### Task 1: Rebrand Name Occurrences to Crizaldo Nozal AJ

**Files:**
- Modify: `c:/Users/Uchiha Jerick/Desktop/Clyde/Final Project/Crisaldo/index.html:1-3516`
- Modify: `c:/Users/Uchiha Jerick/Desktop/Clyde/Final Project/Crisaldo/login.html:1-312`

- [ ] **Step 1: Rebrand login.html page title and brand header logo**
  
  Modify `login.html`:
  ```html
  <title>Login | Crizaldo Portfolio</title>
  ```
  And:
  ```html
  <div class="logo">CRIZALDO</div>
  ```

- [ ] **Step 2: Rebrand index.html page title, brand header, and Hero section**
  
  Modify `index.html`:
  ```html
  <title>Crizaldo Nozal AJ | Web Dev Portfolio</title>
  ```
  And:
  ```html
  <div class="nav-brand-name">CRIZALDO NOZAL AJ</div>
  ```
  And:
  ```html
  <h1 class="hero-name">
      <span class="line1">CRIZALDO NOZAL</span>
      <span class="line2">AJ</span>
  </h1>
  ```

- [ ] **Step 3: Rebrand inner activities, text descriptions, and exercise logs**
  
  Systematically replace all remaining references of "Baradillo Jiame" or "Baradillo Jiame N." with "Crizaldo Nozal AJ" in `index.html`. Specifically:
  *   Line 1504, 1511, 1562
  *   Line 1671, 1677
  *   Line 1728, 1734
  *   Line 1788, 1796
  *   Line 1817
  *   Line 2206, 2217

- [ ] **Step 4: Commit changes**
  
  Run:
  ```powershell
  git commit -am "chore: rebrand project identity to Crizaldo Nozal AJ"
  ```
  Expected: Success

---

### Task 2: Implement White & Black Monochrome Variable Token System

**Files:**
- Modify: `c:/Users/Uchiha Jerick/Desktop/Clyde/Final Project/Crisaldo/index.html:12-65`

- [ ] **Step 1: Set Monochrome CSS variables for default Light Mode**
  
  Replace `:root` in `index.html`:
  ```css
  :root {
      --bg: #ffffff;
      --text: #000000;
      --muted: #52525b;
      --accent1: #000000;
      --accent2: #18181b;
      --card-bg: #ffffff;
      --card-border: #000000;
      --shadow-color: #000000;
      --shadow-offset: 6px;
  }
  ```

- [ ] **Step 2: Set Monochrome CSS variables for Dark Mode**
  
  Replace `.dark` in `index.html`:
  ```css
  .dark {
      --bg: #000000;
      --text: #ffffff;
      --muted: #a1a1aa;
      --accent1: #ffffff;
      --accent2: #f4f4f5;
      --card-bg: #000000;
      --card-border: #ffffff;
      --shadow-color: #ffffff;
      --shadow-offset: 6px;
  }
  ```

- [ ] **Step 3: Update Body styles for a premium grid canvas pattern background**
  
  Update body styles in `index.html`:
  ```css
  body {
      font-family: 'DM Sans', sans-serif;
      color: var(--text);
      min-height: 100vh;
      background-color: var(--bg);
      background-image: 
          radial-gradient(rgba(0,0,0,0.06) 1.5px, transparent 1.5px),
          radial-gradient(rgba(0,0,0,0.06) 1.5px, transparent 1.5px);
      background-size: 24px 24px;
      background-position: 0 0, 12px 12px;
      background-attachment: fixed;
      transition: background 0.3s ease, color 0.3s ease;
  }

  .dark body {
      background-color: var(--bg);
      background-image: 
          radial-gradient(rgba(255,255,255,0.08) 1.5px, transparent 1.5px),
          radial-gradient(rgba(255,255,255,0.08) 1.5px, transparent 1.5px);
  }
  ```

- [ ] **Step 4: Commit changes**
  
  Run:
  ```powershell
  git commit -am "style: set monochrome custom properties and canvas background"
  ```
  Expected: Success

---

### Task 3: Overhaul Components to 3D Neo-Brutalist Layout

**Files:**
- Modify: `c:/Users/Uchiha Jerick/Desktop/Clyde/Final Project/Crisaldo/index.html` (Header, Buttons, Cards, Modals)

- [ ] **Step 1: Style the Header with a solid 3D border**
  
  Modify `.top-header` in `index.html`:
  ```css
  .top-header {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 76px;
      background: var(--bg);
      border-bottom: 3px solid var(--text);
      z-index: 500;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 44px;
      transition: all 0.3s ease;
  }
  ```

- [ ] **Step 2: Overhaul buttons into interactive 3D elements**
  
  Update `.btn`, `.btn-primary`, and `.btn-ghost` classes in `index.html`:
  ```css
  .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 13px 26px;
      font-size: 13.5px;
      font-weight: 700;
      letter-spacing: .5px;
      text-decoration: none;
      border: 3px solid var(--text);
      border-radius: 0px; /* Flat brutalist sharp corners */
      cursor: pointer;
      background: var(--bg);
      color: var(--text);
      box-shadow: 4px 4px 0px var(--text);
      transition: all 0.15s cubic-bezier(0.175, 0.885, 0.32, 1.275);
      transform: translate(0, 0);
  }

  .btn:hover {
      background: var(--text);
      color: var(--bg);
      transform: translate(-2px, -2px);
      box-shadow: 6px 6px 0px var(--text);
  }

  .btn:active {
      transform: translate(4px, 4px);
      box-shadow: 0px 0px 0px var(--text);
  }

  .btn-primary {
      background: var(--text);
      color: var(--bg);
  }

  .btn-primary:hover {
      background: var(--bg);
      color: var(--text);
  }
  ```

- [ ] **Step 3: Make all portfolio cards and exercise boxes 3D Neo-Brutalist**
  
  Modify styling for `.act-card`, `.exercise`, `.panel-output`, `.panel-code` in `index.html`:
  ```css
  .act-card {
      background: var(--card-bg);
      border: 3px solid var(--text);
      border-radius: 0px;
      padding: 22px;
      text-decoration: none;
      display: block;
      box-shadow: var(--shadow-offset) var(--shadow-offset) 0px var(--shadow-color);
      transition: all 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
      cursor: pointer;
  }

  .act-card:hover {
      transform: translate(-3px, -3px);
      box-shadow: 9px 9px 0px var(--shadow-color);
      background: var(--card-bg);
  }

  .exercise {
      background: var(--card-bg);
      border: 3px solid var(--text);
      border-radius: 0px;
      padding: 22px;
      box-shadow: var(--shadow-offset) var(--shadow-offset) 0px var(--shadow-color);
      margin-bottom: 24px;
  }

  .panel-output, .panel-code {
      border: 3px solid var(--text);
      border-radius: 0px;
      box-shadow: 4px 4px 0px var(--text);
      margin-top: 12px;
  }
  ```

- [ ] **Step 4: Update the Theme toggle and active navigation states to pure monochrome**
  
  Update `.theme-toggle` and `.nav-link` styles:
  ```css
  .theme-toggle {
      width: 40px;
      height: 40px;
      background: var(--bg);
      border: 3px solid var(--text);
      border-radius: 0px;
      cursor: pointer;
      display: flex;
      justify-content: center;
      align-items: center;
      transition: all 0.15s ease;
      box-shadow: 3px 3px 0px var(--text);
  }

  .theme-toggle:hover {
      transform: translate(-1px, -1px);
      box-shadow: 4px 4px 0px var(--text);
  }

  .theme-toggle:active {
      transform: translate(3px, 3px);
      box-shadow: 0px 0px 0px var(--text);
  }

  .nav-link:hover, .nav-link.active {
      color: var(--bg);
      background: var(--text);
      border: 2px solid var(--text);
      border-radius: 0px;
  }
  ```

- [ ] **Step 5: Commit changes**
  
  Run:
  ```powershell
  git commit -am "style: convert components and layout into 3D Neo-Brutalist aesthetic"
  ```
  Expected: Success

---

### Task 4: Stylize Login Page to 3D Monochrome

**Files:**
- Modify: `c:/Users/Uchiha Jerick/Desktop/Clyde/Final Project/Crisaldo/login.html:9-192`

- [ ] **Step 1: Set monochrome variables, styling, and 3D interactions in login.html**
  
  Modify the styling block in `login.html`:
  ```css
  :root {
      --bg: #ffffff;
      --text: #000000;
      --muted: #52525b;
      --accent1: #000000;
      --accent2: #18181b;
  }

  body {
      font-family: 'DM Sans', sans-serif;
      background-color: var(--bg);
      background-image: 
          radial-gradient(rgba(0,0,0,0.06) 1.5px, transparent 1.5px),
          radial-gradient(rgba(0,0,0,0.06) 1.5px, transparent 1.5px);
      background-size: 24px 24px;
      background-position: 0 0, 12px 12px;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--text);
      padding: 20px;
  }

  .auth-container {
      width: 100%;
      max-width: 420px;
      background: var(--bg);
      border: 3px solid var(--text);
      border-radius: 0px;
      padding: 40px;
      box-shadow: 8px 8px 0px var(--text);
      text-align: center;
  }

  input {
      width: 100%;
      padding: 12px 16px;
      border-radius: 0px;
      border: 3px solid var(--text);
      background: var(--bg);
      color: var(--text);
      font-family: inherit;
      font-size: 15px;
      transition: all 0.2s;
  }

  input:focus {
      outline: none;
      box-shadow: 4px 4px 0px var(--text);
  }

  .btn-primary {
      background: var(--text);
      color: var(--bg);
      border: 3px solid var(--text);
      border-radius: 0px;
      font-weight: 700;
      box-shadow: 4px 4px 0px var(--text);
      transition: all 0.15s ease;
  }

  .btn-primary:hover {
      background: var(--bg);
      color: var(--text);
      transform: translate(-2px, -2px);
      box-shadow: 6px 6px 0px var(--text);
  }

  .btn-primary:active {
      transform: translate(4px, 4px);
      box-shadow: 0px 0px 0px var(--text);
  }
  ```

- [ ] **Step 2: Commit changes**
  
  Run:
  ```powershell
  git commit -am "style: complete 3D monochrome overhaul of login page"
  ```
  Expected: Success
