# Windows関連のメモ

[VMware Workstation 15 Player](#anchor_vmware)  
[TeX](#anchor_tex)  
[PlantUML](#anchor_plantuml)  
[Windows Subsystem for Linux](#anchor_wsl)  
[Anaconda](#anchor_anaconda)  

<a id="anchor_vmware"></a>

## VMware Workstation 15 Player

### VMware上のUbuntuからインターネットアクセスできるのにホストPCからのSSHやsambaが接続できない問題について(NAT)

仮想マシンのネットワークアダプタをNATに設定した場合，ホストPC上の仮想Ethernet Adapter「VMnet8」を介して接続されるが，ホストPC上のネットワーク設定からこれが見えないことがある．

インストール時の問題のようで，インストーラを起動し「修復」を選択することで解決した．

ホストPC上で「VMnet8」が見えないのに，Ubuntuからインターネットアクセスできるのは謎．

<a id="anchor_tex"></a>

## TeX

### インストール

[2020/9/5更新]

1. install-tl-windows.exe をダウンロード（ http://www.tug.org/texlive/acquire-netinstall.html ）
1. ダウンロードした install-tl-windows.exe を実行してインストール
ここで，"untar failed"と表示されインストールに失敗したが，MinGWのxzが悪さをしていたようで，環境変数PATHからMinGWを削除してインストール成功した  
MinGWをインストールしていないPCならスムーズにインストールできるはず  
1. plistings.sty を https://github.com/h-kitagawa/plistings.git から取得  
1. C:\texlive\texmf-local\tex\latex\plistings/plistings.sty に配置  
1. コマンドプロンプトを起動し，mktexlsr を実行  

-----

1. ~~texlive2020.isoをダウンロード（ http://www.tug.org/texlive/acquire-iso.html ）~~  
1. ~~ダウンロードしたisoファイルをマウントしてinstall-tl-windows.batを実行~~  
~~ここで，"untar failed"と表示されインストールに失敗したが，MinGWのxzが悪さをしていたようで，環境変数PATHからMinGWを削除してインストール成功した~~  
~~MinGWをインストールしていないPCならスムーズにインストールできるはず~~  

-----

### 図形描画

* Mathcha : https://www.mathcha.io/  
ブラウザ上で数式，グラフ，図形描画等が可能なオンライン数式エディタ．  
TeX形式でのエクスポート／インポートも可能（数式のインポートは可能だが，図形のインポートはできない模様）．  
エクスポートしたTeXスクリプトを実行する際にはdocumentclassへのdvipdfmxの指定と，tikzパッケージの宣言が必要．
	<pre>
	\documentclass[11pt,dvipdfmx,a4paper]{jsarticle}
	\usepackage{tikz}
	</pre>

参考：  
https://texwiki.texjp.org/?TeX%20Live  
https://tex.stackexchange.com/questions/445086/error-installing-latest-version-of-tex-live-on-windows-10  
https://mytexpert.osdn.jp/index.php?Listings#i1f895a0  
https://github.com/h-kitagawa/plistings  

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

<a id="anchor_plantuml"></a>

## PlantUML

テキストでUMLを書くのはPlantUMLがよさそう．  
WindowsではVisual Studio Codeで環境設定するのがやりやすそう．

参考：  
https://qiita.com/hakaicode/items/98823e0ceab3f3f33cca  
https://qiita.com/koara-local/items/e7a7a7d68a4f99a91ab1  

<a id="anchor_wsl"></a>

## CUDA on WSL User Guide

https://docs.nvidia.com/cuda/wsl-user-guide/index.html

PowerShellからwslでLinuxにログイン後，突如，切断される場合がある．  
WSLのサービスが落ちているようで，PowerShellを管理者権限で実行し，  
<pre>
net start LxssManager
</pre>
でサービスを起動すると，再度ログインできるようになる．

<a id="anchor_anaconda"></a>

## Anaconda

下記からインストーラをダウンロードして，インストールする．

https://www.anaconda.com/products/individual#Downloads

Anaconda Top:  
https://www.anaconda.com/

### 仮想環境のデフォルトパスを変更する

Windowsのシステム設定から，環境変数CONDA_ENVS_PATHに仮想環境のパスを記載する．  
下記の例では「E:\work\Anaconda\envs」を追加．  

<< Before CONDA_ENVS_PATH setting >>  
<pre>
(base) C:\Users\*****>conda config --show envs_dirs
envs_dirs:
  - C:\Users\*****\anaconda3\envs
  - C:\Users\*****\.conda\envs
  - C:\Users\*****\AppData\Local\conda\conda\envs

</pre>

　↓

<< After CONDA_ENVS_PATH setting >>  
<pre>
(base) C:\Users\*****>conda config --show envs_dirs
envs_dirs:
  - E:\work\Anaconda\envs
  - C:\Users\*****\anaconda3\envs
  - C:\Users\*****\.conda\envs
  - C:\Users\*****\AppData\Local\conda\conda\envs

</pre>



