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

式全体の記述、なくてもいい
答え
|#

(defun main ()
    ; 関数群
        ;; 加算
    (defun add (x y)
        (+ x y))

    ;; 減算
    (defun sub (x y)
        (- x y))

    ;; 乗算
    (defun mul (x y)
        (* x y))

    ;; 除算
    (defun div (x y)
        (/ x y))

    ; 実際の処理
    (let 
        ((exp1 0)
        (exp2 0)
        (a_s 0))

        (format t "This is a culclator.~%")
        
        (loop
            (format t "Enter the first argument in integer: ~%")
            (setq exp1 (read *standard-input*))
            (if (typep exp1 'integer)
                (return)
                (format t "this is not an integer.~%")))
        
        (loop
            (format t "Choose the arithmetic symbol from the following 1-4. (1:addition 2:subtraction 3:multiplication 4:division)~%")
            (setq a_s (read *standard-input*))
            (if (find a_s '(1 2 3 4))
                (return)
                (format t "this is not an option.~%"))
        )
        
        (loop
            (format t "Enter the second argument in integer: ~%")
            (setq exp2 (read *standard-input*))
            (if (typep exp2 'integer)
                (return)
                (format t "this is not an integer.~%")))

        (format t "RESULT: ~%")
        (case a_s
            (1 (format t "~d" (add exp1 exp2))
                (format t "~%"))
            (2 (format t "~d" (sub exp1 exp2))
                (format t "~%"))
            (3 (format t "~d" (mul exp1 exp2))
                (format t "~%"))
            (4 (format t "~f" (div exp1 exp2))
                (format t "~%"))
            (otherwise (format t "Woops. You got an error.~%")))))

(sb-ext:save-lisp-and-die "culc"
                            :toplevel #'main
                            :executable t)