FROM ghcr.io/runatlantis/atlantis:latest
ARG VERSION=1.16.0
RUN wget https://github.com/transcend-io/terragrunt-atlantis-config/releases/download/v${VERSION}/terragrunt-atlantis-config_${VERSION}_linux_arm.tar.gz && \
  tar zxvf terragrunt-atlantis-config_${VERSION}_linux_arm.tar.gz && \
  mv terragrunt-atlantis-config_${VERSION}_linux_arm/terragrunt-atlantis-config_${VERSION}_linux_arm /bin/terragrunt-atlantis-config && \
  chmod +x /bin/terragrunt-atlantis-config
