# Windows関連のメモ

## VMware Workstation 15 Player

### VMware上のUbuntuからインターネットアクセスできるのにホストPCからのSSHやsambaが接続できない問題について(NAT)

仮想マシンのネットワークアダプタをNATに設定した場合，ホストPC上の仮想Ethernet Adapter「VMnet8」を介して接続されるが，ホストPC上のネットワーク設定からこれが見えないことがある．

インストール時の問題のようで，インストーラを起動し「修復」を選択することで解決した．

ホストPC上で「VMnet8」が見えないのに，Ubuntuからインターネットアクセスできるのは謎．
