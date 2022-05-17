;一番最初に呼び出されるファイル

[title name="デルノちゃんメモリーズ(仮)"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;プリロード
[iscript]
f.preload_images = ["data/bgimage/unk001_0000.jpg",
"data/bgimage/unk001_0001.jpg",
"data/bgimage/unk001_0002.jpg",
"data/bgimage/unk001_0003.jpg",
"data/bgimage/unk001_0004.jpg",
"data/bgimage/unk001_0005.jpg",
"data/bgimage/unk001_0006.jpg",
"data/bgimage/unk001_0007.jpg",
"data/bgimage/unk001_0008.jpg",];
[endscript]
[preload storage="&f.preload_images"]

;タイトル画面へ移動
@jump storage="title.ks"

[s]


