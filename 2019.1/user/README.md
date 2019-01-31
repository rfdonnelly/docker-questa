# Questa User Image

This image provides ability to run with a non-root user.  It serves as a
template for running batch simulations.

## Build

If the FLEXnet license server requires a specific username then set the
required username via the `USER` build argument.

```sh
./docker-build --build-arg USER=<username>
```

## Run

Modify the contents of `shared/` and `shared/Makefile` as desired then run.

```sh
./docker-run
```
