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
;コネコ
[chara_new  name="koneko" storage="chara/koneko/koneko_0001.png" jname="コネコ"  ]
[chara_face name="koneko" face="01" storage="chara/koneko/koneko_0000.png"]
[chara_face name="koneko" face="02" storage="chara/koneko/koneko_0002.png"]
[chara_face name="koneko" face="03" storage="chara/koneko/koneko_0003.png"]

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


;ここから
[chara_config talk_focus="brightness" ]
[playse storage="contedefees_vo_0001_2020_09.ogg" ]
[bg storage="IdolStage.jpg" time="300"]
[chara_show name="koneko" left="239" top="-62" time="300" ]
#コネコ
Everyone ~![ruby text="はつ"]first time[ruby text="うら"]Ura Koneko, are you enjoying it ~? [p]
[chara_config  talk_anim="up" ]
[playse buf=1 storage="FOOOOO.ogg" ]
#観客達
FOOOOOOOOOOOOOOO[p]
[playse buf=2 storage="wink.ogg" ]
[chara_mod  name="koneko" face="01" cross="false" wait="false" time="0" ]
#コネコ
OK! It's still going![p]
[chara_hide_all wait="false" time="300" ]
[bg storage="unk003_0000.jpg" time="300"]
[chara_config  talk_anim="none" ]
#デルノ
(Koneko-chan is amazing. Not only is she cute, she is also good at singing and dancing.[p]
(I remember dreaming of becoming an idol when I was little ... I came to the concert for the first time, but it was worth the effort to get a ticket in front of me)[p]
#コネコ
Next is'Chocolate in love ☆ Fountain'! Enjoy with call and response ♪[p]
[playbgm storage=Ganache.ogg volume="60" ]
[bg storage="unk003_0001.jpg" time="0"]
#デルノ
(Wow! I love this song! I'm really excited!)[p]
(Call and response is OK for live performances, because I'm crazy about it ...)[p]
[fadeoutbgm  time="1000" ]
[playse storage="hara_ita2.ogg" ]
[bg storage="unk003_0002.jpg" time="0"]
Hmm?[p]
[playse storage="dokidoki.ogg" buf=3 loop=true ]
(What? My stomach hurts ... this is no way!)[p]
[playse storage="hara_ita2.ogg" ]
[bg storage="unk003_0003.jpg" time="0"]
(Why !? You finished the toilet before it started! Why did you just pee at that time !?)[p]
(I can't stand because I'm in the middle of playing ... I have to endure ...)[p]
[playse storage="hara_ita3.ogg" ]
Ugyu ...[p]
(Uh. I like this song, but ... I can't think of it.)[p]
[playse storage="hara_ita3.ogg" ]
Hmm ...![p]
(No, if you have to get out, you'll ruin your live performance ...)[p]
[playse  storage="owata2.ogg" ]
[bg storage="unk003_0004.jpg" time="0"]
[stopse buf=3 ]
Ah ... ah ...[p]
[bg storage="black.jpg" time="900"]
[fadeoutbgm  time="1000" ]
#
......[p]
[wait  time="1000" ]
[bg storage="IdolStage.jpg" time="300"]
[chara_show name="koneko" left="239" top="-62" time="300" ]
#コネコ
Thank you! Then break time ...[p]
#観客達
Hmm?[p]
[playse storage="himei.ogg" ]
Wow !! What is this !?[p]
[chara_hide_all wait="false" time="300" ]
[bg storage="unk003_0005.jpg" time="300"]
#デルノ
Gusu ... Uh ... Higu, U ... U[p]
#コネコ
!?[p]
#観客達
Cha ah ah this child is leaking !![p]
[playse storage="himei.ogg" ]
Ugh !? The camera is buggy and appears on the side screen !![p]
Hiiii !![p]
#デルノ
(No ... don't look ... I'm sorry, Koneko-chan, everyone ... oh)[p]
#観客達
I can't! How much are you out !?[p]
Ha ha ha[p]
There is no other person who can shit like this![p]
[bg storage="unk003_0006.jpg" time="0"]
[playse storage="strange_bell.ogg" ]
#コネコ
What? What did you say now?[p]
#観客達
Konekotan ...?[p]
[playbgm storage=04myuu_Battle_Chiptune.ogg volume="60" ]
[bg storage="IdolStage.jpg" time="300"]
[playse storage="magical.ogg" ]
[chara_show name="koneko" face="02" left="239" top="-62" time="300" ]
#コネコ
I can't abandon it![p]
#観客達
Konekotan !?[p]
#デルノ
......Huh?[p]
[chara_hide_all wait="false" time="300" ]
[bg storage="unk003_0007.jpg" time="300"]
#コネコ
I'm an idol! Singing and dancing are top notch ... and[p]
#観客達
No way Konekotan[p]
Stop! Stop![p]
[playse  storage="onara_001.ogg"]
[bg storage="unk003_0008.jpg" time="0"]
#コネコ
Even shit ... I can't lose to anyone ... !![p]
Oh ... show me the difference in case, oh ...[p]
[playse buf=0 storage="unk_koneko1.ogg"]
[playse buf=1 storage="oshikko.ogg"]
[playse buf=2 storage="shio.ogg" ]
[bg storage="unk003_0009.jpg" time="0"]
Ryuboooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo ♥♥♥♥♥♥♥♥♥[p]
#観客達
Yeah yeah yeah yeah yeah yeah[p]
[bg storage="unk003_0010.jpg" time="0"]
#デルノ
Yeah yeah yeah yeah yeah yeah[p]
[playse buf=3 storage="unk_koneko2.ogg"]
[playse buf=1 storage="oshikko.ogg"]
[playse buf=2 storage="shio.ogg"]
#コネコ
Ooooooooooooo ♥♥♥♥♥♥ All the impactions are out.[p]
[playse  storage="unk_koneko1.ogg"]
Fugyuuuuuuuuuuuuuuuuuu ♥♥♥♥♥♥♥♥♥♥♥♥[p]
[fadeoutbgm  time="900" ]
[fadeoutse buf=1 time="500"  ]
[bg storage="unk003_0011.jpg" time="0"]
Huh, hafu ♥ nfu ...[p]
#観客達
“............”[p]
#観客達
......cormorant[p]
[playbgm storage=07myuu_lilith_Chiptune.ogg volume="60" ]
[playse storage="FOOOOO.ogg" ]
[bg storage="unk003_0012.jpg" time="0"]
Beautiful Konekotan !! Sacrifice yourself for the leaked fan !![p]
#観客達
The shit is really amazing !! You can also aim for a new record![p]
I have no choice but to push it! Bravo !![p]
Hahahaakonekotan is precious.[p]
[bg storage="unk003_0013.jpg" time="0"]
[playse buf=1 storage="wink.ogg" ]
#コネコ
That? ... Well, yeah ☆[p]
[bg storage="unk003_0014.jpg" time="0"]
#デルノ
Yeah yeah yeah yeah yeah yeah[p]
#コネコ
Oh, and I remembered it with shit, but now it's time for a break, so let's all go to the bathroom ~[p]
[playse storage="FOOOOO.ogg" ]
#観客達
FOOOOOOOOOOOOOOO[p]
[bg storage="black.jpg" time="900"]
#デルノ
(I wonder if that was good ...?, But Koneko-chan has been a popular idol since that live, and I'm still a fan of Koneko-chan.)[p]
#
That's it.
[p]
[fadeoutbgm  time="1000" ]
@layopt layer=message0 visible=false
[clearfix name="role_button"]
[fadeoutbgm  time="2000" ]
[cg storage="unk003_0000.jpg"]
[cg storage="unk003_0005.jpg"]
[cg storage="unk003_0007.jpg"]
[eval exp="sf.owata3=true"]
[wait  time="3000" ]
@jump storage="title.ks"