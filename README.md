# Lisp用のDoc

このサイトを参考に進める．
[https://www.tohoho-web.com/ex/lisp.html#about]

## インストール

SBCLを利用する．
Ubuntu環境にインストールする．

```bash
$ sudo apt install -y wget bzip2 make
$ wget http://prdownloads.sourceforge.net/sbcl/sbcl-2.5.1-x86-64-linux-binary.tar.bz2
$ bzip2 -cd sbcl-2.5.1-x86-64-linux-binary.tar.bz2 | tar xvf -
$ cd sbcl-2.5.1-x86-64-linux
$ sudo sh install.sh
sbcl --version
```

## 基本的な操作

- 起動 `SBCL`
  - REPL (Read-Eval-Print Loop)を起動すると，コマンドラインで「*」がつく.
- 終了 `(quit)`
  - あるいはCtrl-D
- ファイルの実行
  - `sbcl --script ファイル`

## FASLファイル

>SBCL から*.lispを*.faslファイルにコンパイルすることで実行を高速化することができます．

```bash
$ sbcl
* (compile-file "./hello.lisp")
* (quit)
$ chmod 755 ./hello.fasl
$ ./hello.fasl
Hello world!
```
