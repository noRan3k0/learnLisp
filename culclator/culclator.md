# culclator Docs

## コマンドライン

コンパイル時に以下を実行．

```bash
sbcl --noinform --no-sysinit --no-userinit --load culclator.lisp
```

## コードの記述に関するメモ

- 変数
  - 以下のいずれかで変数宣言を行う．[https://minegishirei.hatenablog.com/entry/2023/04/17/094001]
    - `let` : ローカル変数として定義．(letで定義した変数を使用する処理は，全てlet式で囲む．)
    - `defparameter` : 可変なグローバル変数として定義．
    - `defver` : 不変なグローバル変数として定義．
  - 変数への代入
    - `setq`

- loop関数
  - returnは引数を取る必要はない．
