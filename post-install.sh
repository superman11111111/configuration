sudo apt update -y 2> /dev/null && 
sudo apt upgrade -y 2>/dev/null && 
sudo apt install build-essential tmux screen vim git -y && 
for i in Documents/ Music/ Pictures/ Public/ Templates/ Videos/ 
do 
	sudo rm -rf ~/$i
done 
mv ~/Downloads/ ~/downloads/ 2>/dev/null && 
sudo cp -rf user-dirs.dirs ~/.config/user-dirs.dirs &&
cp -f .tmux.conf ~/.tmux.conf &&
cat .bashrc >> ~/.bashrc &&
sudo apt autoremove
