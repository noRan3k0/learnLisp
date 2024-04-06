(let
    ((firstNum 1)
    (secondNum 2))                  ; (())は変数宣言、letを囲む()の間だけで有効。                 
    (print (+ firstNum secondNum))  ; 表示
    (setf firstNum (+ firstNum secondNum))      ; 変数の値の更新
    (print (+ firstNum secondNum)))  ; 表示