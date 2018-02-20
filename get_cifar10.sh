DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd "$DIR"
echo "Downloading..."
wget --no-check-certificate http://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz
echo "Unzipping..."
tar -xf cifar-10-binary.tar.gz && rm -f cifar-10-binary.tar.gz
mv cifar-10-batches-bin/* . && rm -rf cifar-10-batches-bin
echo "Done."
