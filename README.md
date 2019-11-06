# Commands

## Run Container
* Working inside a docker container guarantees portability
* Start Rust Container Shell: `docker run -it --rm -v $(pwd):/os -w=/os rust:1.38 bash`

Install Bare-Metal target: `rustup target add thumbv7em-none-eabihf`
Bare-Metal build: `cargo build --target thumbv7em-none-eabihf`
Build for our custom target (with no underlying OS): `cargo build --target x86_64-os.json`

## xbuild
* xbuild is a wrapper for `cargo build` that automatically cross-compiles core and other built-in libraries. 
* Install xbuild: `cargo install cargo-xbuild`