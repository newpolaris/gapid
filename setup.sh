sudo sysctl -w kern.maxfiles=122880
sudo sysctl -w kern.maxfilesperproc=102400
echo ulimit -S -n 102400 >> ~/.zshrc

