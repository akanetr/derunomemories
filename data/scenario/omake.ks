*modori1
[cm]
[clearfix]
[playbgm storage=contedefees_0057.ogg volume="70"]
*modori2
[bg storage="omake.jpg" time="500"  method="crossfade"]
[cm]
[clearfix]
@wait time = 100

[button x=90 y=300 graphic="omake/omake_b2_1.png" enterimg="omake/omake_b2_2.png" target="*syoukai"]
[button x=90 y=390 graphic="omake/omake_b1_1.png" enterimg="omake/omake_b1_2.png" target="*kuso1"]
[button x=90 y=480 graphic="omake/omake_b3_1.png" enterimg="omake/omake_b3_2.png" target="*kuso2"]
[button x=90 y=570 graphic="omake/omake_b4_1.png" enterimg="omake/omake_b4_2.png" target="*kuso3"]
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png"  target="*backtitle" x=1150 y=40 ]
[s]

*syoukai
[cm]
[clearfix]
[bg storage="black.jpg" time="500"  method="crossfade"]
@wait time = 500
[bg storage="syoukai_deruno.jpg" time="500"  method="crossfade"][l]
[bg storage="syoukai_tsuyone.jpg" time="300" ][l]
[bg storage="syoukai_koneko.jpg" time="300" ][l]
[bg storage="black.jpg" time="500"  method="crossfade"]
@wait time = 500
@jump target=*modori2
[s]

*kuso1
[clearfix]
[cm]
[fadeoutbgm  time="500"]
[bg storage="black.jpg" time="500"  method="crossfade"]
@wait time = 500
[playse  storage="drum1.ogg" buf=1]
[bg storage="4koma_1_1.jpg" time="100"  method="crossfade"][l]
[playse  storage="pouring_sake.ogg" ]
[bg storage="4koma_1_2.jpg" time="50" ][l]
[playse  storage="bomb.ogg"]
[playse  storage="unk_deruno001.ogg" buf=1]
[bg storage="4koma_1_3.jpg" time="50" ][l]
[playse  storage="whistling1.ogg" buf=1]
[bg storage="4koma_1_4.jpg" time="50" ][l]
[bg storage="black.jpg" time="500"  method="crossfade"]
@wait time = 500
@jump target=*modori1
[s]

*kuso2
[clearfix]
[cm]
[fadeoutbgm  time="500"]
[bg storage="black.jpg" time="500"  method="crossfade"]
@wait time = 500
[playse  storage="surprise.ogg" ]
[bg storage="4koma_2_1.jpg" time="100"  method="crossfade" ][l]
[playse  storage="Ikkyu_san.ogg" ]
[bg storage="4koma_2_2.jpg" time="50" ][l]
[bg storage="black.jpg" time="500" method="crossfade" ]
@wait time = 500
@jump target=*modori1
[s]

*kuso3
[clearfix]
[cm]
[fadeoutbgm  time="500"]
[bg storage="black.jpg" time="500"  method="crossfade"]
@wait time = 500
[playbgm storage=aria.ogg volume="70"]
[bg storage="4koma_3_1.jpg" time="100"  method="crossfade"][l]
[bg storage="4koma_3_2.jpg" time="50"][l]
[playse buf=0 storage="unk_koneko1.ogg"]
[playse buf=1 storage="oshikko.ogg"]
[bg storage="4koma_3_3.jpg" time="50"][l]
[fadeoutse buf=1 time="50"]
[playse  storage="FOOOOO.ogg"]
[bg storage="4koma_3_4.jpg" time="50"][l]
[fadeoutse time="500"]
[fadeoutbgm  time="500"]
[bg storage="black.jpg" time="500"  method="crossfade"]
@wait time = 500
@jump target=*modori1
[s]

*backtitle
[cm]
[clearfix]
[bg storage="black.jpg" time="500"  method="crossfade"]
[freeimage layer=1]
@wait time = 500
@jump storage=title.ks