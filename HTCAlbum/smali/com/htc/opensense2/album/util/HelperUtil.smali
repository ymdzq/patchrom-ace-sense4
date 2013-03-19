.class public Lcom/htc/opensense2/album/util/HelperUtil;
.super Ljava/lang/Object;
.source "HelperUtil.java"


# static fields
.field private static final CHAR_BLANK:Ljava/lang/CharSequence; = null

.field private static final CHAR_BREAK:Ljava/lang/CharSequence; = null

.field private static COLORSPAN_1:Landroid/text/style/ForegroundColorSpan; = null

.field private static COLORSPAN_2:Landroid/text/style/ForegroundColorSpan; = null

.field public static final FB_USER_ICON_CONFIG:Ljava/lang/String; = "com.facebook.theusericon"

.field public static final FB_USER_ID_CONFIG:Ljava/lang/String; = "com.facebook.theuserid"

.field public static final FB_USER_NAME_CONFIG:Ljava/lang/String; = "com.facebook.theusername"

.field private static LOG_TAG:Ljava/lang/String;

.field private static final STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

.field private static final STYLESPAN_ITALIC:Landroid/text/style/StyleSpan;

.field private static final builder:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/htc/opensense2/album/util/HelperUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_ITALIC:Landroid/text/style/StyleSpan;

    const-string v0, " "

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    const-string v0, "\n"

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 6

    const/16 v5, 0x21

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_AllHyperLinkColor(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_1

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x333334

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p3, :cond_2

    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatedDateTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_ITALIC:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatedPhotoContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/lang/CharSequence;
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    if-nez v4, :cond_0

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_AllHyperLinkColor(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    :cond_0
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    if-nez v4, :cond_1

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x333334

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    :cond_1
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sget-object v7, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v4, 0x1

    if-ne v4, p5, :cond_2

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2060002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sget-object v7, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_5
    if-eqz p4, :cond_6

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p0, p4, v4}, Lcom/htc/opensense2/album/util/HelperUtil;->getImageSpan(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/text/style/ImageSpan;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatedTagDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9

    const/16 v8, 0x21

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v7, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v1, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static getImageSpan(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/text/style/ImageSpan;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method private static getImageSpan(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/text/style/ImageSpan;
    .locals 1

    const/4 v0, 0x0

    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method public static getResourceBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.socialnetwork.facebook"

    const-string v3, "com.htc.socialnetwork.facebook.FacebookProfileTab"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.facebook.theuserid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.facebook.theusername"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.facebook.theusericon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    move-object v0, p0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
