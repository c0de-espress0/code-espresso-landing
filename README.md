# ☕ Code Espresso Landing Page

A premium, modern landing page for **Code Espresso**, a boutique software studio specializing in AI, Cloud, and Full-Stack solutions.

![Code Espresso Preview](image_2.png)

## 🚀 Features

-   **Premium Dark UI**: Deep black aesthetics with neon cyan/blue gradients.
-   **Glassmorphism**: Modern frosted glass effects on headers and cards.
-   **Responsive Design**: Fully optimized for desktop, tablet, and mobile.
-   **High Performance**: Static HTML/CSS served via Nginx.

## 🛠️ Tech Stack

-   **Frontend**: HTML5, CSS3 (Variables, Flexbox, Grid), Vanilla JavaScript.
-   **Infrastructure**: Docker, Nginx (Alpine).
-   **Deployment**: Google Cloud Run.

## 📦 Deployment

The project includes a helper script for deploying to Google Cloud Run.

### Prerequisites
-   Google Cloud SDK (`gcloud`) installed and authenticated.
-   Docker installed.

### Deploy Command
```bash
# Usage: ./deploy.sh <PROJECT_ID> [REGION]
./deploy.sh my-project-id us-central1
```

This script will:
1.  Build the Docker container using Google Cloud Build.
2.  Deploy the service to Cloud Run (exposed on port 80).
3.  Output the live service URL.

## 💻 Local Development

You can run the site locally using Docker:

```bash
# Build the image
docker build -t code-espresso .

# Run container on localhost:8080
docker run -p 8080:80 code-espresso
```

Visit `http://localhost:8080` to see the site.

## 📂 Project Structure

```
├── deploy.sh        # Deployment script for Google Cloud Run
├── Dockerfile       # Nginx configuration for containerization
├── image.png        # Hero visual / reference image
├── index.html       # Main landing page structure
├── script.js        # Interactivity (mobile menu, scrolling)
└── style.css        # Global styles, variables, and animations
```

## 📄 License

Proprietary software. All rights reserved © 2026 Code Espresso.
