FROM node:lts-buster

RUN mkdir -p $HOME/chain/installs

WORKDIR $HOME/chain/installs

# Install prerequisites
RUN apt install curl git -y 

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install Solana
RUN sh -c "$(curl -sSfL https://release.solana.com/v1.9.5/install)"

WORKDIR $HOME/chain
