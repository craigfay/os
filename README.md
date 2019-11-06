# Commands

## Build Image
* The local Dockerfile is used to set up all our development dependencies, and guarantee portability.
* Build image locally: `docker build . -t rust_os`

## Run Container
* Start a shell in an instance of the image we just built, so we can work.
* Start Container Shell: `docker run -it --rm -v $(pwd):/os -w=/os rust_os bash`

## xbuild
* xbuild is a wrapper for `cargo build` that automatically cross-compiles core and other built-in libraries. It's been pre-installed during image build.
* Build for our custom target (with no underlying OS): `cargo xbuild` (This relies on the "target" param being passed automatically by .cargo/config)

## Create Bootable Disk Image
* `cargo bootimage`
