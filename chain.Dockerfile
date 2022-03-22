FROM node:current-alpine3.14

RUN mkdir -p /opt/chain/installs

WORKDIR /opt/chain/installs

# Install prerequisites
RUN apk add --no-cache curl git 

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -y | sh

# Install Solana
RUN sh -c "$(curl -sSfL https://release.solana.com/v1.9.5/install)"

WORKDIR /opt/chain

