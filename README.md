# 🧠  Meal-Prep-AI

## Overview

This is an AI-powered meal planning system built with Flask. It uses multiple intelligent agents to generate meal suggestions based on dietary preferences, calorie goals, and budget. The app supports scalable deployment via Docker and Kubernetes (Minikube), and integrates with the **Groq API** for large language model based meal generation. 

There are four meal agents ( Breakfast, Lunch, Snacks, Dinner) working collaboratively to ensure a comprehensive meal plan that meets the user's dietary needs and preferences.

---

## 🚀 Features

- ✅ AI-based generation for Breakfast, Lunch, Dinner & Snacks  
- ✅ Budget-aware and calorie-constrained meal planning  
- ✅ Consolidated grocery shopping list generation  
- ✅ Web-based user interface using Flask  
- ✅ Dockerized and Kubernetes-ready for easy deployment  
- ✅ Testable via Docker (`Dockerfile.test`)  
- ✅ Secure API key management via `.env`(For local Use) or Kubernetes secrets  

---

## 🧩 Project Structure

```
Meal-Prep-AI/
├── app.py                 # Main Flask app
├── config.py              # API and model config
├── agents/                # Modular AI agents
├── tools/                 # Helper logic
├── templates/             # Flask HTML views
├── static/                # CSS for Images and Images-videos for readme.md file
├── tests/                 # Unit test for Python
├── requirements.txt       # Python dependencies
├── Dockerfile             # Docker build for app
├── Dockerfile.test        # Dockerfile for test execution
├── deployment.yaml        # Kubernetes Deployment
├── service.yaml           # Kubernetes Service              
```

---

## 🧪 Local Development Setup (with Conda)

### 1. Clone the Repository
```bash
git clone https://github.com/Panzer3232/Meal-Prep-AI.git
cd Meal-Prep-AI
```

### 2. Create Conda Environment
```bash
conda create -n mealprep python=3.10.4
conda activate mealprep
```

### 3. Install Requirements
```bash
pip install -r requirements.txt
```

### 4. Configure Environment Variables
Create a `.env` file with:
```env
GROQ_API_KEY=your_actual_groq_api_key
```

### 5. Run the Flask App
```bash
python app.py
```

Then visit: [http://127.0.0.1:5000](http://127.0.0.1:5000)

---

## 🐳 Docker Setup

### Build and Run App Container
```bash
docker build -t meal-planner:latest .
docker run -p 5000:5000 meal-planner:latest
```

### Run Tests in Docker
```bash
docker build -f Dockerfile.test -t meal-planner-test .
docker run --rm meal-planner-test
```

---

## ☸️ Kubernetes Deployment (via Minikube)

### 1. Start Minikube
```bash
minikube start
```

### 2. Use Minikube's Docker Daemon
```bash
eval $(minikube docker-env)
```

### 3. Build Docker Image Inside Minikube
```bash
docker build -t meal-planner:latest .
```

### 4. Create Groq API Secret
```bash
kubectl create secret generic groq-secret --from-literal=GROQ_API_KEY=your_actual_groq_api_key
```

### 5. Apply Deployment and Service
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

### 6. Restart Deployment (if secret changes)
```bash
kubectl rollout restart deployment meal-planner-deployment
```

### 7. Access the Web App
```bash
minikube service meal-planner-service
```

---

## 🧠 Technologies Used

- Python 3.10.4  
- Flask  
- Docker  
- Kubernetes (Minikube)  
- Conda  
- pytest  
- Groq API  

---
## 🎥 Demo

[![Watch the demo](https://img.youtube.com/vi/8T1m_LQMcfg/0.jpg)](https://www.youtube.com/watch?v=8T1m_LQMcfg)
