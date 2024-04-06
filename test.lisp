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