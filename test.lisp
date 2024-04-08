;; '()はリスト。

;; 関数firstは、リストの先頭のみを返す。
(print (first '(a1 b2 c3)))
;; 空のリストに使ったら、nilを返す。
(print (first '()))

;; restで、リストの先頭要素以外を,リストとして返す。
(print (rest '(a1 b2 c3)))
;; 空のリストに使ったら、nilを返す。
(print (rest '()))
(print (rest nil))
(print (rest ()))

;; これらの組み合わせで、リスト内の対象要素にアクセス。
(print (first (rest '(a1 b2 c3))))          ; b2にアクセス
(print (first (rest (rest '(a1 b2 c3)))))   ; c3にアクセス


;; リストへの要素の追加
(print "リストへの要素追加")
(print (cons 0.1 '(2 -3 0.444)))
(print (cons "string" '("float" "int")))
(print (cons '(a1 b2) '(c3 d4 e5)))
(print (cons () "a"))
(print (cons "a" nil))