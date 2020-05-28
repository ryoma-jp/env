# Ubuntu関連のメモ

## 20.04 LTS

### キーボードマップ設定

参考：https://qiita.com/vochicong/items/6452ac54bde56b0e0bb3

gnome-session-properties

Add → setxkbmap jp → Save

Name: SetJP keyboard on X startup  
Command: setxkbmap jp  

 setxkbmap jp  
 
## 18.04 LTS

### ログイン画面が表示されない

Waylandを無効にすると解決するかも

【手順】
1. BIOSロード時に「Esc」キーを押してメニューを表示
2. 「Advanced options for Ubuntu」を選択
3. 「～(recovery mode)」を選択
4. Recovery Menuの「fsck」を選択してファイルシステムのチェックを実行
5. Recovery Menuの「root」を選択してシェルプロンプトを起動
6. 「/etc/gdm3/custom.conf」の以下の行のコメントアウトを削除してWeylandを無効にする

	   #WaylandEnable=false
	     ↓
	   WaylandEnable=false

7. Recovery Menuの「resume」を実行してUbuntuをboot

### samba

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

### ssh

【手順】
1. sshサーバをインストール

	   sudo apt install openssh-server

### 日本語入力

【手順】  

1. Japanese(Mozc)をインストール
	
		$ sudo apt install ibus-mozc  
		$ ibus restart  
		$ gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'jp'), ('ibus', 'mozc-jp')]"  

	
2. 画面右上で，Japanese(Mozc)を選択  

### Docker

1. Docker install

		$ sudo apt install docker.io

2. ユーザをdockerグループに追加

		$ sudo groupadd docker
		$ sudo gpasswd -a $USER docker

3. PC再起動  
※ターミナル再起動やログアウトでは反映されなかった

4. Hello world  
※sudoなしで実行できればOK

		$ docker run hello-world

#### Docker imageをファイルに保存

「$ docker save」，「$ docker load」で保存と読み込みができる

		$ docker images
		REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
		hello-world         latest              bf756fb1ae65        4 months ago        13.3kB

		$ docker save hello-world -o hello-world.tar
		$ file hello-world.tar 
		hello-world.tar: POSIX tar archive

		$ docker rmi hello-world
		Untagged: hello-world:latest
		Untagged: hello-world@sha256:6a65f928fb91fcfbc963f7aa6d57c8eeb426ad9a20c7ee045538ef34847f44f1
		Deleted: sha256:bf756fb1ae65adf866bd8c456593cd24beb6a0a061dedf42b26a993176745f6b
		Deleted: sha256:9c27e219663c25e0f28493790cc0b88bc973ba3b1686355f221c38a36978ac63
		$ docker images
		REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
		$

		$ docker load -i hello-world.tar 
		9c27e219663c: Loading layer  15.36kB/15.36kB
		Loaded image: hello-world:latest
		$ docker images
		REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
		hello-world         latest              bf756fb1ae65        4 months ago        13.3kB

