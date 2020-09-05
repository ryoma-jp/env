# Raspberry Pi関連のメモ

## SSH

Startメニュー → 設定 → Raspberry Piの設定 → インターフェイス  
で「SSH」を有効に設定する

## vim

$HOME/.vimrc設定

<pre>
    set number → 行番号つける
    set tabstop=4 → タブ，半角4文字分
    set noexpandtab → タブ文字を入れる(expandtab指定で半角スペース4文字)
</pre>

## samba

【手順】
1. sambaインストール

	   sudo apt install samba

2. ユーザ追加

	   sudo smbpasswd -a <user name>

3. ホームディレクトリ共有

	   sudo vim /etc/samba/smb.conf
	   
	   ;[homes]
	   ;   comment = Home Directories
	   ;   browseable = no
	     ↓
	   [homes]
	      comment = Home Directories
	      browseable = no
	      read only = no
	      valid users = %S

4. smbdとnmbdを再起動

	   sudo systemctl restart smbd nmbd

## Machine Learning

### Object Detection

* Reference1  
	* https://github.com/EdjeElectronics/TensorFlow-Object-Detection-on-the-Raspberry-Pi
	* scripts: data/ObjectDetection_Reference1
		* see readme.txt


