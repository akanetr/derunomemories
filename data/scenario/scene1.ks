*start

[cm ]
[clearfix]
[start_keyconfig]

[bg storage="souko.jpg" time="100"]

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;デルノ
[chara_new  name="deruno" storage="chara/deruno/deruno_bloomers_0002.png" jname="デルノ"  ]
[chara_face name="deruno" face="tsundere" storage="chara/deruno/deruno_bloomers_0000.png"]
[chara_face name="deruno" face="smile" storage="chara/deruno/deruno_bloomers_0001.png"]
[chara_face name="deruno" face="bad_1" storage="chara/deruno/deruno_bloomers_0002.png"]
[chara_face name="deruno" face="bad_2" storage="chara/deruno/deruno_bloomers_0003.png"]
[chara_face name="deruno" face="bad_3" storage="chara/deruno/deruno_bloomers_0004.png"]
[chara_face name="deruno" face="bad_4" storage="chara/deruno/deruno_bloomers_0005.png"]
[chara_face name="deruno" face="bad_5" storage="chara/deruno/deruno_bloomers_0006.png"]

;ツヨネ
[chara_new  name="tsuyone" storage="chara/tsuyone/tsuyone_bloomers_0000.png" jname="ツヨネ"  ]
[chara_face name="tsuyone" face="normal" storage="chara/tsuyone/tsuyone_bloomers_0000.png"]
[chara_face name="tsuyone" face="bad_1" storage="chara/tsuyone/tsuyone_bloomers_0001.png"]
[chara_face name="tsuyone" face="bad_2" storage="chara/tsuyone/tsuyone_bloomers_0002.png"]
;デデンで

[deffont color="0x454D51"]
[font color="white"]
[plugin name=custom_ruby]

;名前部分のメッセージレイヤ削除
[free name="chara_name_area" layer="message0"]

;メッセージウィンドウの設定
[position layer="message0" width="1280" height="210" top="510" left="0"]
[position layer="message0" frame="message.png" margint="50" marginl="100" marginr="100" opacity="230" page="fore"]

;名前枠の設定
[ptext name="chara_name_area" layer="message0" color="white" size="35" bold="true" x="100" y="514"]
[chara_config ptext="chara_name_area"]
#&f.name1
#&f.name1

;メニューボタン非表示
@hidemenubutton

;ロールボタン追加;;;;;;;;;;;;;;


; ロールボタン配置

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="40" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="140" y="690"]

;セーブボタン
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="240" y="690"]

;ロードボタン
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="340" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="440" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="540" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="640" y="690"]

;フルスクリーン切替ボタン
[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x="740" y="690"]

;コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="840" y="690"]

;メニュー呼び出しボタン（※ロールボタンを使うなら不要）
[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="940" y="690"]

;メッセージウィンドウ非表示ボタン
[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x="1040" y="690"]

;タイトルに戻るボタン
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x="1140" y="690"]

;;ロールボタン追加終わり
[chara_config  talk_focus="brightness"  brightness_value="60"  ]

