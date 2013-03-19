.class public Lcom/htc/album/TagUtils/TagViewManager;
.super Landroid/widget/RelativeLayout;
.source "TagViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TagUtils/TagViewManager$TagFrame;,
        Lcom/htc/album/TagUtils/TagViewManager$TagView;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TagViewManager"

.field public static TAG_FONT_STYLE:I

.field public static mTagFontSize:I


# instance fields
.field private TAG_TEXT_OFFSET_WIDTH:I

.field private mContext:Landroid/content/Context;

.field private mEnableTagFrame:Z

.field private mFontH:I

.field private mPhotoH:I

.field private mPhotoW:I

.field private mPhotoX:I

.field private mPhotoY:I

.field mTagClickListener:Landroid/view/View$OnClickListener;

.field private mTagDisplayMode:I

.field private mTagGroup:Landroid/widget/RelativeLayout;

.field private final mTagIntervalH:I

.field public mTagList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTagLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTagPercent:F

.field mTagTouchListener:Landroid/view/View$OnTouchListener;

.field public mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x2030001

    sput v0, Lcom/htc/album/TagUtils/TagViewManager;->TAG_FONT_STYLE:I

    const/4 v0, 0x0

    sput v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagFontSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagPercent:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagIntervalH:I

    iput-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    iput-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagList:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    iput-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagClickListener:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    iput-boolean v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TagUtils/TagViewManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    return v0
.end method

