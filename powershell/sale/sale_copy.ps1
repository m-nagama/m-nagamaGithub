$WORK="\\nx400\NASShare\TeraStation\PrivateBackup\nagamatsu\00_商用作業"
$PROD_FILE="\\ndb005\d$\xstoreorg\wwwroot\tokka\tokka2016Const.asp"
$TEST_FILE="\\ndb005\d$\xrelease\wwwroot\tokka\tokka2016Const.asp"

cd $WORK
$SaleName = Read-Host "今回のセール名を入力してください"
mkdir $SaleName
cd $SaleName

Get-Content C:\work\タイムセール\salefolder_list.txt | %{ New-Item ($_.ToString()) -ItemType Directory -Force }

Copy-Item -Path $PROD_FILE -Destination 変更前\
Copy-Item -Path $TEST_FILE -Destination 変更前\テスト環境\