;体育倉庫にて
[playbgm storage=nanika_okiru.ogg volume="60" ]
[chara_show  name="deruno" left="580" top="-10" time="300" ]
[playse  storage="hara_ita1.ogg" ]
#デルノ
(Hmm. My stomach hurts ... Let's get the tools and go to the bathroom soon)[p]
[chara_show  name="tsuyone" left="-75" top="-10" time="300" ]
#ツヨネ
Oh, there's someone ...[p]
[chara_mod  name="deruno" face="bad_3" cross="false" wait="false" time="0" ]
[chara_mod  name="tsuyone" face="bad_2" cross="false" wait="false" time="0" ]
[chara_config  talk_focus="none" ]
#二人
low![p]
[chara_config  talk_focus="brightness"  brightness_value="60"  ]
#ツヨネ
「[ruby text="ろう"]Leakage[ruby text="そく"]legs! [p]
#デルノ
「[ruby text="みず"]water[ruby text="しり"]Butt! [p]
#ツヨネ
Why are you here![p]
[chara_mod  name="deruno" face="bad_4" cross="false"  wait="false" time="0" ]
#デルノ
I just came to pick up the tools ... you too.[p]
[chara_mod  name="tsuyone" face="bad_1" cross="false" wait="false" time="0" ]
#ツヨネ
I really hate it because every time I meet you, I get unhappy.[p]

#デルノ
That's this line![p]
[chara_mod  name="deruno" face="bad_5" cross="false"  wait="false" time="0" ]
#ツヨネ
Anyway, before something happens ...[bg storage="souko_b.jpg" time="500"][p]
[bg storage="black.jpg" time="0"]
[chara_hide_all  wait="false"  time="0" ]

;バナナで足滑らせる。

[playse  storage="stamp.ogg" ]
#ツヨネ
Ah[p]

;どったんばったん。
[playse  storage="tumbling1.ogg" ][fadeoutbgm  time="500"  ]
#二人
Cha![p]

[wait  time="500" ]
#デルノ
It was ...[p]
[playse  storage="poyo.ogg" ]
#ツヨネ
Nmu![p]

[playbgm storage=iyan.ogg volume="60"]
;画面明るくなる。
[bg storage="unk001_0000.jpg" time="100"][cg storage="unk001_0000.jpg"]
#ツヨネ
Pum, I'm sorry, I stepped on something and fell ...[p]
#デルノ
Chaah! Why is this happening !?[p]
#ツヨネ
No, really ... that's bad, but can you avoid your ass?[p]
#デルノ
Of course now ...[l][fadeoutbgm  time="200"  ][playse  storage="hara_ita2.ogg" ][bg storage="unk001_0001.jpg" time="0"]Guuu !? [p]
[playbgm storage=EDM09-psychopass.ogg volume="60" ](If you do, you'll have a poop up to your butt ...)[p]
#ツヨネ
Hmm? What's wrong?[p]
#デルノ
No, nothing. Wait a minute ... Hmm, this![p]
(Lie ... I can't move because the net is entangled !?)[p]
#ツヨネ
No, what is this !? I can't get it ...![p]
[playse  storage="hara_ita2.ogg"][bg storage="unk001_0002.jpg" time="0"]
#デルノ
Fugi ...[p]
(Uh, I'm hungry because I moved ...!)[p]
#ツヨネ
What ...[l]No way. [p]
[bg storage="unk001_0003.jpg" time="0"]
No, oh no, yeah !! Don't leak on my face yeah yeah !![p]
#デルノ
No, don't tell me! I don't want to leak![p]
#ツヨネ
Hi !! I have to untie it quickly![p]
#デルノ
Don't stop! Don't go wild ...[l][playse  storage="hara_ita2.ogg" ]Guu, hyauuu! [p]

;屁
[playse  storage="onara_001.ogg" ]
[bg storage="unk001_0004.jpg" time="0"]

Ah![p]
#ツヨネ
Bugoo !! Gehogeho! Gue, Gebo! Oh !![p]
#デルノ
Ahhhhh, I'm sorry ...![p]
[bg storage="unk001_0005.jpg" time="0"]
#ツヨネ
Wow, hi ... hi! Please, stop and help! Someone ah ah !![p]
#デルノ
Hey! Oh, don't go wild![p]
[playse  storage="yokan.ogg" ]Huh, uh ...[p]
(Fast, fast, about ... I wonder)[p]
#ツヨネ
Wow! Ohhhhhhhhh !![p]
I'm sorry! Forgive me! I won't say cheeky things anymore, so forgive me !![p]
[bg storage="unk001_0006.jpg" time="0"]
#デルノ
Oh! Stop, I'm not on purpose ... Don't say that ... !![p]
[playse  storage="yokan.ogg" ]Hagyu ... Uuu !![p]
Hi, Gu, Huh ... Uh ...[p]
#ツヨネ
Stop, stop! Stop ...[p]
[playse  storage="owata.ogg" ]
[fadeoutbgm  time="100"  ]
[bg storage="unk001_0007.jpg" time="0"]
#デルノ
Ah[p]
#ツヨネ
Mo[p]
;Leakageらす。
[playse  storage="unk_deruno001.ogg" ]
[bg storage="unk001_0008.jpg" time="0"]
[playbgm storage=leckmichimarsch.ogg volume="80" ]
No ah ah ah ah !![p]
#ツヨネ
Bugyu mobu ...[p]
#デルノ
Wow ah ah ah sorry ...![p]
[playse  storage="unk_tsuyone.ogg" ][bg storage="unk001_0009.jpg" time="0"]
#ツヨネ
“……, ……, …………”[p]
#デルノ
I'm sorry, higu ... higu, ah ...[p]
#
[bg storage="black.jpg" time="2000"]That's it.
[p]
@layopt layer=message0 visible=false
[clearfix name="role_button"]
[fadeoutbgm  time="2000" ]
[eval exp="sf.owata1=true"]
[wait  time="3000" ]
@jump storage="title.ks"