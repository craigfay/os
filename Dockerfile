FROM rust:1.38

# Use the nightly build
RUN rustup override add nightly

# Install the Rust source code in order for xbuild to work
RUN rustup component add rust-src

# The core libraries come pre-compiled for each OS, but xbuild automatically
# cross compiles them for our custom target
RUN cargo install cargo-xbuild

# Bootimage will compile the kernel/bootloader, then link them to create
# a bootable disk image
RUN cargo install bootimage --version "^0.7.7"

# Necessary for running `bootimage`
RUN rustup component add llvm-tools-preview
