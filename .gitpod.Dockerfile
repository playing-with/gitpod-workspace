FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# RUN sudo apt-get update \
#     && sudo apt-get install -y \
#         yum node \
#     && sudo rm -rf /var/lib/apt/lists/*

RUN npm install -g npm

# Install AWS SAM CLI
RUN brew tap aws/tap
RUN brew install aws-sam-cli
# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && sudo ./aws/install \
    && rm awscliv2.zip \
    && rm -rf ./aws
