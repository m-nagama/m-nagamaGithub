#作業ディレクトリパス
$WORK="\\nx400\NASShare\TeraStation\PrivateBackup\nagamatsu\00_商用作業"
#PC引数
$PROD_PC_FILE="\\ndb005\d$\xstoreorg\wwwroot\common\lib\00_xday_const.asp"
$TEST_PC_FILE="\\ndb005\d$\xrelease\wwwroot\common\lib\00_xday_const.asp"
#SP引数
$PROD_SP_FILE="\\ndb005\d$\xstoreorg\sproot\common\lib\Const\00_xday_const.asp"
$TEST_SP_FILE="\\ndb005\d$\xrelease\sproot\common\lib\Const\00_xday_const.asp"

#作業ディレクトリ作成
cd $WORK
$SaleName = Read-Host "作業ディレクトリ名を入力してください"
mkdir $SaleName
cd $SaleName

#リスト記載のディレクトリ作成
Get-Content C:\work\タイムセール\xday_folderlist.txt | %{ New-Item ($_.ToString()) -ItemType Directory -Force }

#検証環境ファイルをコピー
#PC版
Copy-Item -Path $PROD_PC_FILE -Destination 変更前_PC\
Copy-Item -Path $TEST_PC_FILE -Destination 変更前_PC\テスト環境\
#SP版
Copy-Item -Path $PROD_SP_FILE -Destination 変更前_SP\
Copy-Item -Path $TEST_SP_FILE -Destination 変更前_SP\テスト環境\
