# Docker Image for Mentor Questa

## Building

1. Update the links in `10.5c/base/download-packages.sh`

2. Build the base image

   ```sh
   cd 10.5c/base
   ./docker-build
   ```

3. Build the user image

   ```sh
   cd 10.5c/user
   ./docker-build
   ```

## Running

```sh
cd 10.5c/user
./docker-run <questa-command> <arguments>
```

### Example

```sh
cd 10.5c/user
./run-example
```
