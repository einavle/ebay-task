from prometheus_client import start_http_server, Summary,Counter, Gauge
import random
import time

# Create a metric to track time spent and requests made.
REQUEST_TIME = Summary('request_processing_seconds', 'Time spent processing request')
COUNT = Counter('einav_failures', 'Description of counter')
GAUGE = Gauge('einav_inprogress_requests', 'Description of gauge')

# Decorate function with metric.
@REQUEST_TIME.time()


def process_request(t):
    COUNT.inc()     # Increment by 1
    GAUGE.inc()
    time.sleep(t)

if __name__ == '__main__':
    # Start up the server to expose the metrics.
    start_http_server(8000)
    # Generate some requests.
    while True:
        process_request(random.random())
