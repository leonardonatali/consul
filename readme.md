# Consul Example

## Raise up the stack and j'oin nodes


```bash
make;
```

## Check if nodes are joined

```bash
docker-compose exec server-1 consul members;
```

OR

```bash
docker-compose exec server-1 consul catalog nodes -detailed;
```

## Check if nginx service is DNS readable

```bash
docker-compose exec server-1 dig @localhost -p 8600 nginx.service.consul;
```

## Check if nginx service is available in REST API

```bash
docker-compose exec server-1 curl localhost:8500/v1/catalog/services;
```

## Tear down
```bash
make kill
```