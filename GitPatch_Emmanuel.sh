
#!/bin/bash

# Pedimos al usuario que introduzca el nombre del archivo
echo "Introduce el nombre del archivo:"
read archivo

if [ -f "$archivo" ]; then
    echo "Existe el archivo: $archivo"   

else
    rm -rf $archivo
    echo "Introduce cosas nuevas"
    read text
    echo "diff --git a/README.md b/README.md
index 9ce21a5..a10b9b0 100644
--- a/README.md
+++ b/README.md
@@ -4,7 +4,7 @@ SL(1): Cure your bad habit of mistyping
 SL (Steam Locomotive) runs across your terminal when you type \"sl\" as
 you meant to type \"ls\". It's just a joke command, and not useful at
 all.
-
+$text
 Copyright 1993,1998,2014 Toyoda Masashi (mtoyoda@acm.org)
 
 ![](demo.gif)
\ No newline at end of file
" >> $archivo

    git apply $archivo

    rm -rf $archivo

    git diff
fi


