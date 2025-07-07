# 📝 Tech Blog App — Full CI/CD Automation

A complete Python-based technical blog application with automated CI/CD using GitHub Actions, Docker, Terraform (for EC2), Trivy vulnerability scanning, and email notifications. The pipeline is fully configurable using a central `blueprint.yaml` file and extracted using Bash.

---

## 📦 Features

- Python Flask-based tech blog app with HTML + CSS
- Dockerized app with versioned tagging (`branch-sha`)
- Unit testing with `pytest`
- CI/CD pipeline using GitHub Actions
- Trivy vulnerability scanning on Docker image
- EC2 deployment using Docker Compose
- Email notification upon successful deployment
- Configurable via a single `blueprint.yaml` file

---

## 🧭 Directory Structure

tech-blog-app/
├── app/ # Python app code
│ ├── main.py
│ ├── templates/
│ │ └── index.html
│ └── static/
│ └── style.css
├── tests/
│ └── test_main.py # Unit tests
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── blueprint.yaml # Central config file
├── extract.sh # Bash script to export blueprint vars
└── .github/
└── workflows/
└── main.yaml # CI/CD pipeline

🚀 CI/CD Pipeline: GitHub Actions
On every push to main, dev, feature/**, or fix/** branches:

✅ Checkout source

🧠 Extract vars from blueprint.yaml using extract.sh

🧪 Install Python deps and run unit tests

🐳 Build Docker image with tag: branchname-sha

🔐 Login to Docker Hub using GitHub secrets

📤 Push the tagged and latest Docker image

🔍 Run Trivy scan (fails if CRITICAL/HIGH found)

☁️ SSH into EC2 and deploy with Docker Compose
