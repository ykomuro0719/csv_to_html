# csv_to_html
###概要
CSV形式のファイルをhtmlのテーブル形式に変換するスクリプト（ruby2.3)

###使い方
引数1　対象のCSVファイルパス（CSV）
引数2　出力先htmlパス（指定しない場合はスクリプト直下に日付ファイル名で出力

###注意
対象データは　カラム名:,値　の形で入っていることを想定
カラム名がない場合はtable.html.erbの
<td><%= dt[1] %></td>
以下に変更してください
<td><%= dt[0] %></td>