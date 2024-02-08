#!/bin/bash
#四則演算をメニュー形式で行えるスクリプトを作成せよ。
while :
do
echo "四則演算メニューを選択"
echo "加算:1" "減算:2" "乗算:3" "除算:4" "終了:5"

read -p "選択してください:" select
	case "$select" in
		1) echo "加算を行います。"
			read -p "数値を入力:" num1
			read -p "数値を入力:" num2
			echo "$num1と$num2を加算"
			echo "加算結果:"`expr $num1 + $num2`
			;;
		2) echo "減算を行います。"
			read -p "数値を入力:" num1
			read -p "数値を入力:" num2
			echo "$num1から$num2を減算"
			echo "減算結果:" `expr $num1 - $num2`
			;;
		3) echo "乗算を行います。"
			read -p "数値を入力:" num1
			read -p "数値を入力:" num2
			echo "$num1と$num2を乗算"
			echo "乗算結果:" `expr $num1 '*' $num2`
			;;
		4) echo "除算を行います。"
			read -p "数値を入力:" num1
			read -p "数値を入力:" num2
			echo "$num1と$num2を除算"
			echo "除算結果" `expr $num1 '/' $num2`
			;;
		5) break
			;;

	esac
done
echo "処理終了"

