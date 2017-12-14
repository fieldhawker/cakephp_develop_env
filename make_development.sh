#!/bin/sh

echo "開発環境の構築を開始しますか？ [Y/n]"
echo "※エラーが出ても泣かないこと。"
read ANSWER

case $ANSWER in

    "Y" | "y" | "yes" | "Yes" | "YES" )
        echo "YES!!";

        ####### 仮想環境の選択

        vagrant version
        echo "※vagrantは1.8以降を使用する必要があります。続ける場合は構築する環境の番号を入力してください [1-9/n]"
        echo "1 : CentOS7, nginx , MariaDB, cakephp"

        read ANSWER
        case $ANSWER in
        "1" | "１" )
            echo "you selected CentOS7, nginx , MariaDB, cakephp.";
            DIR="nmc"

        * )
            exit_sh 9
            ;;

        esac

        ####### 仮想環境構築 vagrant → ansible

        ## vagrant のプラグインを導入
        vagrant plugin install vagrant-vbguest
        vagrant vbguest --status

        vagrant plugin install vagrant-cachier

        ## vagrant 起動
        cd $DIR
        vagrant up

        ####### アプリケーション構築 composer


      * )
          exit_sh 9
          ;;

    esac

exit_sh () {
  echo "開発環境の構築を開始しませんでした";
  exit $1
}
