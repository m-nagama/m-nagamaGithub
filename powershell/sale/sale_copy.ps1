$WORK="\\nx400\NASShare\TeraStation\PrivateBackup\nagamatsu\00_���p���"
$PROD_FILE="\\ndb005\d$\xstoreorg\wwwroot\tokka\tokka2016Const.asp"
$TEST_FILE="\\ndb005\d$\xrelease\wwwroot\tokka\tokka2016Const.asp"

cd $WORK
$SaleName = Read-Host "����̃Z�[��������͂��Ă�������"
mkdir $SaleName
cd $SaleName

Get-Content C:\work\�^�C���Z�[��\salefolder_list.txt | %{ New-Item ($_.ToString()) -ItemType Directory -Force }

Copy-Item -Path $PROD_FILE -Destination �ύX�O\
Copy-Item -Path $TEST_FILE -Destination �ύX�O\�e�X�g��\