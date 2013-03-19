.class public Lcom/htc/sunny2/widget/gridview/GridItemFolder;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.source "GridItemFolder.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemFolder;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridItemFolder$1;,
        Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = " "

.field private static final FOLDER_ITEM_SPRITE_LAYER_BKG:I = 0x0

.field private static final FOLDER_ITEM_SPRITE_LAYER_COUNT:I = 0x2

.field private static final FOLDER_ITEM_SPRITE_LAYER_THUMB:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GridItemFolder"

.field private static final ROTATE_DEGREE:F = -8.0f

.field protected static final SPRITE_LAYER_BACKGROUND:I = 0x1

.field protected static final SPRITE_LAYER_COUNT:I = 0x3

.field protected static final SPRITE_LAYER_FOLDER_NAME:I = 0x2

.field protected static final SPRITE_LAYER_SELECTOR:I


# instance fields
.field private mBGTexture:Lcom/htc/sunnyCore/Texture;

.field private mBkSprite:Lcom/htc/sunnyCore/Sprite;

.field private mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

.field private mDataIndex:I

.field private mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

.field private mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

.field private mIsSelected:Z

.field protected mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

.field private mMediaData:Lcom/htc/sunnyCore/IMediaData;

.field private mSelectedTexture:Lcom/htc/sunnyCore/Texture;

.field private mShareTextureKey:Ljava/lang/String;

.field private mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

.field private mTextViewContainer:Landroid/view/View;

.field private mTextViewDateTime:Landroid/widget/TextView;

