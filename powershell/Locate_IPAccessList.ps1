$WORK="C:\work"
$SRC_FILE="C:\Users\Administrator\Desktop\ip一覧.txt"

Copy-Item -Path $SRC_FILE -Destination \\vmw004\d$\tmp\アクセス制限ip
Copy-Item -Path $SRC_FILE -Destination \\vmw005\d$\tmp\アクセス制限ip
Copy-Item -Path $SRC_FILE -Destination \\vmw006\d$\tmp\アクセス制限ip
Copy-Item -Path $SRC_FILE -Destination \\vmw007\d$\tmp\アクセス制限ip
Copy-Item -Path $SRC_FILE -Destination \\vmw008\d$\tmp\アクセス制限ip
