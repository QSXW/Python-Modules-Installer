@echo off & chcp 65001>NUL
echo Module 安装程序开始，如果遇到阻塞，按 Ctrl + C 中断 & pause
pip install pip --user --upgrade -i https://pypi.doubanio.com/simple

python -m ensurepip
set archiveLocation = https://pypi.doubanio.com/simple
Rem 在此处添加需要安装的python包名字，以空格分隔
set modules = twisted wheel pandas pylint lxml requests urllib3 numpy scipy matplotlib scikit-learn ipython nltk PyQt5 pyinstaller pynsist py2exe opencv-python pyzbar tensorflow

(for %%a in (%modules %) do ( 
   pip install %%a -i %archiveLocation %
   echo 安装状态: %%a 已安装完成...
))
echo 安装完成 & pause
