#!/usr/bin/env bash
CONST_HOME=$PWD
CONST_CLONE_HOME="$1"
CONST_ALTER_BRANCH="$2"

echo "PreView:"
echo $CONST_HOME
echo $CONST_CLONE_HOME
echo $CONST_ALTER_BRANCH

#init data
declare -A arrGitDir
arrGitDir[barcodeCashier]="ssh://git@git.sankuai.com/as/barcodecashier.git"
arrGitDir[MeituanPay]="ssh://git@git.sankuai.com/as/meituanpay.git"
arrGitDir[pay-base]="ssh://git@git.sankuai.com/payan/pay-base.git"
arrGitDir[pay-demo]="ssh://git@git.sankuai.com/android/pay-demo.git"
arrGitDir[cashier]="ssh://git@git.sankuai.com/as/cashier.git"
arrGitDir[pay-account]="ssh://git@git.sankuai.com/payan/pay-account.git"
arrGitDir[pay-common]="ssh://git@git.sankuai.com/as/pay-common.git"
arrGitDir[wallet]="ssh://git@git.sankuai.com/as/wallet.git"

cd $CONST_CLONE_HOME

#function
printMap() {
	for key in ${arrGitDir[*]}
	do
		echo $arrGitDir$key
	done
}
echo "======"

#p:branch
doFileDir() {
	echo "doing doFileDir"
	if [ "$#" == 1 ]; then
		dir="$1"
		cd $dir
		git checkout $CONST_ALTER_BRANCH
		cd $CONST_CLONE_HOME
	fi
}

setFileDir() {
	echo "doing setFileDir"
	tDirs=$(ls)
	for dir in ${tDirs[*]}
	do
		doFileDir $dir
		echo "======"
	done
}

gitclone() {
	echo "doing gitclone"
	for key in ${arrGitDir[*]}
	do
		git clone $arrGitDir$key
	done
}

checkoutBranch() {
	echo "doing checkoutBranch"
	setFileDir $CONST_ALTER_BRANCH
}

printMap
gitclone
checkoutBranch






