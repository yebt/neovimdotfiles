FILE_PATH=$(node -e "console.log(os.homedir() + '/intelephense/licence.txt')")
DIR_PATH=$(node -e "console.log(os.homedir() + '/intelephense')")
LICENSE_KEY=000YOP3TTT7QMST
# PUT LICENCE KEY

mkdir -p $DIR_PATH
echo $LICENSE_KEY >| $FILE_PATH
