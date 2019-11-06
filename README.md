# Commands
Start Rust Container Shell: `docker run -it --rm -v $(pwd):/os -w=/os rust:1.38 bash`
Install Bare-Metal target: `rustup target add thumbv7em-none-eabihf`
Bare-Metal build: `cargo build --target thumbv7em-none-eabihf`
