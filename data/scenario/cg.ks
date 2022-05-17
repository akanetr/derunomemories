;=========================================
; CG モード　画面作成
;=========================================

@layopt layer=message0 visible=false
@clearfix
[hidemenubutton]
[cm]

[bg storage="../../tyrano/images/system/bg_base.png" time=100]
[layopt layer=1 visible=true]

[image layer=1 left=15 top=15 storage="config/label_cg.png" folder="image" ]

[iscript]
    
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[layopt layer=1 visible=true]

[cm]
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png"  target="*backtitle" x=1150 y=40 ]

[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 100;
    tf.left = 60;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*cgview
@jump target=&tf.target_page

*page_0
[cg_image_button graphic="title1.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=150 width=160 height=140 folder="bgimage" ]
*owata
[cg_image_button graphic="unk001_0000.jpg,unk001_0001.jpg,unk001_0002.jpg,unk001_0003.jpg,unk001_0004.jpg,unk001_0005.jpg,unk001_0006.jpg,unk001_0007.jpg,unk001_0008.jpg,unk001_0009.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=240 y=150 width=160 height=140 folder="bgimage" ]

[cg_image_button graphic="unk002_0000.jpg,unk002_0001.jpg,unk002_0002.jpg,unk002_0003.jpg,unk002_0004.jpg,unk002_0005.jpg,unk002_0006.jpg,unk002_0007.jpg,unk002_0008.jpg,unk002_0009.jpg,unk002_0010.jpg,unk002_0011.jpg,unk002_0012.jpg,unk002_0013.jpg,unk002_0014.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=420 y=150 width=160 height=140 folder="bgimage" ]

[cg_image_button graphic="unk003_0000.jpg,unk003_0001.jpg,unk003_0002.jpg,unk003_0003.jpg,unk003_0004.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=600 y=150 width=160 height=140 folder="bgimage" ]

[cg_image_button graphic="unk003_0005.jpg,unk003_0006.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=780 y=150 width=160 height=140 folder="bgimage" ]

[cg_image_button graphic="unk003_0007.jpg,unk003_0008.jpg,unk003_0009.jpg,unk003_0010.jpg,unk003_0011.jpg,unk003_0012.jpg,unk003_0013.jpg,unk003_0014.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=960 y=150 width=160 height=140 folder="bgimage" ]

[cg_image_button graphic="title2.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=300 width=160 height=140 folder="bgimage" ]

@jump target="*common"

*common


*endpage



[s]

*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
@jump target="*cgpage"


*backpage
[emb exp="tf.page--;"]
@jump target="*cgpage"

*clickcg
[cm]
[layopt layer=1 visible=false]
[eval exp="tf.cg_index=0"]
*cg_next_image

[image storage=&tf.selected_cg_image[tf.cg_index] folder="bgimage"  ]
[l]
[bg storage="../../tyrano/images/system/bg_base.png" time=10]

[eval exp="tf.cg_index++"]

@jump target="cg_next_image" cond="tf.selected_cg_image.length > tf.cg_index"


@jump  target=*cgpage
[s]

*no_image

@jump  target=*cgpage



