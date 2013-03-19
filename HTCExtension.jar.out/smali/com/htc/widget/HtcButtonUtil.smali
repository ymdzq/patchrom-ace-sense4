.class public Lcom/htc/widget/HtcButtonUtil;
.super Ljava/lang/Object;
.source "HtcButtonUtil.java"


# static fields
.field static final ANIMATION_MODE_MULTIPLY:I = 0x1

.field static final ANIMATION_MODE_SCALE:I = 0x0

.field static final ANIMATION_MODE_SCREEN:I = 0x2

.field public static final BACKGROUND_MODE_AUTOMOTIVEDARK:I = 0x2

.field public static final BACKGROUND_MODE_AUTOMOTIVELIGHT:I = 0x3

.field public static final BACKGROUND_MODE_DARK:I = 0x1

.field public static final BACKGROUND_MODE_LIGHT:I = 0x0

.field static final BASE_ALPHA:I = 0xff

.field public static final BTNASSET_COMMON_ADD_ON:I = 0x11

.field public static final BTNASSET_COMMON_ADD_REST:I = 0x12

.field public static final BTNASSET_COMMON_BUTTON_OUTER:I = 0x0

.field public static final BTNASSET_COMMON_BUTTON_PRESSED:I = 0x1

.field public static final BTNASSET_COMMON_BUTTON_REST:I = 0x2

.field public static final BTNASSET_COMMON_B_ADD_ON:I = 0x13

.field public static final BTNASSET_COMMON_B_ADD_REST:I = 0x14

.field public static final BTNASSET_COMMON_B_BUTTON_OUTER:I = 0x3

.field public static final BTNASSET_COMMON_B_BUTTON_PRESSED:I = 0x4

.field public static final BTNASSET_COMMON_B_BUTTON_REST:I = 0x5

.field public static final BTNASSET_COMMON_B_CIRCLE_OUTER:I = 0x9

.field public static final BTNASSET_COMMON_B_CIRCLE_PRESSED:I = 0xa

.field public static final BTNASSET_COMMON_B_CIRCLE_REST:I = 0xb

.field public static final BTNASSET_COMMON_CHECKBOX_ON:I = 0xc

.field public static final BTNASSET_COMMON_CHECKBOX_PARTIAL:I = 0xe

.field public static final BTNASSET_COMMON_CHECKBOX_REST:I = 0xd

.field public static final BTNASSET_COMMON_CIRCLE_OUTER:I = 0x6

.field public static final BTNASSET_COMMON_CIRCLE_PRESSED:I = 0x7

.field public static final BTNASSET_COMMON_CIRCLE_REST:I = 0x8

.field public static final BTNASSET_COMMON_CLOSE_ON:I = 0x17

.field public static final BTNASSET_COMMON_CLOSE_REST:I = 0x18

.field public static final BTNASSET_COMMON_DELETE_ON:I = 0x15

.field public static final BTNASSET_COMMON_DELETE_REST:I = 0x16

.field public static final BTNASSET_COMMON_FLAG_ON:I = 0x22

.field public static final BTNASSET_COMMON_FLAG_OUTER:I = -0x1

.field public static final BTNASSET_COMMON_FLAG_PRESSED:I = -0x1

.field public static final BTNASSET_COMMON_FLAG_REST:I = 0x21

.field public static final BTNASSET_COMMON_RADIOBUTTON_ON:I = 0xf

.field public static final BTNASSET_COMMON_RADIOBUTTON_REST:I = 0x10

.field public static final BTNASSET_COMMON_RATING_ON:I = 0x1f

.field public static final BTNASSET_COMMON_RATING_OUTER:I = 0x19

.field public static final BTNASSET_COMMON_RATING_PRESSED:I = 0x1a

.field public static final BTNASSET_COMMON_RATING_REST:I = 0x1b

.field public static final BTNASSET_COMMON_RATING_SMALL_ON:I = 0x20

.field public static final BTNASSET_COMMON_RATING_SMALL_OUTER:I = 0x1c

.field public static final BTNASSET_COMMON_RATING_SMALL_PRESSED:I = 0x1d

.field public static final BTNASSET_COMMON_RATING_SMALL_REST:I = 0x1e

.field static final DISABLE_ALPHA:F = 0.4f

.field public static final EXT_ANIMATE_NONE:I = 0x0

.field public static final EXT_ANIMATE_NORIMMULTIPLY:I = 0x1

