[cg storage="nowloading.jpg"]
[title name="デルノちゃんメモリーズ"]
[iscript]
    tf.preload_file = [
       "./data/image/title/button_start.png",
       "./data/image/title/button_start2.png",
       "./data/image/title/button_start3.png",
       "./data/image/title/button_cg.png",
       "./data/image/title/button_cg2.png",
       "./data/image/title/button_cg3.png",
       "./data/image/title/button_load.png",
       "./data/image/title/button_load2.png",
       "./data/image/title/button_load3.png",
       "./data/image/title/button_omake.png",
       "./data/image/title/button_omake2.png",
       "./data/image/title/button_omake3.png",
       "./data/image/title/button_omakecg.png",
       "./data/image/title/button_omakecg2.png",
       "./data/image/title/button_omakecg3.png",
       "./data/image/title/button_omakeload.png",
       "./data/image/title/button_omakeload2.png",
       "./data/image/title/button_omakeload3.png",
       "./data/image/title/button_omakestart.png",
       "./data/image/title/button_omakestart2.png",
       "./data/image/title/button_omakestart3.png"
    ];
[endscript]
[preload storage="&tf.preload_file" wait=true]

*saisyo
[cm]
@clearstack
----------------------------------------------
;おまけ解放
[if exp="sf.owata1==true"]
[if exp="sf.owata2==true"]
[if exp="sf.owata3==true"]
[eval exp="sf.owataAll=true"]
@bg storage ="title2.jpg" time=100
[cg storage="title2.jpg"]
[playbgm storage=leckmichimarsch.ogg volume="70" ]
[jump  target="*start" ]
[endif]
[endif]
[endif]
----------------------------------------------
@bg storage ="title1.jpg" time=100
[cg storage="title1.jpg"]
[playbgm storage=07_sanpo.ogg volume="70" ]
*start 
----------------------------------------------
;おまけ解放
[if exp="sf.owataAll==true"]
[button x=90 y=300 graphic="title/button_omakestart.png" enterimg="title/button_omakestart2.png"  target="gamestart"]
[button x=90 y=390 graphic="title/button_omakeload.png" enterimg="title/button_omakeload2.png" role="load" ]
[button x=90 y=480 graphic="title/button_omakecg.png" enterimg="title/button_omakecg2.png" storage="cg.ks" ]
[button graphic="title/button_omake.png" enterimg="title/button_omake2.png" storage="omake.ks" x=90 y=570]
[jump  target="*stop" ]
[endif]
----------------------------------------------
[button x=90 y=300 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart"]
[button x=90 y=390 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" ]
[button x=90 y=480 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" ]
*stop
[s]

*gamestart
[clearfix]
[cm]
[bg storage="black.jpg" time="500"]
[button x=135 y=190 graphic="button/EpisodeButton1_1.png" enterimg="button/EpisodeButton1_2.png" target="episode1" ]
[button x=135 y=320 graphic="button/EpisodeButton2_1.png" enterimg="button/EpisodeButton2_2.png" target="episode2" ]
[button x=135 y=450 graphic="button/EpisodeButton3_1.png" enterimg="button/EpisodeButton3_2.png" target="episode3" ]
[button x="1160" y="20" graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png" target="*saisyo"]

[s]

;一番最初のシナリオファイルへジャンプする
*episode1
[cm]
[fadeoutbgm  time="500" ]
[wait time="500" ]
@jump storage="scene1.ks"

*episode2
[cm]
[fadeoutbgm  time="500" ]
[wait time="500" ]
@jump storage="scene2.ks"

*episode3
[cm]
[fadeoutbgm  time="500" ]
[wait time="500" ]
@jump storage="scene3.ks"