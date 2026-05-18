# 3D Monochrome Design Overhaul & Rebranding to Crizaldo Nozal AJ

**Date**: 2026-05-18  
**Author**: Antigravity (AI Pair Programmer)  
**Status**: Approved

---

## 1. Goal & Objectives

Transform the Web Dev Portfolio website into a premium, tactile **3D Neo-Brutalist design** using a strict **White & Black** monochrome color palette, while completely rebranding the identity across the entire system.

### Core Objectives:
1.  **Rebranding**: Change the name from "Baradillo Jiame N." to **Crizaldo Nozal AJ** in all files (`index.html`, `login.html`, headers, page titles, text sections, and exercise illustrations).
2.  **Color System**: Strip out all green, purple, and gradient backgrounds. Establish a high-contrast monochrome design utilizing only pure black and white values, with subtle zinc/gray borders and shadows for modern tactile depth.
3.  **3D Neo-Brutalist Aesthetic**:
    *   Introduce crisp, solid 3D block shadows on all primary cards, nav headers, and modals.
    *   Create tactile physical movement on buttons and interactive elements (`transform` translations on hover and active click states) to simulate a physical 3D push-button mechanism.
    *   Preserve fully functional light/dark mode styling, rendering white-on-black and black-on-white high contrast modes beautifully.

---

## 2. Color System Tokens

We will replace the existing CSS variables in `index.html` and `login.html` with modern monochrome design tokens:

### Light Mode (`:root` default)
*   `--bg`: `#ffffff`
*   `--text`: `#000000`
*   `--muted`: `#52525b` (zinc-600)
*   `--accent1`: `#000000`
*   `--accent2`: `#18181b` (zinc-900)
*   `--card-bg`: `#ffffff`
*   `--card-border`: `#000000`
*   `--shadow-color`: `#000000`
*   `--shadow-offset`: `6px`

### Dark Mode (`.dark`)
*   `--bg`: `#000000`
*   `--text`: `#ffffff`
*   `--muted`: `#a1a1aa` (zinc-400)
*   `--accent1`: `#ffffff`
*   `--accent2`: `#f4f4f5` (zinc-100)
*   `--card-bg`: `#000000`
*   `--card-border`: `#ffffff`
*   `--shadow-color`: `#ffffff`
*   `--shadow-offset`: `6px`

---

## 3. Component Design & Interactions

### A. The 3D Tactile Buttons (`.btn`)
All buttons will receive a physically interactive 3D style:
*   **Base State**: Solid borders, background, text, and flat block shadow:
    ```css
    border: 2px solid var(--text);
    background: var(--text);
    color: var(--bg);
    box-shadow: 4px 4px 0px var(--text);
    transition: all 0.15s cubic-bezier(0.4, 0, 0.2, 1);
    transform: translate(0, 0);
    ```
*   **Hover State**: Elevates up and right slightly, increasing shadow depth:
    ```css
    transform: translate(-2px, -2px);
    box-shadow: 6px 6px 0px var(--text);
    background: var(--bg);
    color: var(--text);
    ```
*   **Active (Click) State**: Physical depression, dropping down and left, shrinking shadow:
    ```css
    transform: translate(4px, 4px);
    box-shadow: 0px 0px 0px var(--text);
    ```

### B. Neo-Brutalist Cards (`.act-card` and `.exercise`)
*   **Style**: Pure white/black backgrounds, thick solid borders, and solid block shadows:
    ```css
    border: 3px solid var(--text);
    background: var(--card-bg);
    box-shadow: var(--shadow-offset) var(--shadow-offset) 0px var(--shadow-color);
    transition: all 0.2s ease;
    ```
*   **Hover State**:
    ```css
    transform: translate(-3px, -3px);
    box-shadow: 9px 9px 0px var(--shadow-color);
    ```

### C. Background Styling
Remove current radial green/emerald gradient decorations in favor of a clean, premium grid canvas pattern or dotted retro layout that represents modern web aesthetics, or pure matte white/black:
*   **Canvas Pattern**:
    ```css
    body {
        background-color: var(--bg);
        background-image: 
            radial-gradient(var(--text) 1px, transparent 0),
            radial-gradient(var(--text) 1px, transparent 0);
        background-size: 24px 24px;
        background-position: 0 0, 12px 12px;
        opacity: 0.95;
    }
    .dark body {
        background-image: 
            radial-gradient(rgba(255,255,255,0.15) 1px, transparent 0),
            radial-gradient(rgba(255,255,255,0.15) 1px, transparent 0);
    }
    ```

---

## 4. Rebranding Map

Below are the key rebranding mapping rules to apply systematically:

| File | Target (Old) | Replacement (New) | Location Details |
| :--- | :--- | :--- | :--- |
| `index.html` | `Baradillo Jiame N. | Web Dev Portfolio` | `Crizaldo Nozal AJ | Web Dev Portfolio` | `<title>` tag |
| `index.html` | `BARADILLO JIAME N.` | `CRIZALDO NOZAL AJ` | Brand Header |
| `index.html` | `BARADILLO JIAME` | `CRIZALDO NOZAL` | Hero Line 1 |
| `index.html` | `N.` | `AJ` | Hero Line 2 |
| `index.html` | `Baradillo Jiame` | `Crizaldo Nozal AJ` | In activities description / details |
| `login.html` | `Baradillo Portfolio` | `Crizaldo Portfolio` | `<title>` tag |
| `login.html` | `BARADILLO` | `CRIZALDO` | Logo Brand |

---

## 5. Verification Plan

### Manual Verification
1.  **Run Dev Server**: Launch page locally to inspect aesthetics.
2.  **Interactive Elements Check**: Validate hover and click states of all 3D buttons, 3D cards, and forms.
3.  **Visual Consistency**: Ensure all colored components (green, purple, etc.) are converted to elegant monochrome black and white.
4.  **Theme Check**: Confirm light mode and dark mode both present a high-contrast 3D monochrome layout.
5.  **Rebranding Sweep**: Search files to ensure zero occurrences of "Baradillo" or "Jiame" remain.
