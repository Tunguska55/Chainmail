FROM node:lts-buster

RUN mkdir -p $HOME/chain/installs

WORKDIR $HOME/chain/installs

# Install prerequisites
RUN apt install curl git -y 

# Install Rust
# RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

# Install Solana
RUN sh -c "$(curl -sSfL https://release.solana.com/v1.9.5/install)"

# Setup path for Rust and Solana
ENV PATH="/root/.cargo/bin:/root/.local/share/solana/install/releases/1.9.5/solana-release/bin:${PATH}"

WORKDIR $HOME/chain

#TODO Fix $HOME in ENV