# prometheus-test

```
docker run -d -p 2112:2112 joshwget/prometheus-test
curl localhost:2112/metrics | grep myapp_processed_ops_total
```
