
# 🚀 Nginx Dockerfile Practice – DevOps Academy

Welcome, DevOps Engineers! 👩🏽‍💻👨🏾‍💻  
In this project, you'll learn to **build and run a Dockerized Nginx web server** using your own `Dockerfile`.  
You'll use Nginx to serve a custom HTML file and add features like health checks and custom configs.

---

## 🎯 What You'll Learn

✅ How to write your own Dockerfile  
✅ How to use Docker commands to build and run images  
✅ How to test and debug your container  
✅ Why image size, user permissions, and environment variables matter  
✅ How to make your container healthy and production-ready



## 🛠️ Initial Setup

1. **Create a working directory:**
 ```bash
  git clone https://github.com/m-pasima/Dockerfile-Practice.git
````

2. **Change Directory:**

   ```bash
   cd Dockerfile-Practice.git
   ```

3. **Open each file in your editor (e.g., VSCode):**

   * Modify  `index.html` if needed
   * Use the [Dockerfile hints below](#💡-dockerfile-hints) to guide your implementation

---

## 💡 Dockerfile Hints

> Don’t copy-paste — build it from your understanding.

Include these **Dockerfile instructions** in your own way:

* `FROM` — Use an official Nginx base image
* `LABEL` — Add author and version
* `ENV` — Set timezone or environment name
* `WORKDIR` — Set where your site content lives
* `COPY` — Copy your HTML, config, and health check script
* `EXPOSE` — Expose the HTTP port (usually 80)
* `HEALTHCHECK` — Use the script to monitor the container
* `CMD` — Run Nginx in the foreground

---

## 🧪 Build and Run Commands

### 🏗️ Build your Docker image

```bash
docker build -t my-nginx-site .
```

### 🚀 Run your container

```bash
docker run -d -p 8080:80 --name nginx-demo my-nginx-site
```

> Visit your site: [http://localhost:8080](http://localhost:8080)

### 🔍 Check container health

```bash
docker inspect --format='{{json .State.Health}}' nginx-demo | jq
```

### 📦 See what's inside the container

```bash
docker exec -it nginx-demo sh
```

### 🧹 Stop and clean up

```bash
docker stop nginx-demo && docker rm nginx-demo && docker rmi my-nginx-site
```

---

## 🧠 Challenge Tasks

### ✅ Beginner

* Edit `index.html` to show your name or project title
* Use `ENV` to define environment name (`production`, `dev`)
* Add an error page and link to it from Nginx config

### ⚙️ Intermediate

* Add a non-root user to the container (hint: `adduser`)
* Create a `VOLUME` for Nginx logs
* Customize access log format in `nginx.conf`

### 🔒 Advanced (Bonus)

* Set up reverse proxying in Nginx
* Serve a React or Angular build directory
* Add basic authentication or rate limiting

---

## 📚 Resources

* 🔗 [Nginx on Docker Hub](https://hub.docker.com/_/nginx)
* 📄 [Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)


---

## 🙌a

> **Don’t just build containers — build your confidence.**
> The Dockerfile is your blueprint. The container is your creation.
> Experiment. Break things. Fix them. That’s how DevOps engineers are born. 💪🏽🚀

---

Happy building!
— Pasima 🧡



