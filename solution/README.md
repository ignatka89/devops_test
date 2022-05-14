## Solution
In the following example, you can deploy application and monitoring in two ways, on the minikube cluster (the starter script provides for setting up the environment) and also via the docker compose. Configurations for building monitoring were taken from open sources and are given below. Information about monitoring go application with prometheus you can take [here](https://prometheus.io/docs/guides/go-application/) .

**prerequisites:**

1. **Distributor ID: Ubuntu Release: 20.04**

2. **Docker version 20.10.9, build c2ea9bc**
3.  **Run:**

```bash
sudo chmod +x script.sh

./script.sh
```

### Build docker image

```bash 
docker build -t ignatka89/docker-go-app:v1 .
```
### Run Docker container 
```bash
docker run -d -p 7788:8080 ignatka89/docker-go-app:v1
```
### Run Docker compose
```bash
cd compose/
docker-compose up -d
```
### Deploy cluster to minikube
```bash
kubectl apply -f ./k8s
```

### Deploy monitoring to minikube
```bash
kubectl apply -f ./prometheus
```

### Monitoring info 
[monitoring k8s cluster](https://devopscube.com/setup-grafana-kubernetes/)

### grafana example 
[json_for_import](https://github.com/jimmidyson/prometheus-grafana-dashboards/blob/master/prometheus-overview.json)


### public templates
[templates](https://grafana.com/grafana/dashboards/?search=kubernetes)

### for minicube testing from external host use
```bash
minikube tunnel
```




**notes:**
Grafana login/pass: admin/admin
