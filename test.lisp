(let
    ((firstNum 1)
    (secondNum 2))                  ; (())は変数宣言、letを囲む()の間だけで有効。                 
    (print (+ firstNum secondNum))  ; 表示
    (let 
        ((nextNum (+ firstNum secondNum)))  ; 変数宣言
        (print (+ nextNum secondNum))))     ; 表示