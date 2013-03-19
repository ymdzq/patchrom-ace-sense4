.class public Lcom/htc/weather/StateResources;
.super Ljava/lang/Object;
.source "StateResources.java"


# instance fields
.field private final RESOURCE_PACKAGENAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private bInit:Z

.field private conditions:[Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "StateResources"

    iput-object v0, p0, Lcom/htc/weather/StateResources;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 24
    const-string v0, "com.htc"

    iput-object v0, p0, Lcom/htc/weather/StateResources;->RESOURCE_PACKAGENAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Huafeng2ACCU(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 708
    :goto_0
    return v0

    .line 600
    :pswitch_0
    const/4 v0, 0x1

    .line 601
    goto :goto_0

    .line 603
    :pswitch_1
    const/4 v0, 0x6

    .line 604
    goto :goto_0

    .line 606
    :pswitch_2
    const/16 v0, 0x8

    .line 607
    goto :goto_0

    .line 609
    :pswitch_3
    const/16 v0, 0x12

    .line 610
    goto :goto_0

    .line 612
    :pswitch_4
    const/16 v0, 0xf

    .line 613
    goto :goto_0

    .line 615
    :pswitch_5
    const/16 v0, 0x33

    .line 616
    goto :goto_0

    .line 618
    :pswitch_6
    const/16 v0, 0x1d

    .line 619
    goto :goto_0

    .line 621
    :pswitch_7
    const/16 v0, 0xe

    .line 622
    goto :goto_0

    .line 624
    :pswitch_8
    const/16 v0, 0xd

    .line 625
    goto :goto_0

    .line 627
    :pswitch_9
    const/16 v0, 0x12

    .line 628
    goto :goto_0

    .line 630
    :pswitch_a
    const/16 v0, 0xf

    .line 631
    goto :goto_0

    .line 633
    :pswitch_b
    const/16 v0, 0x16

    .line 634
    goto :goto_0

    .line 636
    :pswitch_c
    const/16 v0, 0x16

    .line 637
    goto :goto_0

    .line 639
    :pswitch_d
    const/16 v0, 0x17

    .line 640
    goto :goto_0

    .line 642
    :pswitch_e
    const/16 v0, 0x15

    .line 643
    goto :goto_0

    .line 645
    :pswitch_f
    const/16 v0, 0x13

    .line 646
    goto :goto_0

    .line 648
    :pswitch_10
    const/16 v0, 0x16

    .line 649
    goto :goto_0

    .line 651
    :pswitch_11
    const/16 v0, 0x16

    .line 652
    goto :goto_0

    .line 654
    :pswitch_12
    const/16 v0, 0xb

    .line 655
    goto :goto_0

    .line 657
    :pswitch_13
    const/16 v0, 0x1a

    .line 658
    goto :goto_0

    .line 660
    :pswitch_14
    const/16 v0, 0x34

    .line 661
    goto :goto_0

    .line 663
    :pswitch_15
    const/16 v0, 0xd

    .line 664
    goto :goto_0

    .line 666
    :pswitch_16
    const/16 v0, 0xf

    .line 667
    goto :goto_0

    .line 669
    :pswitch_17
    const/16 v0, 0xf

    .line 670
    goto :goto_0

    .line 672
    :pswitch_18
    const/16 v0, 0xf

    .line 673
    goto :goto_0

    .line 675
    :pswitch_19
    const/16 v0, 0xf

    .line 676
    goto :goto_0

    .line 678
    :pswitch_1a
    const/16 v0, 0x13

    .line 679
    goto :goto_0

    .line 681
    :pswitch_1b
    const/16 v0, 0x16

    .line 682
    goto :goto_0

    .line 684
    :pswitch_1c
    const/16 v0, 0x16

    .line 685
    goto :goto_0

    .line 687
    :pswitch_1d
    const/16 v0, 0x35

    .line 688
    goto :goto_0

    .line 690
    :pswitch_1e
    const/16 v0, 0x34

    .line 691
    goto :goto_0

    .line 693
    :pswitch_1f
    const/16 v0, 0x34

    .line 694
    goto :goto_0

    .line 696
    :pswitch_20
    const/16 v0, 0x20

    .line 697
    goto :goto_0

    .line 699
    :pswitch_21
    const/16 v0, 0x36

    .line 700
    goto :goto_0

    .line 702
    :pswitch_22
    const/16 v0, 0x13

    .line 703
    goto :goto_0

    .line 705
    :pswitch_23
    const/16 v0, 0xb

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    .line 159
    iput-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 161
    return-void
.end method

.method public getConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    :goto_0
    return-object v2

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v1

    .line 74
    .local v1, resId:I
    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 75
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "conditionId"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v1

    .line 87
    .local v1, resId:I
    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, bmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    const v0, 0x2080373

    .line 286
    packed-switch p1, :pswitch_data_0

    .line 380
    :goto_0
    :pswitch_0
    return v0

    .line 288
    :pswitch_1
    const v0, 0x208036d

    goto :goto_0

    .line 290
    :pswitch_2
    const v0, 0x208036e

    goto :goto_0

    .line 292
    :pswitch_3
    const v0, 0x208036f

    goto :goto_0

    .line 294
    :pswitch_4
    const v0, 0x2080370

    goto :goto_0

    .line 296
    :pswitch_5
    const v0, 0x2080371

    goto :goto_0

    .line 298
    :pswitch_6
    const v0, 0x2080372

    goto :goto_0

    .line 302
    :pswitch_7
    const v0, 0x2080374

    goto :goto_0

    .line 305
    :pswitch_8
    const v0, 0x2080375

    goto :goto_0

    .line 307
    :pswitch_9
    const v0, 0x2080376

    goto :goto_0

    .line 309
    :pswitch_a
    const v0, 0x2080377

    goto :goto_0

    .line 311
    :pswitch_b
    const v0, 0x2080378

    goto :goto_0

    .line 313
    :pswitch_c
    const v0, 0x2080379

    goto :goto_0

    .line 315
    :pswitch_d
    const v0, 0x208037a

    goto :goto_0

    .line 317
    :pswitch_e
    const v0, 0x208037b

    goto :goto_0

    .line 319
    :pswitch_f
    const v0, 0x208037c

    goto :goto_0

    .line 321
    :pswitch_10
    const v0, 0x208037d

    goto :goto_0

    .line 323
    :pswitch_11
    const v0, 0x208037e

    goto :goto_0

    .line 325
    :pswitch_12
    const v0, 0x208037f

    goto :goto_0

    .line 327
    :pswitch_13
    const v0, 0x2080380

    goto :goto_0

    .line 329
    :pswitch_14
    const v0, 0x2080381

    goto :goto_0

    .line 331
    :pswitch_15
    const v0, 0x2080382

    goto :goto_0

    .line 333
    :pswitch_16
    const v0, 0x2080383

    goto :goto_0

    .line 335
    :pswitch_17
    const v0, 0x2080384

    goto :goto_0

    .line 338
    :pswitch_18
    const v0, 0x2080385

    goto :goto_0

    .line 340
    :pswitch_19
    const v0, 0x2080386

    goto :goto_0

    .line 342
    :pswitch_1a
    const v0, 0x2080387

    goto :goto_0

    .line 344
    :pswitch_1b
    const v0, 0x2080388

    goto :goto_0

    .line 346
    :pswitch_1c
    const v0, 0x2080389

    goto :goto_0

    .line 348
    :pswitch_1d
    const v0, 0x208038a

    goto :goto_0

    .line 350
    :pswitch_1e
    const v0, 0x208038b

    goto :goto_0

    .line 352
    :pswitch_1f
    const v0, 0x208038c

    goto :goto_0

    .line 354
    :pswitch_20
    const v0, 0x208038d

    goto :goto_0

    .line 356
    :pswitch_21
    const v0, 0x208038e

    goto/16 :goto_0

    .line 358
    :pswitch_22
    const v0, 0x208038f

    goto/16 :goto_0

    .line 360
    :pswitch_23
    const v0, 0x2080390

    goto/16 :goto_0

    .line 363
    :pswitch_24
    const v0, 0x2080391

    goto/16 :goto_0

    .line 365
    :pswitch_25
    const v0, 0x2080392

    goto/16 :goto_0

    .line 367
    :pswitch_26
    const v0, 0x2080393

    goto/16 :goto_0

    .line 369
    :pswitch_27
    const v0, 0x2080394

    goto/16 :goto_0

    .line 372
    :pswitch_28
    const v0, 0x2080395

    goto/16 :goto_0

    .line 374
    :pswitch_29
    const v0, 0x2080396

    goto/16 :goto_0

    .line 376
    :pswitch_2a
    const v0, 0x2080397

    goto/16 :goto_0

    .line 378
    :pswitch_2b
    const v0, 0x2080398

    goto/16 :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public getConditionText(I)Ljava/lang/String;
    .locals 2
    .parameter "conditionId"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 176
    const-string v0, ""

    .line 276
    :goto_0
    return-object v0

    .line 182
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 276
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 188
    :pswitch_3
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 190
    :pswitch_4
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 192
    :pswitch_5
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    .line 194
    :pswitch_6
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    .line 196
    :pswitch_7
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    .line 198
    :pswitch_8
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    .line 201
    :pswitch_9
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto :goto_0

    .line 203
    :pswitch_a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto :goto_0

    .line 205
    :pswitch_b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto :goto_0

    .line 207
    :pswitch_c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    goto :goto_0

    .line 209
    :pswitch_d
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    goto :goto_0

    .line 211
    :pswitch_e
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    goto :goto_0

    .line 213
    :pswitch_f
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    goto :goto_0

    .line 215
    :pswitch_10
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    goto :goto_0

    .line 217
    :pswitch_11
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto :goto_0

    .line 219
    :pswitch_12
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    goto :goto_0

    .line 221
    :pswitch_13
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 223
    :pswitch_14
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 225
    :pswitch_15
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 227
    :pswitch_16
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 229
    :pswitch_17
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 231
    :pswitch_18
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 234
    :pswitch_19
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 236
    :pswitch_1a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 238
    :pswitch_1b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 240
    :pswitch_1c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 242
    :pswitch_1d
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 244
    :pswitch_1e
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 246
    :pswitch_1f
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 248
    :pswitch_20
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 250
    :pswitch_21
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 252
    :pswitch_22
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 254
    :pswitch_23
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 256
    :pswitch_24
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x23

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 259
    :pswitch_25
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x24

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 261
    :pswitch_26
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x25

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 263
    :pswitch_27
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x26

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 265
    :pswitch_28
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 268
    :pswitch_29
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 270
    :pswitch_2a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x29

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 272
    :pswitch_2b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2a

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 274
    :pswitch_2c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2b

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
    .end packed-switch
.end method

.method public getConditionText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strId"

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, val:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLargeConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    :goto_0
    return-object v2

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v1

    .line 101
    .local v1, resId:I
    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 102
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLargeConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "conditionId"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v1

    .line 114
    .local v1, resId:I
    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, bmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getLargeConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    const v0, 0x208031e

    .line 493
    packed-switch p1, :pswitch_data_0

    .line 587
    :goto_0
    :pswitch_0
    return v0

    .line 495
    :pswitch_1
    const v0, 0x2080318

    goto :goto_0

    .line 497
    :pswitch_2
    const v0, 0x2080319

    goto :goto_0

    .line 499
    :pswitch_3
    const v0, 0x208031a

    goto :goto_0

    .line 501
    :pswitch_4
    const v0, 0x208031b

    goto :goto_0

    .line 503
    :pswitch_5
    const v0, 0x208031c

    goto :goto_0

    .line 505
    :pswitch_6
    const v0, 0x208031d

    goto :goto_0

    .line 509
    :pswitch_7
    const v0, 0x208031f

    goto :goto_0

    .line 512
    :pswitch_8
    const v0, 0x2080320

    goto :goto_0

    .line 514
    :pswitch_9
    const v0, 0x2080321

    goto :goto_0

    .line 516
    :pswitch_a
    const v0, 0x2080322

    goto :goto_0

    .line 518
    :pswitch_b
    const v0, 0x2080323

    goto :goto_0

    .line 520
    :pswitch_c
    const v0, 0x2080324

    goto :goto_0

    .line 522
    :pswitch_d
    const v0, 0x2080325

    goto :goto_0

    .line 524
    :pswitch_e
    const v0, 0x2080326

    goto :goto_0

    .line 526
    :pswitch_f
    const v0, 0x2080327

    goto :goto_0

    .line 528
    :pswitch_10
    const v0, 0x2080328

    goto :goto_0

    .line 530
    :pswitch_11
    const v0, 0x2080329

    goto :goto_0

    .line 532
    :pswitch_12
    const v0, 0x208032a

    goto :goto_0

    .line 534
    :pswitch_13
    const v0, 0x208032b

    goto :goto_0

    .line 536
    :pswitch_14
    const v0, 0x208032c

    goto :goto_0

    .line 538
    :pswitch_15
    const v0, 0x208032d

    goto :goto_0

    .line 540
    :pswitch_16
    const v0, 0x208032e

    goto :goto_0

    .line 542
    :pswitch_17
    const v0, 0x208032f

    goto :goto_0

    .line 545
    :pswitch_18
    const v0, 0x2080330

    goto :goto_0

    .line 547
    :pswitch_19
    const v0, 0x2080331

    goto :goto_0

    .line 549
    :pswitch_1a
    const v0, 0x2080332

    goto :goto_0

    .line 551
    :pswitch_1b
    const v0, 0x2080333

    goto :goto_0

    .line 553
    :pswitch_1c
    const v0, 0x2080334

    goto :goto_0

    .line 555
    :pswitch_1d
    const v0, 0x2080335

    goto :goto_0

    .line 557
    :pswitch_1e
    const v0, 0x2080336

    goto :goto_0

    .line 559
    :pswitch_1f
    const v0, 0x2080337

    goto :goto_0

    .line 561
    :pswitch_20
    const v0, 0x2080338

    goto :goto_0

    .line 563
    :pswitch_21
    const v0, 0x2080339

    goto/16 :goto_0

    .line 565
    :pswitch_22
    const v0, 0x208033a

    goto/16 :goto_0

    .line 567
    :pswitch_23
    const v0, 0x208033b

    goto/16 :goto_0

    .line 570
    :pswitch_24
    const v0, 0x208033c

    goto/16 :goto_0

    .line 572
    :pswitch_25
    const v0, 0x208033d

    goto/16 :goto_0

    .line 574
    :pswitch_26
    const v0, 0x208033e

    goto/16 :goto_0

    .line 576
    :pswitch_27
    const v0, 0x208033f

    goto/16 :goto_0

    .line 579
    :pswitch_28
    const v0, 0x2080340

    goto/16 :goto_0

    .line 581
    :pswitch_29
    const v0, 0x2080341

    goto/16 :goto_0

    .line 583
    :pswitch_2a
    const v0, 0x2080342

    goto/16 :goto_0

    .line 585
    :pswitch_2b
    const v0, 0x2080343

    goto/16 :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public getSmallConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    :goto_0
    return-object v2

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v1

    .line 132
    .local v1, resId:I
    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 133
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmallConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "conditionId"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v1

    .line 149
    .local v1, resId:I
    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, bmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getSmallConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    const v0, 0x20803aa

    .line 390
    packed-switch p1, :pswitch_data_0

    .line 484
    :goto_0
    :pswitch_0
    return v0

    .line 392
    :pswitch_1
    const v0, 0x20803a4

    goto :goto_0

    .line 394
    :pswitch_2
    const v0, 0x20803a5

    goto :goto_0

    .line 396
    :pswitch_3
    const v0, 0x20803a6

    goto :goto_0

    .line 398
    :pswitch_4
    const v0, 0x20803a7

    goto :goto_0

    .line 400
    :pswitch_5
    const v0, 0x20803a8

    goto :goto_0

    .line 402
    :pswitch_6
    const v0, 0x20803a9

    goto :goto_0

    .line 406
    :pswitch_7
    const v0, 0x20803ab

    goto :goto_0

    .line 409
    :pswitch_8
    const v0, 0x20803ac

    goto :goto_0

    .line 411
    :pswitch_9
    const v0, 0x20803ad

    goto :goto_0

    .line 413
    :pswitch_a
    const v0, 0x20803ae

    goto :goto_0

    .line 415
    :pswitch_b
    const v0, 0x20803af

    goto :goto_0

    .line 417
    :pswitch_c
    const v0, 0x20803b0

    goto :goto_0

    .line 419
    :pswitch_d
    const v0, 0x20803b1

    goto :goto_0

    .line 421
    :pswitch_e
    const v0, 0x20803b2

    goto :goto_0

    .line 423
    :pswitch_f
    const v0, 0x20803b3

    goto :goto_0

    .line 425
    :pswitch_10
    const v0, 0x20803b4

    goto :goto_0

    .line 427
    :pswitch_11
    const v0, 0x20803b5

    goto :goto_0

    .line 429
    :pswitch_12
    const v0, 0x20803b6

    goto :goto_0

    .line 431
    :pswitch_13
    const v0, 0x20803b7

    goto :goto_0

    .line 433
    :pswitch_14
    const v0, 0x20803b8

    goto :goto_0

    .line 435
    :pswitch_15
    const v0, 0x20803b9

    goto :goto_0

    .line 437
    :pswitch_16
    const v0, 0x20803ba

    goto :goto_0

    .line 439
    :pswitch_17
    const v0, 0x20803bb

    goto :goto_0

    .line 442
    :pswitch_18
    const v0, 0x20803bc

    goto :goto_0

    .line 444
    :pswitch_19
    const v0, 0x20803bd

    goto :goto_0

    .line 446
    :pswitch_1a
    const v0, 0x20803be

    goto :goto_0

    .line 448
    :pswitch_1b
    const v0, 0x20803bf

    goto :goto_0

    .line 450
    :pswitch_1c
    const v0, 0x20803c0

    goto :goto_0

    .line 452
    :pswitch_1d
    const v0, 0x20803c1

    goto :goto_0

    .line 454
    :pswitch_1e
    const v0, 0x20803c2

    goto :goto_0

    .line 456
    :pswitch_1f
    const v0, 0x20803c3

    goto :goto_0

    .line 458
    :pswitch_20
    const v0, 0x20803c4

    goto :goto_0

    .line 460
    :pswitch_21
    const v0, 0x20803c5

    goto/16 :goto_0

    .line 462
    :pswitch_22
    const v0, 0x20803c6

    goto/16 :goto_0

    .line 464
    :pswitch_23
    const v0, 0x20803c7

    goto/16 :goto_0

    .line 467
    :pswitch_24
    const v0, 0x20803c8

    goto/16 :goto_0

    .line 469
    :pswitch_25
    const v0, 0x20803c9

    goto/16 :goto_0

    .line 471
    :pswitch_26
    const v0, 0x20803ca

    goto/16 :goto_0

    .line 473
    :pswitch_27
    const v0, 0x20803cb

    goto/16 :goto_0

    .line 476
    :pswitch_28
    const v0, 0x20803cc

    goto/16 :goto_0

    .line 478
    :pswitch_29
    const v0, 0x20803cd

    goto/16 :goto_0

    .line 480
    :pswitch_2a
    const v0, 0x20803ce

    goto/16 :goto_0

    .line 482
    :pswitch_2b
    const v0, 0x20803cf

    goto/16 :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/weather/StateResources;->bInit:Z

    .line 39
    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 43
    iget-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    const/high16 v2, 0x207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/weather/StateResources;->bInit:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "StateResources"

    const-string v2, "!! can not find resource from com.htc"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    goto :goto_0

    .line 54
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 55
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 56
    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "isRecreateRes"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
