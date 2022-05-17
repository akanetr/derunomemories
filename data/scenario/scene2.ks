;もしもあなたがデルノの彼氏だったら
*start

[cm ]
[clearfix]
[start_keyconfig]

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
[chara_new  name="deruno" storage="chara/deruno/deruno_WinterClothes_0000.png" jname="デルノ"]
[chara_face name="deruno" face="shihuku_00" storage="chara/deruno/deruno_WinterClothes_0000.png"]
[chara_face name="deruno" face="shihuku_01" storage="chara/deruno/deruno_WinterClothes_0001.png"]
[chara_face name="deruno" face="shihuku_02" storage="chara/deruno/deruno_WinterClothes_0002.png"]
[chara_face name="deruno" face="shihuku_03" storage="chara/deruno/deruno_WinterClothes_0003.png"]

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


;★はじまる。
[playse  storage="dashing.ogg" volume="60"]
[bg storage="eki.jpg" time="100"]
[playbgm storage=yumemirusyoujo.ogg volume="60" ]
[chara_show  name="deruno" left="0" top="-10" time="300" ]
[wait  time="300" ]
[chara_mod  name="deruno" face="shihuku_03" cross="false" wait="false" time="0" ]
#デルノ
Good morning. It was hard to run, thank you for your hard work.[p]
[chara_mod  name="deruno" face="shihuku_00" cross="false" wait="false" time="0" ]
#あなた
Well, huh ... Delno, I'm sorry to have kept you waiting.[p]
[chara_mod  name="deruno" face="shihuku_02" cross="false" wait="false" time="0" ]
#デルノ
If you get hungry when you go out, you can't help it. And if you ride from now on, you'll be in time for the concert, so it's okay.[p]
[chara_mod  name="deruno" face="shihuku_01" cross="false" wait="false" time="0" ]
#あなた
Hmm ... Thank you[p]
[chara_mod  name="deruno" face="shihuku_02" cross="false" wait="false" time="0" ]
#デルノ
Then, I'm here ♪[p]
[fadeinse storage="train.ogg" time="1000"  buf="1" loop="true" volume="60" ]
[chara_hide_all  wait="false"  time="500" ]
[bg storage="black.jpg" time="500"]
[wait  time="1000" ]
[bg storage="densya.jpg" time="500"]
#デルノ
Wow, there are many people.[p]
#あなた
Hmm ...[l]That's it! [p]
[bg storage="unk002_0000.jpg" time="500"]
#デルノ
Wow ...![p]
#あなた
This kind of person will not lose balance.[p]
[bg storage="unk002_0001.jpg" time="0"]
#デルノ
Already ...[p]
#デルノ
(I'm happy. I'm looking forward to the live concert together)[p]
[fadeoutbgm  time="200"  ][playse  storage="hara_ita1.ogg" ]
[bg storage="unk002_0002.jpg" time="0"]
#デルノ
Hmm ...[p]
#あなた
Derno?[p]
[bg storage="unk002_0003.jpg" time="0"]
[playbgm storage=EDM09-psychopass.ogg volume="50" ]
#デルノ
No, nothing[p]
#デルノ
(Toilet ... I want to go ... Why at this time ...!)[p]
#デルノ
(But if you get off on the way, you won't be in time for the concert, you have to put up with it)[p]
#デルノ
La ... I'm looking forward to the live performance ...[p]
#あなた
Hmm, that's right ...[p]
[playse  storage="hara_ita1.ogg" ][bg storage="unk002_0004.jpg" time="0"]
#デルノ
(I should have been in the bathroom in the morning ... I didn't poop at that time ...!)[p]
(It takes about 30 minutes to the venue ... I have to endure it, I have to endure it ...!)[p]
#あなた
Hey ...[p]
[bg storage="unk002_0005.jpg" time="0"]
#デルノ
It's okay, okay ... bu[p]
[playse  storage="hara_ita1.ogg" ][bg storage="unk002_0004.jpg" time="0"]
Uku ... U ...[p]
(I want to get off at the next station ...[l]That's no good! It's a live that we've been looking forward to for a long time! )[p]
(I'll definitely put up with the toilet ... I'll be in time if I need more at the station at the venue)[p]
(This feeling is not diarrhea, so you should be able to endure the station at the venue!)[p]
#あなた
You look pale[p]
[bg storage="unk002_0005.jpg" time="0"]
#デルノ
I don't care. I don't care ...[l][playse  storage="poyo.ogg" ]
[bg storage="unk002_0006.jpg" time="0"]
Det [p]
[playse  storage="hara_ita2.ogg" ][bg storage="unk002_0007.jpg" time="0"]
Hmm ... Hmm ...![p]
(No! The bag of the person behind hits the butt and it's extra ...!)[p]
(No! Don't worry. It will ruin!)[p]
(But what if I leak it? It makes me feel embarrassed and dirty and hated? I hate that too!)[p]
(If you have to endure, you have to pretend to be okay)[p]
#あなた
Derno ...[p]
Let's get off at the next station[p]
[bg storage="unk002_0008.jpg" time="0"]
#デルノ
Eh? No, it's no good, I can't make it in time for the concert![p]
#あなた
There is no more important live than Delno[p]
[bg storage="unk002_0009.jpg" time="0"]
#デルノ
Uuu ... my, I ... de ...[p]
#あなた
No, if I had to get hungry in the morning, I couldn't stand Delno because I had enough time. I'm sorry.[p]
[bg storage="unk002_0010.jpg" time="0"]
#デルノ
That ... Thank you ...[l][playse  storage="hara_ita3.ogg" ][bg storage="unk002_0011.jpg" time="0"]
Oh !? [p]
#あなた
Derno !?[p]
#デルノ
Oh ... Po ... Hoo ...[p]
(No, no, no, no, rise up ...[l]Arrive fast, fast, fast yeah !! I don't want to leak! )[p]
#あなた
I'll be there soon, because I'm supporting you.[p]
#デルノ
Wow, I understand, I understand ...[p]
[playse  storage="owata2.ogg" ]
[fadeoutbgm  time="100"  ]
[bg storage="unk002_0012.jpg" time="0"]
[playbgm storage=leckmichimarsch.ogg volume="80" ]
#デルノ
Ah[p]
#あなた
Derno?[p]
[playse  storage="owata3.ogg" ][bg storage="unk002_0013.jpg" time="0"]
#デルノ
Ah, ah, ah[p]
Why ... why. Why, why ...[p]
#あなた
Eh? Eh? Eh ...?[p]
#周囲
Uh !?[p]
Ugyaa![p]
That girl is leaking![p]
[playse  storage="owata3.ogg" ][bg storage="unk002_0014.jpg" time="0"]
#デルノ
Ah ... oh ...[p]
#周囲
Ohhh !! Yeah, it's out !![p]
Yeah ah[p]
[playse  storage="camera.ogg" ]
Crash.[p]
#あなた
Del ... No .........[p]
#デルノ
Ah ... oh ... oh .........[p]
This isn't ... there isn't ...[p]

#
[fadeoutse buf="1" time="2000" ]
[bg storage="black.jpg" time="2000"]That's it.[p]
[cg storage="unk002_0000.jpg"]
@layopt layer=message0 visible=false
[clearfix name="role_button" ]
[fadeoutbgm  time="2000" ]
[eval exp="sf.owata2=true"]
[wait  time="3000" ]
@jump storage="title.ks"