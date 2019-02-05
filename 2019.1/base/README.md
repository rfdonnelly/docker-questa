# Docker Image for Questa

Provides a base image for Questa 2019.1 with support for running UVM batch
simulations.

It does not include X11 support but can be added via an additional layer.

## Build Instructions

### Download the Full Installer

NOTE: The exact URL needs to be obtained from Mentor.

```sh
curl -LO 'https://esdhttp.flexnetoperations.com/cgi-bin/download?rid=6805980417&rp=DTM20190130172812OTk2NTI5ODE5' --output questa_sim_2019.1.aol
chmod +x questa_sim_2019.1.aol
```

### Create the Batch Install Script

Optional.  Can use the provided `batchInstall.sh` instead.  Our you can
generate your own by running the batch tool via the installer.

```sh
./questa_sim_2019.1.aol
```

### Build

```sh
./docker-build
```
