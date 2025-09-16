# Install cclyzerpp and Souffle

## Step-1: Install Souffle
```
sudo wget --no-verbose https://souffle-lang.github.io/ppa/souffle-key.public -O /usr/share/keyrings/souffle-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/souffle-archive-keyring.gpg] https://souffle-lang.github.io/ppa/ubuntu/ stable main" | sudo tee /etc/apt/sources.list.d/souffle.list
sudo apt-get update
sudo apt-get --yes install --no-install-recommends souffle=2.3
```
## Step-2: Install cclyzerpp
- Clone the repo and checkout to v0.7.0
```
git clone https://github.com/GaloisInc/cclyzerpp.git
cd cclyzerpp
git checkout v0.7.0
```
- Make cclyzerpp
```
sudo apt install cmake
sudo apt install ninja-build
sudo apt-get install libboost-all-dev
sudo apt-get install clang-14
export CC=/usr/lib/llvm-14/bin/clang
export CXX=/usr/lib/llvm-14/bin/clang++
source ~/.bashrc
sudo apt-get install libomp-dev
cmake -G Ninja -B build -S . -DLLVM_MAJOR_VERSION=$(llvm-config-${LLVM_MAJOR_VERSION} --version)
```
- Build cclyzerpp
```
cmake --build build -j $(nproc) --target factgen-exe PAPass SoufflePA
```
- Add to PATH variable.(Append this line to file ~/.bashrc and reopen terminal to avoid repetition)
```
export PATH=”path_to_build_dir:${PATH}”
```
