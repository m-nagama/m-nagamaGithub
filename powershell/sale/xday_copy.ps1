#��ƃf�B���N�g���p�X
$WORK="\\nx400\NASShare\TeraStation\PrivateBackup\nagamatsu\00_���p���"
#PC����
$PROD_PC_FILE="\\ndb005\d$\xstoreorg\wwwroot\common\lib\00_xday_const.asp"
$TEST_PC_FILE="\\ndb005\d$\xrelease\wwwroot\common\lib\00_xday_const.asp"
#SP����
$PROD_SP_FILE="\\ndb005\d$\xstoreorg\sproot\common\lib\Const\00_xday_const.asp"
$TEST_SP_FILE="\\ndb005\d$\xrelease\sproot\common\lib\Const\00_xday_const.asp"

#��ƃf�B���N�g���쐬
cd $WORK
$SaleName = Read-Host "��ƃf�B���N�g��������͂��Ă�������"
mkdir $SaleName
cd $SaleName

#���X�g�L�ڂ̃f�B���N�g���쐬
Get-Content C:\work\�^�C���Z�[��\xday_folderlist.txt | %{ New-Item ($_.ToString()) -ItemType Directory -Force }

#���؊��t�@�C�����R�s�[
#PC��
Copy-Item -Path $PROD_PC_FILE -Destination �ύX�O_PC\
Copy-Item -Path $TEST_PC_FILE -Destination �ύX�O_PC\�e�X�g��\
#SP��
Copy-Item -Path $PROD_SP_FILE -Destination �ύX�O_SP\
Copy-Item -Path $TEST_SP_FILE -Destination �ύX�O_SP\�e�X�g��\
