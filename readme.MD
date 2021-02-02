## Prerequisites
- docker installation 
- docker compose installation
- curl installation
 
 ## Deployment
- run deploy.sh
 - The deploy process will first start all the services and install the dashboard once the grafana service is up and running.

## Monitoring
- brows to http://localhost:3000

## Undeploy
- run destroy.sh
  

### Spec Ref
You need to provide a docker-compose file with:

 

Container exposing metrics for Prometheus (aka "exposer")
Prometheus scraping those metrics (aka "scraper")
Grafana container (aka "viewer")
Requirements:

We expect to receive it as an archive

The “exposer” should be written in python3.

Archive should include the Dockerfile (for the "exposer" service).

There should be a readme with brief instructions and all relevant documentation

All the tasks should be runnable as one liner (including build)

Add dashboards to Grafana that present all the metrics above (add the JSON file to the archive file)

We expect that the "exposer" will expose dummy metrics of the following type:

- Histogram
- Gauge
- Counter
