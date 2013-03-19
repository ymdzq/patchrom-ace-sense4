.class public Landroid/view/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TOGETHER:I

.field static final USE_HTC_TRANSITION_ANIM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;->USE_HTC_TRANSITION_ANIM:Z

    sput-boolean v0, Landroid/view/animation/AnimationUtils;->USE_HTC_TRANSITION_ANIM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "c"
    .parameter "parser"
    .parameter "parent"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 109
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 112
    .local v1, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_8

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    .line 114
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    move-object v4, v0

    .line 122
    check-cast v4, Landroid/view/animation/AnimationSet;

    invoke-static {p0, p1, v4, p3}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    .line 145
    :goto_1
    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 123
    :cond_2
    const-string v4, "alpha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 125
    :cond_3
    const-string/jumbo v4, "scale"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 126
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 127
    :cond_4
    const-string/jumbo v4, "rotate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 128
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 129
    :cond_5
    const-string/jumbo v4, "translate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 130
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 132
    :cond_6
    const-string v4, "htcgl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 133
    sget-boolean v4, Landroid/view/animation/AnimationUtils;->USE_HTC_TRANSITION_ANIM:Z

    if-eqz v4, :cond_0

    .line 134
    invoke-static {p0, p3}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    .end local v2           #name:Ljava/lang/String;
    :cond_8
    return-object v0
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 8
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v2, 0x0

    .line 305
    .local v2, interpolator:Landroid/view/animation/Interpolator;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 308
    .local v1, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_b

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    .line 310
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 314
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 316
    .local v0, attrs:Landroid/util/AttributeSet;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, name:Ljava/lang/String;
    const-string v5, "linearInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/LinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 321
    :cond_2
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 323
    :cond_3
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 324
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 325
    :cond_4
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 326
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 327
    :cond_5
    const-string v5, "cycleInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 328
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 329
    :cond_6
    const-string v5, "anticipateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 330
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 331
    :cond_7
    const-string/jumbo v5, "overshootInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 332
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 333
    :cond_8
    const-string v5, "anticipateOvershootInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 334
    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 335
    :cond_9
    const-string v5, "bounceInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 336
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/BounceInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 338
    :cond_a
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 343
    .end local v0           #attrs:Landroid/util/AttributeSet;
    .end local v3           #name:Ljava/lang/String;
    :cond_b
    return-object v2
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;
    .locals 7
    .parameter "c"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 188
    .local v0, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 191
    .local v1, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 193
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 197
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, name:Ljava/lang/String;
    const-string v4, "layoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    .end local v0           #controller:Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #controller:Landroid/view/animation/LayoutAnimationController;
    goto :goto_0

    .line 201
    :cond_2
    const-string v4, "gridLayoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController;

    .end local v0           #controller:Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #controller:Landroid/view/animation/LayoutAnimationController;
    goto :goto_0

    .line 204
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown layout animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public static currentAnimationTimeMillis()J
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOverlayAnimation(Landroid/content/Context;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tweaks_animations"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const p1, 0x10a0074

    goto :goto_0

    :pswitch_3
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    const p1, 0x10a0058

    goto :goto_0

    :pswitch_5
    const p1, 0x10a0055

    goto :goto_0

    :pswitch_6
    const p1, 0x10a0056

    goto :goto_0

    :pswitch_7
    const p1, 0x10a0057

    goto :goto_0

    :pswitch_8
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_9
    const p1, 0x10a005c

    goto :goto_0

    :pswitch_a
    const p1, 0x10a0059

    goto :goto_0

    :pswitch_b
    const p1, 0x10a005a

    goto :goto_0

    :pswitch_c
    const p1, 0x10a005b

    goto :goto_0

    :pswitch_d
    packed-switch v0, :pswitch_data_4

    goto :goto_0

    :pswitch_e
    const p1, 0x10a0060

    goto :goto_0

    :pswitch_f
    const p1, 0x10a005d

    goto :goto_0

    :pswitch_10
    const p1, 0x10a005e

    goto :goto_0

    :pswitch_11
    const p1, 0x10a005f

    goto :goto_0

    :pswitch_12
    packed-switch v0, :pswitch_data_5

    goto :goto_0

    :pswitch_13
    const p1, 0x10a0064

    goto :goto_0

    :pswitch_14
    const p1, 0x10a0061

    goto :goto_0

    :pswitch_15
    const p1, 0x10a0062

    goto :goto_0

    :pswitch_16
    const p1, 0x10a0063

    goto :goto_0

    :pswitch_17
    packed-switch v0, :pswitch_data_6

    goto :goto_0

    :pswitch_18
    const p1, 0x10a0068

    goto :goto_0

    :pswitch_19
    const p1, 0x10a0065

    goto :goto_0

    :pswitch_1a
    const p1, 0x10a0066

    goto :goto_0

    :pswitch_1b
    const p1, 0x10a0067

    goto :goto_0

    :pswitch_1c
    packed-switch v0, :pswitch_data_7

    goto :goto_0

    :pswitch_1d
    const p1, 0x10a006c

    goto :goto_0

    :pswitch_1e
    const p1, 0x10a0069

    goto :goto_0

    :pswitch_1f
    const p1, 0x10a006a

    goto :goto_0

    :pswitch_20
    const p1, 0x10a006b

    goto/16 :goto_0

    :pswitch_21
    packed-switch v0, :pswitch_data_8

    goto/16 :goto_0

    :pswitch_22
    const p1, 0x10a0070

    goto/16 :goto_0

    :pswitch_23
    const p1, 0x10a006d

    goto/16 :goto_0

    :pswitch_24
    const p1, 0x10a006e

    goto/16 :goto_0

    :pswitch_25
    const p1, 0x10a006f

    goto/16 :goto_0

    :pswitch_26
    const p1, 0x10a0071

    goto/16 :goto_0

    :pswitch_27
    const p1, 0x10a0072

    goto/16 :goto_0

    :pswitch_28
    const p1, 0x10a0073

    goto/16 :goto_0

    :pswitch_29
    packed-switch v0, :pswitch_data_9

    goto/16 :goto_0

    :pswitch_2a
    const p1, 0x10a0078

    goto/16 :goto_0

    :pswitch_2b
    const p1, 0x10a0075

    goto/16 :goto_0

    :pswitch_2c
    const p1, 0x10a0076

    goto/16 :goto_0

    :pswitch_2d
    const p1, 0x10a0077

    goto/16 :goto_0

    :pswitch_2e
    packed-switch v0, :pswitch_data_a

    goto/16 :goto_0

    :pswitch_2f
    const p1, 0x10a007c

    goto/16 :goto_0

    :pswitch_30
    const p1, 0x10a0079

    goto/16 :goto_0

    :pswitch_31
    const p1, 0x10a007a

    goto/16 :goto_0

    :pswitch_32
    const p1, 0x10a007b

    goto/16 :goto_0

    :pswitch_33
    packed-switch v0, :pswitch_data_b

    goto/16 :goto_0

    :pswitch_34
    const p1, 0x10a0084

    goto/16 :goto_0

    :pswitch_35
    const p1, 0x10a007d

    goto/16 :goto_0

    :pswitch_36
    const p1, 0x10a007e

    goto/16 :goto_0

    :pswitch_37
    const p1, 0x10a007f

    goto/16 :goto_0

    :pswitch_38
    packed-switch v0, :pswitch_data_c

    goto/16 :goto_0

    :pswitch_39
    const p1, 0x10a0083

    goto/16 :goto_0

    :pswitch_3a
    const p1, 0x10a0080

    goto/16 :goto_0

    :pswitch_3b
    const p1, 0x10a0081

    goto/16 :goto_0

    :pswitch_3c
    const p1, 0x10a0082

    goto/16 :goto_0

    :pswitch_3d
    packed-switch v0, :pswitch_data_d

    goto/16 :goto_0

    :pswitch_3e
    const p1, 0x10a0088

    goto/16 :goto_0

    :pswitch_3f
    const p1, 0x10a0085

    goto/16 :goto_0

    :pswitch_40
    const p1, 0x10a0086

    goto/16 :goto_0

    :pswitch_41
    const p1, 0x10a0087

    goto/16 :goto_0

    :pswitch_42
    packed-switch v0, :pswitch_data_e

    goto/16 :goto_0

    :pswitch_43
    const p1, 0x10a008c

    goto/16 :goto_0

    :pswitch_44
    const p1, 0x10a0089

    goto/16 :goto_0

    :pswitch_45
    const p1, 0x10a008a

    goto/16 :goto_0

    :pswitch_46
    const p1, 0x10a008b

    goto/16 :goto_0

    :pswitch_47
    packed-switch v0, :pswitch_data_f

    goto/16 :goto_0

    :pswitch_48
    const p1, 0x10a0090

    goto/16 :goto_0

    :pswitch_49
    const p1, 0x10a008d

    goto/16 :goto_0

    :pswitch_4a
    const p1, 0x10a008e

    goto/16 :goto_0

    :pswitch_4b
    const p1, 0x10a008f

    goto/16 :goto_0

    :pswitch_4c
    packed-switch v0, :pswitch_data_10

    goto/16 :goto_0

    :pswitch_4d
    const p1, 0x10a0094

    goto/16 :goto_0

    :pswitch_4e
    const p1, 0x10a0091

    goto/16 :goto_0

    :pswitch_4f
    const p1, 0x10a0092

    goto/16 :goto_0

    :pswitch_50
    const p1, 0x10a0093

    goto/16 :goto_0

    :pswitch_51
    packed-switch v0, :pswitch_data_11

    goto/16 :goto_0

    :pswitch_52
    const p1, 0x10a0098

    goto/16 :goto_0

    :pswitch_53
    const p1, 0x10a0095

    goto/16 :goto_0

    :pswitch_54
    const p1, 0x10a0096

    goto/16 :goto_0

    :pswitch_55
    const p1, 0x10a0097

    goto/16 :goto_0

    :pswitch_56
    packed-switch v0, :pswitch_data_12

    goto/16 :goto_0

    :pswitch_57
    const p1, 0x10a009c

    goto/16 :goto_0

    :pswitch_58
    const p1, 0x10a0099

    goto/16 :goto_0

    :pswitch_59
    const p1, 0x10a009a

    goto/16 :goto_0

    :pswitch_5a
    const p1, 0x10a009b

    goto/16 :goto_0

    :pswitch_5b
    packed-switch v0, :pswitch_data_13

    goto/16 :goto_0

    :pswitch_5c
    const p1, 0x10a00a0

    goto/16 :goto_0

    :pswitch_5d
    const p1, 0x10a009d

    goto/16 :goto_0

    :pswitch_5e
    const p1, 0x10a009e

    goto/16 :goto_0

    :pswitch_5f
    const p1, 0x10a009f

    goto/16 :goto_0

    :pswitch_60
    packed-switch v0, :pswitch_data_14

    goto/16 :goto_0

    :pswitch_61
    const p1, 0x10a00a4

    goto/16 :goto_0

    :pswitch_62
    const p1, 0x10a00a1

    goto/16 :goto_0

    :pswitch_63
    const p1, 0x10a00a2

    goto/16 :goto_0

    :pswitch_64
    const p1, 0x10a00a3

    goto/16 :goto_0

    :pswitch_65
    packed-switch v0, :pswitch_data_15

    goto/16 :goto_0

    :pswitch_66
    const p1, 0x10a00a8

    goto/16 :goto_0

    :pswitch_67
    const p1, 0x10a00a5

    goto/16 :goto_0

    :pswitch_68
    const p1, 0x10a00a6

    goto/16 :goto_0

    :pswitch_69
    const p1, 0x10a00a7

    goto/16 :goto_0

    :pswitch_6a
    packed-switch v0, :pswitch_data_16

    goto/16 :goto_0

    :pswitch_6b
    const p1, 0x10a00ac

    goto/16 :goto_0

    :pswitch_6c
    const p1, 0x10a00a9

    goto/16 :goto_0

    :pswitch_6d
    const p1, 0x10a00aa

    goto/16 :goto_0

    :pswitch_6e
    const p1, 0x10a00ab

    goto/16 :goto_0

    :pswitch_6f
    packed-switch v0, :pswitch_data_17

    goto/16 :goto_0

    :pswitch_70
    const p1, 0x10a00b0

    goto/16 :goto_0

    :pswitch_71
    const p1, 0x10a00ad

    goto/16 :goto_0

    :pswitch_72
    const p1, 0x10a00ae

    goto/16 :goto_0

    :pswitch_73
    const p1, 0x10a00af

    goto/16 :goto_0

    :pswitch_74
    packed-switch v0, :pswitch_data_18

    goto/16 :goto_0

    :pswitch_75
    const p1, 0x10a00b4

    goto/16 :goto_0

    :pswitch_76
    const p1, 0x10a00b1

    goto/16 :goto_0

    :pswitch_77
    const p1, 0x10a00b2

    goto/16 :goto_0

    :pswitch_78
    const p1, 0x10a00b3

    goto/16 :goto_0

    :pswitch_79
    packed-switch v0, :pswitch_data_19

    goto/16 :goto_0

    :pswitch_7a
    const p1, 0x10a00b8

    goto/16 :goto_0

    :pswitch_7b
    const p1, 0x10a00b5

    goto/16 :goto_0

    :pswitch_7c
    const p1, 0x10a00b6

    goto/16 :goto_0

    :pswitch_7d
    const p1, 0x10a00b7

    goto/16 :goto_0

    :pswitch_7e
    packed-switch v0, :pswitch_data_1a

    goto/16 :goto_0

    :pswitch_7f
    const p1, 0x10a00bc

    goto/16 :goto_0

    :pswitch_80
    const p1, 0x10a00b9

    goto/16 :goto_0

    :pswitch_81
    const p1, 0x10a00ba

    goto/16 :goto_0

    :pswitch_82
    const p1, 0x10a00bb

    goto/16 :goto_0

    :pswitch_83
    packed-switch v0, :pswitch_data_1b

    goto/16 :goto_0

    :pswitch_84
    const p1, 0x10a00c0

    goto/16 :goto_0

    :pswitch_85
    const p1, 0x10a00bd

    goto/16 :goto_0

    :pswitch_86
    const p1, 0x10a00be

    goto/16 :goto_0

    :pswitch_87
    const p1, 0x10a00bf

    goto/16 :goto_0

    :pswitch_88
    packed-switch v0, :pswitch_data_1c

    goto/16 :goto_0

    :pswitch_89
    const p1, 0x10a00c4

    goto/16 :goto_0

    :pswitch_8a
    const p1, 0x10a00c1

    goto/16 :goto_0

    :pswitch_8b
    const p1, 0x10a00c2

    goto/16 :goto_0

    :pswitch_8c
    const p1, 0x10a00c3

    goto/16 :goto_0

    :pswitch_8d
    packed-switch v0, :pswitch_data_1d

    goto/16 :goto_0

    :pswitch_8e
    const p1, 0x10a00c8

    goto/16 :goto_0

    :pswitch_8f
    const p1, 0x10a00c5

    goto/16 :goto_0

    :pswitch_90
    const p1, 0x10a00c6

    goto/16 :goto_0

    :pswitch_91
    const p1, 0x10a00c7

    goto/16 :goto_0

    :pswitch_92
    packed-switch v0, :pswitch_data_1e

    goto/16 :goto_0

    :pswitch_93
    const p1, 0x10a00cc

    goto/16 :goto_0

    :pswitch_94
    const p1, 0x10a00c9

    goto/16 :goto_0

    :pswitch_95
    const p1, 0x10a00ca

    goto/16 :goto_0

    :pswitch_96
    const p1, 0x10a00cb

    goto/16 :goto_0

    :pswitch_97
    packed-switch v0, :pswitch_data_1f

    goto/16 :goto_0

    :pswitch_98
    const p1, 0x10a00d0

    goto/16 :goto_0

    :pswitch_99
    const p1, 0x10a00cd

    goto/16 :goto_0

    :pswitch_9a
    const p1, 0x10a00ce

    goto/16 :goto_0

    :pswitch_9b
    const p1, 0x10a00cf

    goto/16 :goto_0

    :pswitch_9c
    packed-switch v0, :pswitch_data_20

    goto/16 :goto_0

    :pswitch_9d
    const p1, 0x10a00d4

    goto/16 :goto_0

    :pswitch_9e
    const p1, 0x10a00d1

    goto/16 :goto_0

    :pswitch_9f
    const p1, 0x10a00d2

    goto/16 :goto_0

    :pswitch_a0
    const p1, 0x10a00d3

    goto/16 :goto_0

    :pswitch_a1
    packed-switch v0, :pswitch_data_21

    goto/16 :goto_0

    :pswitch_a2
    const p1, 0x10a00d8

    goto/16 :goto_0

    :pswitch_a3
    const p1, 0x10a00d5

    goto/16 :goto_0

    :pswitch_a4
    const p1, 0x10a00d6

    goto/16 :goto_0

    :pswitch_a5
    const p1, 0x10a00d7

    goto/16 :goto_0

    :pswitch_a6
    packed-switch v0, :pswitch_data_22

    goto/16 :goto_0

    :pswitch_a7
    const p1, 0x10a00dc

    goto/16 :goto_0

    :pswitch_a8
    const p1, 0x10a00d9

    goto/16 :goto_0

    :pswitch_a9
    const p1, 0x10a00da

    goto/16 :goto_0

    :pswitch_aa
    const p1, 0x10a00db

    goto/16 :goto_0

    :pswitch_ab
    packed-switch v0, :pswitch_data_23

    goto/16 :goto_0

    :pswitch_ac
    const p1, 0x10a00e0

    goto/16 :goto_0

    :pswitch_ad
    const p1, 0x10a00dd

    goto/16 :goto_0

    :pswitch_ae
    const p1, 0x10a00de

    goto/16 :goto_0

    :pswitch_af
    const p1, 0x10a00df

    goto/16 :goto_0

    :pswitch_b0
    packed-switch v0, :pswitch_data_24

    goto/16 :goto_0

    :pswitch_b1
    const p1, 0x10a00e4

    goto/16 :goto_0

    :pswitch_b2
    const p1, 0x10a00e1

    goto/16 :goto_0

    :pswitch_b3
    const p1, 0x10a00e2

    goto/16 :goto_0

    :pswitch_b4
    const p1, 0x10a00e3

    goto/16 :goto_0

    :pswitch_b5
    packed-switch v0, :pswitch_data_25

    goto/16 :goto_0

    :pswitch_b6
    const p1, 0x10a00e8

    goto/16 :goto_0

    :pswitch_b7
    const p1, 0x10a00e5

    goto/16 :goto_0

    :pswitch_b8
    const p1, 0x10a00e6

    goto/16 :goto_0

    :pswitch_b9
    const p1, 0x10a00e7

    goto/16 :goto_0

    :pswitch_ba
    packed-switch v0, :pswitch_data_26

    goto/16 :goto_0

    :pswitch_bb
    const p1, 0x10a00ec

    goto/16 :goto_0

    :pswitch_bc
    const p1, 0x10a00e9

    goto/16 :goto_0

    :pswitch_bd
    const p1, 0x10a00ea

    goto/16 :goto_0

    :pswitch_be
    const p1, 0x10a00eb

    goto/16 :goto_0

    :pswitch_bf
    packed-switch v0, :pswitch_data_27

    goto/16 :goto_0

    :pswitch_c0
    const p1, 0x10a00f4

    goto/16 :goto_0

    :pswitch_c1
    const p1, 0x10a00ed

    goto/16 :goto_0

    :pswitch_c2
    const p1, 0x10a00ee

    goto/16 :goto_0

    :pswitch_c3
    const p1, 0x10a00ef

    goto/16 :goto_0

    :pswitch_c4
    packed-switch v0, :pswitch_data_28

    goto/16 :goto_0

    :pswitch_c5
    const p1, 0x10a00f3

    goto/16 :goto_0

    :pswitch_c6
    const p1, 0x10a00f0

    goto/16 :goto_0

    :pswitch_c7
    const p1, 0x10a00f1

    goto/16 :goto_0

    :pswitch_c8
    const p1, 0x10a00f2

    goto/16 :goto_0

    :pswitch_c9
    packed-switch v0, :pswitch_data_29

    goto/16 :goto_0

    :pswitch_ca
    const p1, 0x10a00f8

    goto/16 :goto_0

    :pswitch_cb
    const p1, 0x10a00f5

    goto/16 :goto_0

    :pswitch_cc
    const p1, 0x10a00f6

    goto/16 :goto_0

    :pswitch_cd
    const p1, 0x10a00f7

    goto/16 :goto_0

    :pswitch_ce
    packed-switch v0, :pswitch_data_2a

    goto/16 :goto_0

    :pswitch_cf
    const p1, 0x10a00fc

    goto/16 :goto_0

    :pswitch_d0
    const p1, 0x10a00f9

    goto/16 :goto_0

    :pswitch_d1
    const p1, 0x10a00fa

    goto/16 :goto_0

    :pswitch_d2
    const p1, 0x10a00fb

    goto/16 :goto_0

    :pswitch_d3
    packed-switch v0, :pswitch_data_2b

    goto/16 :goto_0

    :pswitch_d4
    const p1, 0x10a0100

    goto/16 :goto_0

    :pswitch_d5
    const p1, 0x10a00fd

    goto/16 :goto_0

    :pswitch_d6
    const p1, 0x10a00fe

    goto/16 :goto_0

    :pswitch_d7
    const p1, 0x10a00ff

    goto/16 :goto_0

    :pswitch_d8
    packed-switch v0, :pswitch_data_2c

    goto/16 :goto_0

    :pswitch_d9
    const p1, 0x10a0104

    goto/16 :goto_0

    :pswitch_da
    const p1, 0x10a0101

    goto/16 :goto_0

    :pswitch_db
    const p1, 0x10a0102

    goto/16 :goto_0

    :pswitch_dc
    const p1, 0x10a0103

    goto/16 :goto_0

    :pswitch_dd
    packed-switch v0, :pswitch_data_2d

    goto/16 :goto_0

    :pswitch_de
    const p1, 0x10a0108

    goto/16 :goto_0

    :pswitch_df
    const p1, 0x10a0105

    goto/16 :goto_0

    :pswitch_e0
    const p1, 0x10a0106

    goto/16 :goto_0

    :pswitch_e1
    const p1, 0x10a0107

    goto/16 :goto_0

    :pswitch_e2
    packed-switch v0, :pswitch_data_2e

    goto/16 :goto_0

    :pswitch_e3
    const p1, 0x10a010c

    goto/16 :goto_0

    :pswitch_e4
    const p1, 0x10a0109

    goto/16 :goto_0

    :pswitch_e5
    const p1, 0x10a010a

    goto/16 :goto_0

    :pswitch_e6
    const p1, 0x10a010b

    goto/16 :goto_0

    :pswitch_e7
    packed-switch v0, :pswitch_data_2f

    goto/16 :goto_0

    :pswitch_e8
    const p1, 0x10a0110

    goto/16 :goto_0

    :pswitch_e9
    const p1, 0x10a010d

    goto/16 :goto_0

    :pswitch_ea
    const p1, 0x10a010e

    goto/16 :goto_0

    :pswitch_eb
    const p1, 0x10a010f

    goto/16 :goto_0

    :pswitch_ec
    packed-switch v0, :pswitch_data_30

    goto/16 :goto_0

    :pswitch_ed
    const p1, 0x10a0114

    goto/16 :goto_0

    :pswitch_ee
    const p1, 0x10a0111

    goto/16 :goto_0

    :pswitch_ef
    const p1, 0x10a0112

    goto/16 :goto_0

    :pswitch_f0
    const p1, 0x10a0113

    goto/16 :goto_0

    :pswitch_f1
    packed-switch v0, :pswitch_data_31

    goto/16 :goto_0

    :pswitch_f2
    const p1, 0x10a0118

    goto/16 :goto_0

    :pswitch_f3
    const p1, 0x10a0115

    goto/16 :goto_0

    :pswitch_f4
    const p1, 0x10a0116

    goto/16 :goto_0

    :pswitch_f5
    const p1, 0x10a0117

    goto/16 :goto_0

    :pswitch_f6
    packed-switch v0, :pswitch_data_32

    goto/16 :goto_0

    :pswitch_f7
    const p1, 0x10a011c

    goto/16 :goto_0

    :pswitch_f8
    const p1, 0x10a0119

    goto/16 :goto_0

    :pswitch_f9
    const p1, 0x10a011a

    goto/16 :goto_0

    :pswitch_fa
    const p1, 0x10a011b

    goto/16 :goto_0

    :pswitch_fb
    packed-switch v0, :pswitch_data_33

    goto/16 :goto_0

    :pswitch_fc
    const p1, 0x10a0120

    goto/16 :goto_0

    :pswitch_fd
    const p1, 0x10a011d

    goto/16 :goto_0

    :pswitch_fe
    const p1, 0x10a011e

    goto/16 :goto_0

    :pswitch_ff
    const p1, 0x10a011f

    goto/16 :goto_0

    :pswitch_100
    packed-switch v0, :pswitch_data_34

    goto/16 :goto_0

    :pswitch_101
    const p1, 0x10a0124

    goto/16 :goto_0

    :pswitch_102
    const p1, 0x10a0121

    goto/16 :goto_0

    :pswitch_103
    const p1, 0x10a0122

    goto/16 :goto_0

    :pswitch_104
    const p1, 0x10a0123

    goto/16 :goto_0

    :pswitch_105
    packed-switch v0, :pswitch_data_35

    goto/16 :goto_0

    :pswitch_106
    const p1, 0x10a0128

    goto/16 :goto_0

    :pswitch_107
    const p1, 0x10a0125

    goto/16 :goto_0

    :pswitch_108
    const p1, 0x10a0126

    goto/16 :goto_0

    :pswitch_109
    const p1, 0x10a0127

    goto/16 :goto_0

    :pswitch_10a
    packed-switch v0, :pswitch_data_36

    goto/16 :goto_0

    :pswitch_10b
    const p1, 0x10a012c

    goto/16 :goto_0

    :pswitch_10c
    const p1, 0x10a0129

    goto/16 :goto_0

    :pswitch_10d
    const p1, 0x10a012a

    goto/16 :goto_0

    :pswitch_10e
    const p1, 0x10a012b

    goto/16 :goto_0

    :pswitch_10f
    packed-switch v0, :pswitch_data_37

    goto/16 :goto_0

    :pswitch_110
    const p1, 0x10a0130

    goto/16 :goto_0

    :pswitch_111
    const p1, 0x10a012d

    goto/16 :goto_0

    :pswitch_112
    const p1, 0x10a012e

    goto/16 :goto_0

    :pswitch_113
    const p1, 0x10a012f

    goto/16 :goto_0

    :pswitch_114
    packed-switch v0, :pswitch_data_38

    goto/16 :goto_0

    :pswitch_115
    const p1, 0x10a0134

    goto/16 :goto_0

    :pswitch_116
    const p1, 0x10a0131

    goto/16 :goto_0

    :pswitch_117
    const p1, 0x10a0132

    goto/16 :goto_0

    :pswitch_118
    const p1, 0x10a0133

    goto/16 :goto_0

    :pswitch_119
    packed-switch v0, :pswitch_data_39

    goto/16 :goto_0

    :pswitch_11a
    const p1, 0x10a0138

    goto/16 :goto_0

    :pswitch_11b
    const p1, 0x10a0135

    goto/16 :goto_0

    :pswitch_11c
    const p1, 0x10a0136

    goto/16 :goto_0

    :pswitch_11d
    const p1, 0x10a0137

    goto/16 :goto_0

    :pswitch_11e
    packed-switch v0, :pswitch_data_3a

    goto/16 :goto_0

    :pswitch_11f
    const p1, 0x10a013c

    goto/16 :goto_0

    :pswitch_120
    const p1, 0x10a0139

    goto/16 :goto_0

    :pswitch_121
    const p1, 0x10a013a

    goto/16 :goto_0

    :pswitch_122
    const p1, 0x10a013b

    goto/16 :goto_0

    :pswitch_123
    packed-switch v0, :pswitch_data_3b

    goto/16 :goto_0

    :pswitch_124
    const p1, 0x10a0140

    goto/16 :goto_0

    :pswitch_125
    const p1, 0x10a013d

    goto/16 :goto_0

    :pswitch_126
    const p1, 0x10a013e

    goto/16 :goto_0

    :pswitch_127
    const p1, 0x10a013f

    goto/16 :goto_0

    :pswitch_128
    packed-switch v0, :pswitch_data_3c

    goto/16 :goto_0

    :pswitch_129
    const p1, 0x10a0144

    goto/16 :goto_0

    :pswitch_12a
    const p1, 0x10a0141

    goto/16 :goto_0

    :pswitch_12b
    const p1, 0x10a0142

    goto/16 :goto_0

    :pswitch_12c
    const p1, 0x10a0143

    goto/16 :goto_0

    :pswitch_12d
    packed-switch v0, :pswitch_data_3d

    goto/16 :goto_0

    :pswitch_12e
    const p1, 0x10a0148

    goto/16 :goto_0

    :pswitch_12f
    const p1, 0x10a0145

    goto/16 :goto_0

    :pswitch_130
    const p1, 0x10a0146

    goto/16 :goto_0

    :pswitch_131
    const p1, 0x10a0147

    goto/16 :goto_0

    :pswitch_132
    packed-switch v0, :pswitch_data_3e

    goto/16 :goto_0

    :pswitch_133
    const p1, 0x10a014c

    goto/16 :goto_0

    :pswitch_134
    const p1, 0x10a0149

    goto/16 :goto_0

    :pswitch_135
    const p1, 0x10a014a

    goto/16 :goto_0

    :pswitch_136
    const p1, 0x10a014b

    goto/16 :goto_0

    :pswitch_137
    packed-switch v0, :pswitch_data_3f

    goto/16 :goto_0

    :pswitch_138
    const p1, 0x10a0150

    goto/16 :goto_0

    :pswitch_139
    const p1, 0x10a014d

    goto/16 :goto_0

    :pswitch_13a
    const p1, 0x10a014e

    goto/16 :goto_0

    :pswitch_13b
    const p1, 0x10a014f

    goto/16 :goto_0

    :pswitch_13c
    packed-switch v0, :pswitch_data_40

    goto/16 :goto_0

    :pswitch_13d
    const p1, 0x10a0154

    goto/16 :goto_0

    :pswitch_13e
    const p1, 0x10a0151

    goto/16 :goto_0

    :pswitch_13f
    const p1, 0x10a0152

    goto/16 :goto_0

    :pswitch_140
    const p1, 0x10a0153

    goto/16 :goto_0

    :pswitch_141
    packed-switch v0, :pswitch_data_41

    goto/16 :goto_0

    :pswitch_142
    const p1, 0x10a0158

    goto/16 :goto_0

    :pswitch_143
    const p1, 0x10a0155

    goto/16 :goto_0

    :pswitch_144
    const p1, 0x10a0156

    goto/16 :goto_0

    :pswitch_145
    const p1, 0x10a0157

    goto/16 :goto_0

    :pswitch_146
    packed-switch v0, :pswitch_data_42

    goto/16 :goto_0

    :pswitch_147
    const p1, 0x10a015c

    goto/16 :goto_0

    :pswitch_148
    const p1, 0x10a0159

    goto/16 :goto_0

    :pswitch_149
    const p1, 0x10a015a

    goto/16 :goto_0

    :pswitch_14a
    const p1, 0x10a015b

    goto/16 :goto_0

    :pswitch_14b
    packed-switch v0, :pswitch_data_43

    goto/16 :goto_0

    :pswitch_14c
    const p1, 0x10a0160

    goto/16 :goto_0

    :pswitch_14d
    const p1, 0x10a015d

    goto/16 :goto_0

    :pswitch_14e
    const p1, 0x10a015e

    goto/16 :goto_0

    :pswitch_14f
    const p1, 0x10a015f

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10a0000
        :pswitch_1
        :pswitch_29
        :pswitch_ce
        :pswitch_e7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_1c
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_2e
        :pswitch_38
        :pswitch_3d
        :pswitch_42
        :pswitch_47
        :pswitch_4c
        :pswitch_51
        :pswitch_56
        :pswitch_5b
        :pswitch_60
        :pswitch_65
        :pswitch_6a
        :pswitch_6f
        :pswitch_74
        :pswitch_0
        :pswitch_79
        :pswitch_0
        :pswitch_7e
        :pswitch_83
        :pswitch_88
        :pswitch_8d
        :pswitch_0
        :pswitch_0
        :pswitch_92
        :pswitch_97
        :pswitch_9c
        :pswitch_a1
        :pswitch_a6
        :pswitch_ab
        :pswitch_b0
        :pswitch_b5
        :pswitch_bf
        :pswitch_ba
        :pswitch_c4
        :pswitch_c9
        :pswitch_d3
        :pswitch_d8
        :pswitch_dd
        :pswitch_e2
        :pswitch_ec
        :pswitch_f1
        :pswitch_f6
        :pswitch_fb
        :pswitch_100
        :pswitch_105
        :pswitch_10a
        :pswitch_10f
        :pswitch_114
        :pswitch_119
        :pswitch_11e
        :pswitch_123
        :pswitch_128
        :pswitch_12d
        :pswitch_132
        :pswitch_137
        :pswitch_13c
        :pswitch_141
        :pswitch_146
        :pswitch_14b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_26
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1e
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_22
        :pswitch_23
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2b
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_30
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_34
        :pswitch_35
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_3a
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3f
        :pswitch_41
        :pswitch_40
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_43
        :pswitch_44
        :pswitch_46
        :pswitch_45
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x1
        :pswitch_48
        :pswitch_49
        :pswitch_4b
        :pswitch_4a
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4e
        :pswitch_50
        :pswitch_4f
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x1
        :pswitch_52
        :pswitch_53
        :pswitch_55
        :pswitch_54
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_57
        :pswitch_58
        :pswitch_5a
        :pswitch_59
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5d
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_61
        :pswitch_62
        :pswitch_64
        :pswitch_63
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x1
        :pswitch_66
        :pswitch_67
        :pswitch_69
        :pswitch_68
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_6c
        :pswitch_6e
        :pswitch_6d
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x1
        :pswitch_70
        :pswitch_71
        :pswitch_73
        :pswitch_72
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_75
        :pswitch_76
        :pswitch_78
        :pswitch_77
    .end packed-switch

    :pswitch_data_19
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_7b
        :pswitch_7d
        :pswitch_7c
    .end packed-switch

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_80
        :pswitch_82
        :pswitch_81
    .end packed-switch

    :pswitch_data_1b
    .packed-switch 0x1
        :pswitch_84
        :pswitch_85
        :pswitch_87
        :pswitch_86
    .end packed-switch

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_89
        :pswitch_8a
        :pswitch_8c
        :pswitch_8b
    .end packed-switch

    :pswitch_data_1d
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_8f
        :pswitch_91
        :pswitch_90
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_93
        :pswitch_94
        :pswitch_96
        :pswitch_95
    .end packed-switch

    :pswitch_data_1f
    .packed-switch 0x1
        :pswitch_98
        :pswitch_99
        :pswitch_9b
        :pswitch_9a
    .end packed-switch

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_9e
        :pswitch_a0
        :pswitch_9f
    .end packed-switch

    :pswitch_data_21
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a5
        :pswitch_a4
    .end packed-switch

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_a8
        :pswitch_aa
        :pswitch_a9
    .end packed-switch

    :pswitch_data_23
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_ad
        :pswitch_af
        :pswitch_ae
    .end packed-switch

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_b2
        :pswitch_b4
        :pswitch_b3
    .end packed-switch

    :pswitch_data_25
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_b7
        :pswitch_b9
        :pswitch_b8
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_bc
        :pswitch_be
        :pswitch_bd
    .end packed-switch

    :pswitch_data_27
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_c1
        :pswitch_c3
        :pswitch_c2
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_c6
        :pswitch_c8
        :pswitch_c7
    .end packed-switch

    :pswitch_data_29
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_cb
        :pswitch_cd
        :pswitch_cc
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_d0
        :pswitch_d2
        :pswitch_d1
    .end packed-switch

    :pswitch_data_2b
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_d5
        :pswitch_d7
        :pswitch_d6
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_da
        :pswitch_dc
        :pswitch_db
    .end packed-switch

    :pswitch_data_2d
    .packed-switch 0x1
        :pswitch_de
        :pswitch_df
        :pswitch_e1
        :pswitch_e0
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_e4
        :pswitch_e6
        :pswitch_e5
    .end packed-switch

    :pswitch_data_2f
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_e9
        :pswitch_eb
        :pswitch_ea
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_ed
        :pswitch_ee
        :pswitch_f0
        :pswitch_ef
    .end packed-switch

    :pswitch_data_31
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_f3
        :pswitch_f5
        :pswitch_f4
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_f7
        :pswitch_f8
        :pswitch_fa
        :pswitch_f9
    .end packed-switch

    :pswitch_data_33
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_fd
        :pswitch_ff
        :pswitch_fe
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_101
        :pswitch_102
        :pswitch_104
        :pswitch_103
    .end packed-switch

    :pswitch_data_35
    .packed-switch 0x1
        :pswitch_106
        :pswitch_107
        :pswitch_109
        :pswitch_108
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_10b
        :pswitch_10c
        :pswitch_10e
        :pswitch_10d
    .end packed-switch

    :pswitch_data_37
    .packed-switch 0x1
        :pswitch_110
        :pswitch_111
        :pswitch_113
        :pswitch_112
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_115
        :pswitch_116
        :pswitch_118
        :pswitch_117
    .end packed-switch

    :pswitch_data_39
    .packed-switch 0x1
        :pswitch_11a
        :pswitch_11b
        :pswitch_11d
        :pswitch_11c
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_11f
        :pswitch_120
        :pswitch_122
        :pswitch_121
    .end packed-switch

    :pswitch_data_3b
    .packed-switch 0x1
        :pswitch_124
        :pswitch_125
        :pswitch_127
        :pswitch_126
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_129
        :pswitch_12a
        :pswitch_12c
        :pswitch_12b
    .end packed-switch

    :pswitch_data_3d
    .packed-switch 0x1
        :pswitch_12e
        :pswitch_12f
        :pswitch_131
        :pswitch_130
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_133
        :pswitch_134
        :pswitch_136
        :pswitch_135
    .end packed-switch

    :pswitch_data_3f
    .packed-switch 0x1
        :pswitch_138
        :pswitch_139
        :pswitch_13b
        :pswitch_13a
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_13d
        :pswitch_13e
        :pswitch_140
        :pswitch_13f
    .end packed-switch

    :pswitch_data_41
    .packed-switch 0x1
        :pswitch_142
        :pswitch_143
        :pswitch_145
        :pswitch_144
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_147
        :pswitch_148
        :pswitch_14a
        :pswitch_149
    .end packed-switch

    :pswitch_data_43
    .packed-switch 0x1
        :pswitch_14c
        :pswitch_14d
        :pswitch_14f
        :pswitch_14e
    .end packed-switch
.end method

.method public static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->getOverlayAnimation(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 3

    if-eqz p1, :cond_0

    const v1, 0x10a0002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-object v0

    :cond_0
    const v1, 0x10a003a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 3

    const v1, 0x10a0039

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-object v0
.end method

.method public static makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 3

    if-eqz p1, :cond_0

    const v1, 0x10a0003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-object v0

    :cond_0
    const v1, 0x10a003d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method
