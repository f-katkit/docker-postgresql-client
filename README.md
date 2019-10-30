# simple-postgresql-client

Easily use postgresql-client command.

https://hub.docker.com/r/fkatkit/simple-postgresql-client

# USAGES

```bash
docker run -it --net=host fkatkit/simple-postgresql-client:latest psql \
  -h #{host} \
  -p #{port} \
  -U #{psqluser} \
```

## Set alias for easily use the postgresql command.

set alias on file setting shell profile.(etc. .zshrc .bashrc)

```
alias psql='docker run -it --net=host fkatkit/simple-postgresql-client:latest psql'
```

and connect psql server.

```
psql \
  -h #{host} \
  -p #{port} \
  -U #{psqluser}
```

alias without password connect

```
alias psql='docker run -it --net=host fkatkit/simple-postgresql-client:latest PGPASSWORD=password psql'
```

### sample for local server

```
psql \
  -h 127.0.0.1 \
  -p 5432 \
  -U postgres
```
