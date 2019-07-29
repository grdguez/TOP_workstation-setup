# Update your system
sudo apt update && sudo apt upgrade -y

# Install packages and libraries
sudo apt install \
curl \
git \
nodejs \
gcc \
make \
libssl-dev \
libreadline-dev \
zlib1g-dev \
libsqlite3-dev \

# Install Ruby
sudo apt install curl git nodejs gcc make libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev

# Install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
rbenv -v
rbenv 1.1.2-2-g4e92322

rbenv install 2.6.3 --verbose
rbenv global 2.6.3
ruby -v