.method public static measureDefaultStringHeight(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/htc/album/TagUtils/TagViewManager;->TAG_FONT_STYLE:I

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    :cond_0
    return v1
.end method

.method public static measureResourceHeight(Landroid/content/Context;I)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v2, v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method public static measureResourceWidth(Landroid/content/Context;I)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0
.end method

.method public static measureRimBtnHeight(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/htc/widget/HtcRimButton;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Lcom/htc/widget/HtcRimButton;->measure(II)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimButton;->getMeasuredHeight()I

    move-result v1

    :cond_0
    return v1
.end method

.method public static measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/htc/album/TagUtils/TagViewManager;->TAG_FONT_STYLE:I

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    :cond_0
    return v1
.end method

.method private resetTags()V
    .locals 8

    iget-object v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual {v3}, Lcom/htc/album/AlbumUtility/TagArranger;->clearTags()V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v6, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v7, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    const/4 v5, 0x2

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/album/AlbumUtility/TagArranger;->setup(Landroid/graphics/Rect;II)V

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    invoke-virtual {p0, v3}, Lcom/htc/album/TagUtils/TagViewManager;->resetTag(Lcom/htc/album/TagUtils/TagViewManager$TagView;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    invoke-virtual {p0, v3}, Lcom/htc/album/TagUtils/TagViewManager;->resetTagFrame(Lcom/htc/album/TagUtils/TagViewManager$TagFrame;)V

    goto :goto_1
.end method


# virtual methods
.method public addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V
    .locals 26

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    add-int v21, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/htc/album/TagUtils/TagViewManager;->measureRimBtnHeight(Landroid/content/Context;Ljava/lang/String;)I

    move-result v22

    const/high16 v5, 0x42c8

    div-float v5, p4, v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v8, v8

    mul-float v19, v5, v8

    const/high16 v5, 0x42c8

    div-float v5, p5, v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v8, v8

    mul-float v20, v5, v8

    const-string v5, "TagViewManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][TagViewManager][addTag]: mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p0

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/htc/album/TagUtils/TagViewManager;->calculateTagNamePosition(FFFFLjava/lang/String;)Landroid/graphics/Point;

    move-result-object v23

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/Point;->y:I

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    move/from16 v8, v21

    move/from16 v9, v22

    invoke-virtual/range {v5 .. v10}, Lcom/htc/album/AlbumUtility/TagArranger;->addTag(IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v24

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    if-ne v5, v8, :cond_4

    const/4 v5, 0x1

    move/from16 v0, p8

    if-ne v5, v0, :cond_4

    const/4 v11, 0x0

    const/4 v5, 0x0

    cmpl-float v5, v5, p6

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    cmpl-float v5, v5, p7

    if-nez v5, :cond_9

    :cond_1
    new-instance v11, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v14, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v15, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v24

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    int-to-float v0, v5

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v24

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    int-to-float v0, v5

    move/from16 v17, v0

    const v18, 0x7f0000ff

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v18}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;-><init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;FFFFI)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v11, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    invoke-virtual {v11}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->print()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/album/TagUtils/TagViewManager;->addView(Landroid/view/View;)V

    :cond_4
    new-instance v25, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagView;-><init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->init(Ljava/lang/String;Ljava/lang/String;FF)Z

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, v24

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v8}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setPos(FF)V

    move-object/from16 v0, v25

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setWH(FF)V

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    const/4 v5, 0x4

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setVisibility(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v5, :cond_7

    invoke-virtual/range {v25 .. v25}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setTagBackgroundRest()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    const/high16 v5, 0x42c8

    div-float v5, p6, v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v8, v8

    mul-float v16, v5, v8

    const/high16 v5, 0x42c8

    div-float v5, p7, v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v8, v8

    mul-float v17, v5, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    int-to-float v5, v5

    add-float v5, v5, v19

    const/high16 v8, 0x4000

    div-float v8, v16, v8

    sub-float v14, v5, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    int-to-float v5, v5

    add-float v5, v5, v20

    const/high16 v8, 0x4000

    div-float v8, v17, v8

    sub-float v15, v5, v8

    new-instance v11, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v18

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v18}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;-><init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;FFFFI)V

    const-string v5, "TagViewManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][TagViewManager][addTag]: PW: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "TagViewManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][TagViewManager][addTag]: PH: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setXY(FF)V

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v11, v0, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setWH(FF)V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public addViewToTagGroup(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public calculateTagNamePosition(FFFFLjava/lang/String;)Landroid/graphics/Point;
    .locals 10

    const/high16 v9, 0x42c8

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iget-object v7, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v7, p5}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v7, p5}, Lcom/htc/album/TagUtils/TagViewManager;->measureRimBtnHeight(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    div-float v7, p1, v9

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v8, v8

    mul-float v0, v7, v8

    div-float v7, p2, v9

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v8, v8

    mul-float v1, v7, v8

    div-float v7, p3, v9

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v8, v8

    mul-float v3, v7, v8

    div-float v7, p4, v9

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v8, v8

    mul-float v2, v7, v8

    const/4 v7, 0x1

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    if-ne v7, v8, :cond_1

    float-to-int v7, v0

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    add-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    float-to-int v7, v1

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->y:I

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v7, 0x2

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    if-ne v7, v8, :cond_0

    float-to-int v7, v0

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    add-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    const/high16 v8, 0x4000

    div-float v8, v2, v8

    add-float/2addr v7, v8

    int-to-float v8, v4

    mul-float/2addr v8, p4

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public clearTagGroup()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public countPhotoSize(IIII)Landroid/graphics/Point;
    .locals 9

    move v1, p1

    move v0, p2

    if-le v0, p4, :cond_0

    const/4 v3, 0x0

    int-to-float v6, p4

    int-to-float v7, v0

    div-float v5, v6, v7

    int-to-float v6, v1

    mul-float/2addr v6, v5

    float-to-int v3, v6

    move v1, v3

    move v0, p4

    const-string v6, "TagViewManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KA>>> countPhotoSize - Scale Width ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") Scale to ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-le v1, p3, :cond_1

    const/4 v2, 0x0

    int-to-float v6, p3

    int-to-float v7, v1

    div-float v5, v6, v7

    int-to-float v6, v0

    mul-float/2addr v6, v5

    float-to-int v2, v6

    move v1, p3

    move v0, v2

    :cond_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method public findTagFrameByContactID(Ljava/lang/String;)Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-le v0, v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagContactID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v4

    :cond_2
    move-object v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTagCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTagID(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTagName(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTagViewByID(Ljava/lang/String;)Lcom/htc/album/TagUtils/TagViewManager$TagView;
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-le v0, v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v4

    :cond_2
    move-object v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTagX(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    goto :goto_0
.end method

.method public getTagY(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    goto :goto_0
.end method

.method public init(IIII)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/album/TagUtils/TagViewManager;->setCanvasInfo(IIII)V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    const-string v2, "TagViewManager"

    invoke-static {v1, v2}, Lcom/htc/album/TagUtils/TagViewManager;->measureRimBtnHeight(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    sput v1, Lcom/htc/album/TagUtils/TagViewManager;->mTagFontSize:I

    const-string v1, "TagViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][TagViewManager][init] - mFontH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-direct {v1, v6}, Lcom/htc/album/AlbumUtility/TagArranger;-><init>(Z)V

    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/album/AlbumUtility/TagArranger;->setup(Landroid/graphics/Rect;II)V

    return v6
.end method

.method public isTagView(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSize()V
    .locals 0

    return-void
.end method

.method public removeTag(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v2, "TagViewManager"

    const-string v3, "[HTCAlbum][TagViewManager][removeTag]: exit..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TagUtils/TagInfo;

    if-nez v1, :cond_1

    const-string v2, "TagViewManager"

    const-string v3, "[HTCAlbum][TagViewManager][removeTag]: exit 2..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual {v2, v0}, Lcom/htc/album/AlbumUtility/TagArranger;->remove(Ljava/lang/String;)Z

    iget-object v2, v1, Lcom/htc/album/TagUtils/TagInfo;->mHost:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/album/TagUtils/TagViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeTagByContactID(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagContactID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TagUtils/TagInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual {v5, v2}, Lcom/htc/album/AlbumUtility/TagArranger;->remove(Ljava/lang/String;)Z

    invoke-virtual {p0, v4}, Lcom/htc/album/TagUtils/TagViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public removeTagByID(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TagUtils/TagInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual {v5, v2}, Lcom/htc/album/AlbumUtility/TagArranger;->remove(Ljava/lang/String;)Z

    invoke-virtual {p0, v4}, Lcom/htc/album/TagUtils/TagViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public removeViewFromTagGroup(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public resetTag(Lcom/htc/album/TagUtils/TagViewManager$TagView;)V
    .locals 16

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagW()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagH()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    add-int v10, v1, v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/htc/album/TagUtils/TagViewManager;->measureRimBtnHeight(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/TagUtils/TagViewManager;->calculateTagNamePosition(FFFFLjava/lang/String;)Landroid/graphics/Point;

    move-result-object v13

    iget v8, v13, Landroid/graphics/Point;->x:I

    iget v9, v13, Landroid/graphics/Point;->y:I

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual/range {v7 .. v12}, Lcom/htc/album/AlbumUtility/TagArranger;->addTag(IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v14

    iget v1, v14, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v7, v14, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v7}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setPos(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->invalidate()V

    goto :goto_0
.end method

.method public resetTagFrame(Lcom/htc/album/TagUtils/TagViewManager$TagFrame;)V
    .locals 14

    iget-boolean v11, p0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagX()F

    move-result v6

    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagY()F

    move-result v7

    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagW()F

    move-result v9

    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagH()F

    move-result v8

    const/high16 v11, 0x42c8

    div-float v11, v6, v11

    iget v12, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v12, v12

    mul-float v2, v11, v12

    const/high16 v11, 0x42c8

    div-float v11, v7, v11

    iget v12, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v12, v12

    mul-float v3, v11, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmpl-float v11, v11, v9

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    cmpl-float v11, v11, v8

    if-eqz v11, :cond_0

    const/high16 v11, 0x42c8

    div-float v11, v9, v11

    iget v12, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v12, v12

    mul-float v5, v11, v12

    const/high16 v11, 0x42c8

    div-float v11, v8, v11

    iget v12, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v12, v12

    mul-float v4, v11, v12

    iget v11, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    int-to-float v11, v11

    add-float/2addr v11, v2

    const/high16 v12, 0x4000

    div-float v12, v5, v12

    sub-float v0, v11, v12

    iget v11, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    const/high16 v12, 0x4000

    div-float v12, v4, v12

    sub-float v1, v11, v12

    invoke-virtual {p1, v0, v1, v5, v4}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->updateRect(FFFF)V

    const-string v11, "TagViewManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][TagViewManager][resetTagFrame]: PW: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "TagViewManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][TagViewManager][resetTagFrame]: PH: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->invalidate()V

    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->print()V

    goto/16 :goto_0
.end method

.method public setCanvasInfo(IIII)V
    .locals 5

    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iput p3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    iput p4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/album/TagUtils/TagViewManager;->layout(IIII)V

    invoke-direct {p0}, Lcom/htc/album/TagUtils/TagViewManager;->resetTags()V

    return-void
.end method

.method public setEnableTagFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    return-void
.end method

.method public setReferenceTagGroup(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setTagDisplayMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    return-void
.end method

.method public setTagOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    return-void
.end method

.method public setTagOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setTagOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public showTagGroup(Z)V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    const-string v1, "TagViewManager"

    const-string v2, "[HTCAlbum][TagViewManager][showTagGroup]: skipped..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    const-string v1, "TagViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][TagViewManager][showTagGroup]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public validateTagUniqueness(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-nez v4, :cond_1

    const-string v4, "TagViewManager"

    const-string v5, "[HTCAlbum][TagViewManager][validateTagUniqueness]: skip..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    invoke-virtual {v3}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagPressView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/album/TagUtils/TagViewManager;->removeTag(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method