.field static final MAX_ALPHA:I = 0xff

.field static final MAX_SCALE:F = 1.0f

.field static final MIN_ALPHA:I = 0x0

.field static final MIN_SCALE:F = 0.9f

.field static final VISIBLE_ALPHA:F = 1.0f

.field private static drawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sIsAnimationEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/widget/HtcButtonUtil;->sIsAnimationEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/widget/HtcButtonUtil;->drawables:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[HtcButtonUtil.getButtonDrawable] Invalid index passed in"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[HtcButtonUtil.getButtonDrawable] Null context passed in"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/htc/widget/HtcButtonUtil;->loadSkinableResources(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSkinResourceId(I)I
    .locals 1

    const/high16 v0, -0x8000

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x208001a

    goto :goto_0

    :pswitch_1
    const v0, 0x208001b

    goto :goto_0

    :pswitch_2
    const v0, 0x208001c

    goto :goto_0

    :pswitch_3
    const v0, 0x2080004

    goto :goto_0

    :pswitch_4
    const v0, 0x2080005

    goto :goto_0

    :pswitch_5
    const v0, 0x2080006

    goto :goto_0

    :pswitch_6
    const v0, 0x208001f

    goto :goto_0

    :pswitch_7
    const v0, 0x2080020

    goto :goto_0

    :pswitch_8
    const v0, 0x2080021

    goto :goto_0

    :pswitch_9
    const v0, 0x2080007

    goto :goto_0

    :pswitch_a
    const v0, 0x2080008

    goto :goto_0

    :pswitch_b
    const v0, 0x2080009

    goto :goto_0

    :pswitch_c
    const v0, 0x208001d

    goto :goto_0

    :pswitch_d
    const v0, 0x208001e

    goto :goto_0

    :pswitch_e
    const v0, 0x208015c

    goto :goto_0

    :pswitch_f
    const v0, 0x2080192

    goto :goto_0

    :pswitch_10
    const v0, 0x2080193

    goto :goto_0

    :pswitch_11
    const v0, 0x208001a

    goto :goto_0

    :pswitch_12
    const v0, 0x2080147

    goto :goto_0

    :pswitch_13
    const v0, 0x2080002

    goto :goto_0

    :pswitch_14
    const v0, 0x2080003

    goto :goto_0

    :pswitch_15
    const v0, 0x2080161

    goto :goto_0

    :pswitch_16
    const v0, 0x2080162

    goto :goto_0

    :pswitch_17
    const v0, 0x208015d

    goto :goto_0

    :pswitch_18
    const v0, 0x208015e

    goto :goto_0

    :pswitch_19
    const v0, 0x2080030

    goto :goto_0

    :pswitch_1a
    const v0, 0x2080031

    goto :goto_0

    :pswitch_1b
    const v0, 0x2080032

    goto :goto_0

    :pswitch_1c
    const v0, 0x2080195

    goto :goto_0

    :pswitch_1d
    const v0, 0x2080196

    goto :goto_0

    :pswitch_1e
    const v0, 0x2080197

    goto :goto_0

    :pswitch_1f
    const v0, 0x208002f

    goto :goto_0

    :pswitch_20
    const v0, 0x2080194

    goto/16 :goto_0

    :pswitch_21
    const v0, 0x2080171

    goto/16 :goto_0

    :pswitch_22
    const v0, 0x208016e

    goto/16 :goto_0

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
    .end packed-switch
.end method

.method static getEnableAnimation()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/htc/widget/HtcButtonUtil;->sIsAnimationEnabled:Z

    return v0
.end method

.method static getMultiplyColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 43
    const-string v2, "multiply_color"

    const/high16 v3, 0x206

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, id:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method static getMultiplyColor(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 1

    invoke-static {p0}, Lcom/htc/widget/HtcButtonUtil;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static getMultiplyTextColor(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method static getOverlayColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 49
    const-string v2, "overlay_color"

    const v3, 0x2060003

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, id:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 51
    .local v0, color:I
    return v0
.end method

.method static getOverlayColor(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 1

    invoke-static {p0}, Lcom/htc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static loadSkinableResources(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p3}, Lcom/htc/widget/HtcButtonUtil;->getDefaultSkinResourceId(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static setEnableAnimation(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 59
    sput-boolean p0, Lcom/htc/widget/HtcButtonUtil;->sIsAnimationEnabled:Z

    .line 60
    return-void
.end method
