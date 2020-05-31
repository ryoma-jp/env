# Windows関連のメモ

[VMware Workstation 15 Player](#anchor1)  
[TeX](#anchor2)

<a id="anchor1"></a>

## VMware Workstation 15 Player

### VMware上のUbuntuからインターネットアクセスできるのにホストPCからのSSHやsambaが接続できない問題について(NAT)

仮想マシンのネットワークアダプタをNATに設定した場合，ホストPC上の仮想Ethernet Adapter「VMnet8」を介して接続されるが，ホストPC上のネットワーク設定からこれが見えないことがある．

インストール時の問題のようで，インストーラを起動し「修復」を選択することで解決した．

ホストPC上で「VMnet8」が見えないのに，Ubuntuからインターネットアクセスできるのは謎．

<a id="anchor2"></a>

## TeX

### インストール

1. texlive2020.isoをダウンロード（ http://www.tug.org/texlive/acquire-iso.html ）  
1. ダウンロードしたisoファイルをマウントしてinstall-tl-windows.batを実行  
ここで，"untar failed"と表示されインストールに失敗したが，MinGWのxzが悪さをしていたようで，環境変数PATHからMinGWを削除してインストール成功した  
MinGWをインストールしていないPCならスムーズにインストールできるはず

参考：  
https://texwiki.texjp.org/?TeX%20Live  
https://tex.stackexchange.com/questions/445086/error-installing-latest-version-of-tex-live-on-windows-10

### 使い方

1. TeXworks editorを開く
1. 適当に文書を作る
	<pre>
	\documentclass{article}
	\begin{document}
	Hello, \TeX!
	\end{document}
	</pre>
1. texファイルとして保存  
1. コンパイル（▶）
1. pdfファイルが生成されたら完了


参考：  
https://medemanabu.net/latex/windows-tex-live-texworks/

## PlantUML

テキストでUMLを書くのはPlantUMLがよさそう．  
WindowsではVisual Studio Codeで環境設定するのがやりやすそう．

参考：  
https://qiita.com/hakaicode/items/98823e0ceab3f3f33cca  
https://qiita.com/koara-local/items/e7a7a7d68a4f99a91ab1  
