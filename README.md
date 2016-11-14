# Docker Image for Mentor Questa

## Building

1. Download and place the following files in `10.5c/base`

   * install.linux64
   * questa_sim-base.mis
   * questa_sim-docs.mis
   * questa_sim-gcc-linux_x86_64.mis
   * questa_sim-linux_x86_64.mis
   * regassistuvm_4.6_ixl.mis

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
