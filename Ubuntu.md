# Ubuntu関連のメモ

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

