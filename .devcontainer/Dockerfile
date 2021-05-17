# https://github.com/isabelatravaglia/rails-base-image
FROM isabtra/rails-repo:v2

#Install software-properties-common to allow the command apt-add-repository to work
RUN sudo apt-get update -qq \
&& sudo apt-get install -yq --no-install-recommends \
  software-properties-common \
  openssh-client \
&& sudo apt-get clean \
&& sudo rm -rf /var/cache/apt/archives/* \
&& sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
&& sudo truncate -s 0 /var/log/*log

# Install Git Cli
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C99B11DEB97541F0 \ 
&& sudo apt-add-repository https://cli.github.com/packages \
&& sudo apt update -qq \
&& sudo apt install -y gh

# Install zsh
RUN sudo apt install -y zsh imagemagick jq \
&& sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


ARG BUNDLER_VERSION=2.1.4
ARG RAILS_VERSION=6.1.3

# Configure bundler
ENV LANG=C.UTF-8 \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3

# Install required Bundler version
RUN gem install bundler:$BUNDLER_VERSION rails:$RAILS_VERSION