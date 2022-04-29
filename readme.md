# Consul Example

## Raise up the stack

```bash
docker-compose up -d;
```

## Join nodes

```bash
docker-compose exec server-1 consul join server-2;
docker-compose exec server-1 consul join server-3;
```

## Check if nodes are joined

```bash
docker-compose exec server-1 consul members;
```