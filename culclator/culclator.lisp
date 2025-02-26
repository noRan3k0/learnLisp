;; 剰余、次回実装

#| 整数値のみを扱うことを想定．
数値の入力を得るまでループ
    第１引数の入力
    or
    数値を入力してください

記号を選択してください
指定の入力が得られるまでループ
    入力
    or
    指定の入力をしてください

数値の入力を得るまでループ
    第2引数の入力
    or
    数値を入力してください

式全体の記述
答え
|#

(defun main ()
    ; 関数群
        ;; 加算
    (defun add (x y)
        (+ x y)
        )

    ;; 減算
    (defun sub (x y)
        (- x y)
        )

    ;; 乗算
    (defun mul (x y)
        (* x y)
        )

    ;; 除算
    (defun div (x y)
        (/ x y)
        )

    (let ((exp1 0)
        (exp2 0))

    ; 実際の処理
    (Write-line "This is a culclator.")
    (terpri)
    
    (loop
        (Write-line "Enter the first argument in integer: ")
        (setq exp1 (read *standard-input*))
        (if (typep exp1 'integer)
            ;(return exp1)
            (return)
            (Write-line "this is not integer.")
        )
    )
    
;    ("Choose the arithmetic symbol from the following 1-4")(terpri)
    
    (loop
        (Write-line "Enter the second argument in integer: ")

        (setq exp2 (read *standard-input*))
        (if (typep exp2 'integer)
            ;(return exp2)
            (return)
            (Write-line "this is not integer.")
        )
    )

    (Write-line "RESULT: ")
    (princ(add exp1 exp2))
    (terpri)
    ))

(sb-ext:save-lisp-and-die "culc"
                            :toplevel #'main
                            :executable t)