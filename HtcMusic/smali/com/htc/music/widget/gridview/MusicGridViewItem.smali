.class public Lcom/htc/music/widget/gridview/MusicGridViewItem;
.super Lcom/htc/sunny2/widget/gridview/GridViewItem;
.source "MusicGridViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;,
        Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;,
        Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;
    }
.end annotation


# static fields
.field protected static final FOLDER_LAYER_COUNT:I = 0x2

.field protected static final FOLDER_LAYER_COVER:I = 0x1

.field protected static final FOLDER_LAYER_THUMB:I = 0x0

.field private static final GAP_BK_TEXT:I = 0x2

.field protected static final SPRITE_LAYER_COUNT:I = 0x2

.field protected static final SPRITE_LAYER_FOLDER_NAME:I = 0x0

.field protected static final SPRITE_LAYER_SELECTOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MusicGridViewItem]"


# instance fields
.field private mBGTexture:Lcom/htc/sunny2/Texture;

.field private mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mBkSprite:Lcom/htc/sunny2/Sprite;

.field private mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

.field private mDataIndex:I

.field private mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

.field private mFolderSprite:[Lcom/htc/sunny2/Sprite;

.field private mHeight:I

.field private mIsBinded:Z

.field private mNumFolderImage:I

.field private mOldTime:I

.field private mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

.field private mShareTextureKey:Ljava/lang/String;

.field private mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

.field private mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

.field private mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mViewContainer:Landroid/view/View;

.field private mViewTextureContainer:Lcom/htc/sunny2/Texture;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"

    .prologue
    const/4 v4, 0x0

    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "childParams"

    .prologue
    .line 156
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "childParams"
    .parameter "prototypeKey"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mDataIndex:I

    .line 433
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 434
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mOldTime:I

    .line 165
    if-nez p3, :cond_0

    .line 187
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setItemAnimation(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 167
    iput-object p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    .line 168
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 170
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 171
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 172
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    .line 173
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    .line 174
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getNumFolderImage()I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    .line 176
    if-eqz p4, :cond_1

    .line 177
    iput-object p4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    .line 181
    :cond_1
    if-nez p5, :cond_2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MusicGridViewItem]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_2
    iput-object p5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "prototypeKey"

    .prologue
    .line 160
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createSAnimationController(Lcom/htc/sunny2/view/SView;I)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 6
    .parameter "view"
    .parameter "delayTime"

    .prologue
    const/4 v5, 0x0

    .line 723
    new-instance v1, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 725
    .local v1, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v2

    .line 727
    .local v2, pos:Lcom/htc/sunny2/view/Vector3F;
    sget-object v3, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_BEGIN:Lcom/htc/sunny2/view/Vector3F;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_END:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 730
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getAlpha()F

    move-result v0

    .line 731
    .local v0, alpha:F
    const/high16 v3, 0x437f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v5, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 733
    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 735
    invoke-virtual {v1, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 736
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 737
    sget-object v3, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 738
    new-instance v3, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;

    invoke-direct {v3, p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;Lcom/htc/sunny2/view/SView;)V

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 754
    return-object v1
.end method

.method private setItemView(ILcom/htc/sunny2/IMediaData;I)V
    .locals 6
    .parameter "dataIndex"
    .parameter "mediaData"
    .parameter "level"

    .prologue
    const/4 v5, 0x0

    .line 438
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v3, v5

    .line 439
    .local v1, s:Lcom/htc/sunny2/Sprite;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 440
    .local v0, layer:Lcom/htc/sunny2/Sprite$Layer;
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3, p1, p2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isUseExtraBackgroundImage(ILcom/htc/sunny2/IMediaData;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v4, "NAME_TEXTURE_BACKGROUND_EXTRA"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 442
    .local v2, texture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v0, v5, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 446
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextView(ILcom/htc/sunny2/IMediaData;)V

    .line 447
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3, p1, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->getThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 448
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-nez v2, :cond_0

    .line 449
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3, p1, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isUseExtraThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v4, "NAME_TEXTURE_THUMBNAIL_EXTRA"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 455
    :cond_0
    :goto_1
    invoke-virtual {p0, v2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setThumbnail(Lcom/htc/sunny2/Texture;I)V

    .line 456
    return-void

    .line 444
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v5, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_0

    .line 452
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v4, "NAME_TEXTURE_THUMBNAIL"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    goto :goto_1
.end method

.method private setTextView(ILcom/htc/sunny2/IMediaData;)V
    .locals 16
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    if-nez v3, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 364
    .local v2, layer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v8, 0x0

    .line 365
    .local v8, container:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;->textViewBinding(ILcom/htc/sunny2/IMediaData;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 367
    if-eqz v8, :cond_0

    .line 368
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v3, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v3, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    if-lez v3, :cond_4

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v3, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 374
    .local v11, measureW:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v3, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 375
    .local v10, measureH:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v3, v11, v10}, Landroid/view/View;->measure(II)V

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v14, v14, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v15, v15, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-virtual {v3, v4, v7, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v12, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 389
    .local v12, textViewWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 390
    .local v9, height:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    sub-int v3, v9, v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v6, v3, v4

    .line 391
    .local v6, posY:F
    const/4 v5, 0x0

    .line 393
    .local v5, posX:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v3, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v4, v4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v6, v3

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v3, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    int-to-float v3, v3

    sub-float/2addr v5, v3

    .line 396
    rem-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_2

    .line 397
    const/high16 v3, 0x3f00

    add-float/2addr v5, v3

    .line 399
    :cond_2
    rem-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_3

    .line 400
    int-to-float v3, v9

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v9, v3

    .line 402
    :cond_3
    int-to-float v3, v12

    int-to-float v4, v9

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    .line 409
    .local v13, texture:Lcom/htc/sunny2/Texture;
    if-nez v13, :cond_5

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    .line 411
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 412
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    .line 423
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 379
    .end local v5           #posX:F
    .end local v6           #posY:F
    .end local v9           #height:I
    .end local v10           #measureH:I
    .end local v11           #measureW:I
    .end local v12           #textViewWidth:I
    .end local v13           #texture:Lcom/htc/sunny2/Texture;
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 380
    .restart local v11       #measureW:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 381
    .restart local v10       #measureH:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v3, v11, v10}, Landroid/view/View;->measure(II)V

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v3, v4, v7, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 383
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    .restart local v12       #textViewWidth:I
    goto/16 :goto_1

    .line 415
    .restart local v5       #posX:F
    .restart local v6       #posY:F
    .restart local v9       #height:I
    .restart local v13       #texture:Lcom/htc/sunny2/Texture;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v13, v3}, Lcom/htc/sunny2/Texture;->setView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 7
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 460
    if-nez p2, :cond_1

    .line 462
    const-string v3, "[MusicGridViewItem]"

    const-string v4, "MediaData is null at bindMediaData"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_0
    return-void

    .line 466
    :cond_1
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mDataIndex:I

    .line 468
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 469
    .local v2, layer:Lcom/htc/sunny2/Sprite$Layer;
    invoke-interface {p2}, Lcom/htc/sunny2/IMediaData;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 470
    invoke-interface {p2}, Lcom/htc/sunny2/IMediaData;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 471
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v3, v3, v6

    const v4, 0x3ecccccd

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    .line 478
    :goto_0
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    if-eqz v3, :cond_0

    .line 485
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    if-ge v1, v3, :cond_0

    .line 488
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isGridViewInitFinish()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p2}, Lcom/htc/sunny2/IMediaData;->isItemDataReady()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Lcom/htc/sunny2/IMediaData;->isReadyToDecode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 490
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setItemView(ILcom/htc/sunny2/IMediaData;I)V

    .line 492
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->isVisible()Z

    move-result v3

    if-nez v3, :cond_4

    .line 493
    invoke-virtual {p0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    .line 494
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isGridViewInitFinish()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v3, :cond_3

    .line 495
    iput-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 497
    :cond_3
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v3, :cond_4

    .line 498
    invoke-direct {p0, p0, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->createSAnimationController(Lcom/htc/sunny2/view/SView;I)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 499
    iput-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 485
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 473
    .end local v1           #i:I
    :cond_5
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v3, v3, v6

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    goto :goto_0

    .line 503
    .restart local v1       #i:I
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    .line 505
    .local v0, currentTime:I
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->judgeOldTime()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 507
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->judgeTimeWithCurrent(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 508
    iput-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 509
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setItemView(ILcom/htc/sunny2/IMediaData;I)V

    .line 510
    invoke-virtual {p0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    goto :goto_2

    .line 511
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 512
    invoke-virtual {p0, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    goto :goto_2

    .line 514
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 515
    invoke-virtual {p0, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    .line 516
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mOldTime:I

    goto :goto_2
.end method

.method public create()Lcom/htc/sunny2/ViewItem;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->create(Z)Lcom/htc/sunny2/ViewItem;

    move-result-object v0

    return-object v0
.end method

.method public create(Z)Lcom/htc/sunny2/ViewItem;
    .locals 6
    .parameter "isChild"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child[MusicGridViewItem]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v5}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->getInstance(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)Lcom/htc/music/widget/gridview/MusicGridViewItem;

    move-result-object v0

    .line 200
    .local v0, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    .line 206
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    .line 207
    return-object v0

    .line 202
    .end local v0           #gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->getInstance(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)Lcom/htc/music/widget/gridview/MusicGridViewItem;

    move-result-object v0

    .restart local v0       #gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    goto :goto_0
.end method

.method public createResource()V
    .locals 14

    .prologue
    .line 226
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->createResource()V

    .line 227
    const-string v5, "[MusicGridViewItem]"

    const-string v6, "createResource+"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v5, "[MusicGridViewItem]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mShareTextureKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    .line 231
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    if-nez v5, :cond_0

    .line 232
    new-instance v5, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget-object v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;Landroid/content/Context;Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V

    iput-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    .line 233
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const/4 v6, 0x0

    iput v6, v5, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 234
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    invoke-static {v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;)V

    .line 235
    const-string v5, "[MusicGridViewItem]"

    const-string v6, "mSharedTexture == null, create new one"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    iget v6, v5, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 239
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v6, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    .line 240
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    if-nez v5, :cond_1

    .line 241
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    .line 242
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 244
    :cond_1
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 245
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-nez v5, :cond_2

    .line 247
    iget v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    new-array v5, v5, [Lcom/htc/sunny2/Sprite;

    iput-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    .line 248
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    if-ge v11, v5, :cond_2

    .line 249
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v12

    .line 250
    .local v12, s:Lcom/htc/sunny2/Sprite;
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aput-object v12, v5, v11

    .line 251
    invoke-virtual {p0, v12}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 254
    iget v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v6, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v4, v5

    .line 255
    .local v4, posY:F
    const/4 v3, 0x0

    .line 256
    .local v3, posX:F
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v4, v6}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 257
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    int-to-float v4, v5

    .line 258
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    neg-int v5, v5

    int-to-float v3, v5

    .line 259
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 260
    .local v0, layer:Lcom/htc/sunny2/Sprite$Layer;
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    int-to-float v1, v5

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    int-to-float v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 271
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    int-to-float v4, v5

    .line 272
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    neg-int v5, v5

    int-to-float v3, v5

    .line 273
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 274
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    int-to-float v1, v5

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    int-to-float v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 275
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 248
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 282
    .end local v0           #layer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v3           #posX:F
    .end local v4           #posY:F
    .end local v11           #i:I
    .end local v12           #s:Lcom/htc/sunny2/Sprite;
    :cond_2
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 285
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 286
    .restart local v0       #layer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 287
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 289
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 291
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v6, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    .line 292
    .local v13, texture:Lcom/htc/sunny2/Texture;
    if-eqz v13, :cond_3

    .line 293
    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 294
    .local v2, height:F
    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v5

    int-to-float v1, v5

    .line 295
    .local v1, width:F
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    neg-int v5, v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float v4, v5, v6

    .line 296
    .restart local v4       #posY:F
    const/4 v3, 0x0

    .line 297
    .restart local v3       #posX:F
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 298
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 299
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 300
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v13}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 301
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 304
    .end local v1           #width:F
    .end local v2           #height:F
    .end local v3           #posX:F
    .end local v4           #posY:F
    :cond_3
    const-string v5, "[MusicGridViewItem]"

    const-string v6, "createResource-"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public freeResource()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 311
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_0

    .line 312
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 313
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    .line 316
    :cond_0
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    .line 320
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_2

    .line 321
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    if-ge v0, v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v3, v0

    .line 323
    .local v1, s:Lcom/htc/sunny2/Sprite;
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 324
    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V

    .line 325
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aput-object v4, v3, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    .end local v1           #s:Lcom/htc/sunny2/Sprite;
    :cond_1
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    .line 330
    .end local v0           #i:I
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_3

    .line 331
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 332
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->release()V

    .line 333
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    .line 336
    :cond_3
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v2

    .line 337
    .local v2, sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    if-eqz v2, :cond_4

    .line 338
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 339
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v3, :cond_4

    .line 340
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    .line 341
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->release()V

    .line 345
    :cond_4
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->freeResource()V

    .line 346
    return-void
.end method

.method public getFolderItemCount()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    return v0
.end method

.method protected getInstance(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)Lcom/htc/music/widget/gridview/MusicGridViewItem;
    .locals 1
    .parameter "context"
    .parameter "sunnyContext"
    .parameter "param"

    .prologue
    .line 216
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    return-object v0
.end method

.method protected getInstance(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)Lcom/htc/music/widget/gridview/MusicGridViewItem;
    .locals 1
    .parameter "context"
    .parameter "sunnyContext"
    .parameter "param"
    .parameter "prototypeKey"

    .prologue
    .line 212
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    return v0
.end method

.method protected judgeOldTime()Z
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mOldTime:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected judgeTimeWithCurrent(I)Z
    .locals 2
    .parameter "currentTime"

    .prologue
    .line 527
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mOldTime:I

    sub-int v0, p1, v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 350
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setMeasuredDimension(II)V

    .line 351
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 708
    return-void
.end method

.method public setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0
    .parameter "contentGetter"

    .prologue
    .line 720
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 553
    return-void
.end method

.method public setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    .line 355
    return-void
.end method

.method public setThumbTexture(Lcom/htc/sunny2/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 714
    return-void
.end method

.method public setThumbnail(Lcom/htc/sunny2/Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setThumbnail(Lcom/htc/sunny2/Texture;I)V

    .line 561
    return-void
.end method

.method public setThumbnail(Lcom/htc/sunny2/Texture;I)V
    .locals 5
    .parameter "texture"
    .parameter "idx"

    .prologue
    const/4 v4, 0x0

    .line 564
    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    if-le v2, v3, :cond_0

    .line 565
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use incorrect index: idx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNumFolderImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 567
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v2, p2

    .line 569
    .local v1, s:Lcom/htc/sunny2/Sprite;
    invoke-virtual {v1, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 570
    .local v0, layer:Lcom/htc/sunny2/Sprite$Layer;
    invoke-virtual {v0, v4, p1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 571
    if-nez p1, :cond_1

    .line 572
    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 578
    :goto_0
    return-void

    .line 575
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V
    .locals 0
    .parameter "getter"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    .line 222
    return-void
.end method

.method public unbindMediaData()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mDataIndex:I

    .line 538
    return-void
.end method
