# Consul Example

## Raise up the stack

```bash
docker-compose up -d;
```

## Join nodes

```bash
docker-compose exec server-1 consul join server-2;
docker-compose exec server-1 consul join server-3;
docker-compose exec server-1 consul join client-1;
```

## Check if nodes are joined

```bash
docker-compose exec server-1 consul members;
```

## Tear down
```bash
docker-compose down
```