.field private mTextViewName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mDataIndex:I

    invoke-static {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder;Lcom/htc/sunny2/widget/gridview/GridItemFolder$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mIsSelected:Z

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget-boolean v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->enableItemFixedDimension()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->enableItemFocusedAnimation()V

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemFolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    return-void

    :cond_1
    iput-object p4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/RenderThreadHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/RenderThreadHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/RenderThreadHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    return-object v0
.end method

.method private adjustRotation4FolderSprite(Lcom/htc/sunnyCore/Sprite;I)F
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, -0x3f00

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_2

    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    mul-float v0, v1, v2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3, v3, v0}, Lcom/htc/sunnyCore/Sprite;->setRotate(FFF)V

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method private setText(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 9

    const/4 v8, 0x0

    instance-of v6, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v1, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v6}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v6, "GridItemFolder"

    const-string v7, "[setText] ViewContainer is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    if-nez v4, :cond_3

    invoke-static {v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setupAnimation(IIILcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V
    .locals 11

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge p1, v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v4, v5, p1

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Sprite;->getPosition()[F

    move-result-object v2

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Sprite;->getRotate()[F

    move-result-object v3

    new-instance v1, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    int-to-long v5, p2

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    int-to-long v5, p3

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    new-instance v5, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v8, v2, v8

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v7, 0x0

    aget v7, v2, v7

    iget v8, p4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v2, v8

    iget v9, p4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v2, v9

    iget v10, p4, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    add-float/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    new-instance v5, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    const/4 v8, 0x2

    aget v8, v3, v8

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v7, 0x0

    aget v7, v3, v7

    move-object/from16 v0, p5

    iget v8, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    move-object/from16 v0, p5

    iget v9, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    move-object/from16 v0, p5

    iget v10, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    add-float/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v4, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->addUnit(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 17

    if-nez p2, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MediaData="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is null at bindMediaData"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v14, "GridItemFolder"

    invoke-static {v14, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mDataIndex:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget-boolean v14, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    instance-of v14, v14, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    check-cast v14, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->getViewTexture(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v14, :cond_4

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v14, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v9, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1, v9}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9, v14}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setThumbTexture(IILcom/htc/sunnyCore/Texture;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setText(Lcom/htc/sunnyCore/IMediaData;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v14, v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v11, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v10, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v14}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v5

    sub-int v14, v5, v10

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float v3, v14, v15

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v14, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v9, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v12, v14, v9

    const/4 v14, 0x0

    neg-float v15, v3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->adjustRotation4FolderSprite(Lcom/htc/sunnyCore/Sprite;I)F

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v9, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunnyCore/IMediaData;

    if-eqz v13, :cond_7

    instance-of v14, v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    check-cast v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v4

    if-eqz v4, :cond_7

    rem-int/lit16 v4, v4, 0x168

    if-gez v4, :cond_6

    add-int/lit16 v4, v4, 0x168

    :cond_6
    invoke-virtual {v6, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaData;->isSelected()Z

    move-result v14

    if-eqz v14, :cond_0

    goto/16 :goto_0
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 21

    invoke-super/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->createResource()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v19

    if-nez v19, :cond_0

    new-instance v19, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v7}, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;-><init>(Landroid/content/Context;II)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V

    :cond_0
    move-object/from16 v0, v19

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    const-string v3, "NAME_TEXTURE_BACKGROUND"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    const-string v3, "NAME_TEXTURE_SELECTED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSelectedTexture:Lcom/htc/sunnyCore/Texture;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->isItemFixedDimension()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemDimension()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iput v14, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemToTextGap()I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    add-int/2addr v4, v7

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    :cond_2
    move/from16 v17, v14

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_6

    sub-int v3, v17, v16

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    new-array v3, v3, [Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v15, v3, :cond_6

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aput-object v20, v3, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    const/4 v3, 0x0

    neg-float v4, v13

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v7}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->adjustRotation4FolderSprite(Lcom/htc/sunnyCore/Sprite;I)F

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    int-to-float v3, v3

    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemToTextGap()I

    move-result v7

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    add-int/2addr v4, v7

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_7

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    :cond_7
    const/4 v5, 0x0

    const/4 v2, 0x0

    sub-int v3, v17, v16

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v6, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSelectedTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    sub-int v3, v3, v17

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v9, v3

    const/high16 v3, 0x4000

    add-float v11, v13, v3

    const/4 v12, 0x0

    move-object v7, v2

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method public freeResource()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->stop()V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    :cond_0
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/View;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewName:Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewDateTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v1, v3, v0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Sprite;->release()V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->release()V

    :cond_4
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->freeResource()V

    return-void
.end method

.method public getCacheSet()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getFolderItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    return v0
.end method

.method public getMediaData()Lcom/htc/sunnyCore/IMediaData;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    return-object v0
.end method

.method public getOriginalPosition()[Lcom/htc/sunnyCore/view/Vector3F;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    sub-int v5, v2, v3

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float v0, v5, v6

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    new-array v4, v5, [Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v1, v5, :cond_0

    new-instance v5, Lcom/htc/sunnyCore/view/Vector3F;

    neg-float v6, v0

    invoke-direct {v5, v7, v6, v7}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public getOriginalRotation()[Lcom/htc/sunnyCore/view/Vector3F;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    new-array v1, v2, [Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->adjustRotation4FolderSprite(Lcom/htc/sunnyCore/Sprite;I)F

    move-result v3

    invoke-direct {v2, v4, v4, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPrototypeId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVCropPosition()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 12

    instance-of v9, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-nez v9, :cond_0

    const-string v9, "GridItemFolder"

    const-string v10, "[getView] IMediaData is not instance of IMediaDataFolder"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getWidth()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getHeight()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    :cond_1
    const-string v9, "GridItemFolder"

    const-string v10, "[getView] createResource"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->createResource()V

    :cond_2
    move-object v3, p1

    check-cast v3, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_5

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_5

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getWidth()I

    move-result v4

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/View;

    :cond_6
    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getViewResId(Lcom/htc/sunnyCore/IMediaData;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->inflateViewContainer(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/View;

    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x4000

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->measure(II)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {p2, v9, v10, v4, v11}, Landroid/view/View;->layout(IIII)V

    if-eqz v0, :cond_8

    const-string v9, "GridItemFolder"

    const-string v10, "[getView] freeResource"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->freeResource()V

    :cond_8
    move-object v9, p2

    goto/16 :goto_0
.end method

.method public getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;
    .locals 3

    instance-of v1, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "GridItemFolder"

    const-string v2, "[getViewId] displayName is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "GridItemFolder"

    const-string v2, "[getViewId] mediaData null or not IMediaDataFolder"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewResId(Lcom/htc/sunnyCore/IMediaData;)I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    return v0
.end method

.method public inflateViewContainer(I)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    if-eq p1, v2, :cond_0

    const-string v2, "GridItemFolder"

    const-string v3, "[inflateViewContainer] Unsupported view res id"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v1, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-virtual {p0, v1, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAlpha4FolderItem(IF)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v1, v2, v0

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/htc/sunnyCore/Sprite;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBackground(I)V
    .locals 0

    return-void
.end method

.method public setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 0

    return-void
.end method

.method public setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v10, 0x4000

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    if-nez p1, :cond_0

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemToTextGap()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v8

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    int-to-float v2, v7

    div-float/2addr v2, v10

    sub-float v4, v1, v2

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->getGeometry()[I

    move-result-object v6

    aget v1, v6, v5

    if-ne v9, v1, :cond_1

    aget v1, v6, v11

    if-ne v8, v1, :cond_1

    float-to-int v1, v3

    aget v2, v6, v12

    if-ne v1, v2, :cond_1

    float-to-int v1, v4

    const/4 v2, 0x3

    aget v2, v6, v2

    if-eq v1, v2, :cond_2

    :cond_1
    int-to-float v1, v9

    int-to-float v2, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    :cond_2
    invoke-virtual {v0, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setThumbTexture(IILcom/htc/sunnyCore/Texture;)V
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-lt p2, v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v2, v3, p2

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v0, 0x0

    if-nez p2, :cond_3

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public setThumbTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setThumbTexture(IILcom/htc/sunnyCore/Texture;)V

    return-void
.end method

.method public setupSpriteAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge p1, v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v0, v1, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0, p2}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->addUnit(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;)V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->start()V

    return-void
.end method

.method public unbindMediaData()V
    .locals 4

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mDataIndex:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v2, v3, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->stop()V

    return-void
.end method
