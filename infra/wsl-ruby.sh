# Assumes a clean WSL image

# Install all of the development dependences.  Mainly required for compiling ruby gems with native extensions
sudo apt-get install -y build-essential git libreadline-dev
sudo apt-get install -y libssl-dev zlib1g-dev autoconf libicu-dev
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3
sudo apt-get install -y libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev rbenv

# Install rbenv and a few helpful plugins
# This will enable switching between different ruby versions
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rkh/rbenv-whatis.git ~/.rbenv/plugins/rbenv-whatis
git clone https://github.com/rkh/rbenv-use.git ~/.rbenv/plugins/rbenv-use
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH=$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
eval "$(rbenv init -)"

# Let's install some Ruby's - 1.9.3 for backward compatibility and 2.3.1 as the latest
rbenv install 2.3.1
rbenv install 1.9.3-p551
# rbenv requires a rehash after installing a ruby version
rbenv rehash

# Go through each ruby version and install bundler globally as we'll need it later
rbenv global 1.9.3-p551
rbenv use 1.9.3-p551
gem install bundler

rbenv global 2.3.1
rbenv use 2.3.1
gem install bundler