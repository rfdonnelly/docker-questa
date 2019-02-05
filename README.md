# Docker Images for Questa

This repository provides Docker images for Questa.

These images were created for running UVM testbenches via a continuous
integration service with a FLEXnet license server.

## Image Types

The following image types are provided:

* base - Provides just enough for running UVM batch simulations
* user - A Verilog testbench template
* gui - Experimental image with X11 support

## Usage

1. Build the base image
2. Push to registry
3. Copy the user Dockerfile template into user testbench
4. Setup continuous integration service to use user
   Dockerfile
