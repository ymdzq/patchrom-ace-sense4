.class public Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.source "GridItemEventSeparator.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GridItemEventSeparator"

.field private static final SEPERATOR_TAG:Ljava/lang/String; = "S_"

.field protected static final SPRITE_LAYER_BACKGROUND:I = 0x0

.field protected static final SPRITE_LAYER_COUNT:I = 0x2

.field protected static final SPRITE_LAYER_TITLE:I = 0x1


# instance fields
.field private mBGTexture:Lcom/htc/sunnyCore/Texture;

.field protected mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

.field protected mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

.field private mShareTextureKey:Ljava/lang/String;

.field private mSprite:Lcom/htc/sunnyCore/Sprite;

.field private mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

.field private mTextViewContainer:Landroid/view/View;

.field private mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemEventSeparator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    return-void
.end method

.method private setText(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    const/4 v3, 0x0

    instance-of v4, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v4, "GridItemEventSeparator"

    const-string v5, "[setText] textViewContainer is null"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_3

    invoke-static {v2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v9}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->getGeometry()[I

    move-result-object v6

    aget v1, v6, v2

    if-ne v7, v1, :cond_1

    aget v1, v6, v9

    if-ne v8, v1, :cond_1

    float-to-int v1, v3

    const/4 v2, 0x2

    aget v2, v6, v2

    if-ne v1, v2, :cond_1

    float-to-int v1, v4

    const/4 v2, 0x3

    aget v2, v6, v2

    if-eq v1, v2, :cond_2

    :cond_1
    int-to-float v1, v7

    int-to-float v2, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    :cond_2
    invoke-virtual {v0, v9}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 4

    if-nez p2, :cond_1

    const-string v1, "GridItemEventSeparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GridItemEventSeparator][bindMediaData]: null:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    instance-of v1, p2, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v1, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/htc/sunnyCore/IMediaDataFolder;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    instance-of v1, v1, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v1, p1, v0}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->getViewTexture(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    :cond_2
    const-string v1, "GridItemEventSeparator"

    const-string v2, "[HTCAlbum][GridItemEventSeparator][bindMediaData]: not instance of IMediaDataFolder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->createResource()V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2080099

    invoke-direct {v6, p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;Landroid/content/Context;I)V

    iput v7, v6, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V

    :cond_0
    iget v1, v6, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    const-string v1, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v6, v1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    int-to-float v2, v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v7, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method public freeResource()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    :cond_1
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->release()V

    :cond_2
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->freeResource()V

    return-void
.end method

.method public getCacheSet()I
    .locals 1

    const/4 v0, -0x1

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

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdentifier()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getRowQuota()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getSeperateTextLayout()I
    .locals 1

    const v0, 0x7f030015

    return v0
.end method

.method public getVCropPosition()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    instance-of v4, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getWidth()I

    move-result v2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewContainer:Landroid/view/View;

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getViewResId(Lcom/htc/sunnyCore/IMediaData;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->inflateViewContainer(I)Landroid/view/View;

    move-result-object p2

    const v4, 0x7f09002c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewTitle:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewContainer:Landroid/view/View;

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p2, v5, v5, v2, v4}, Landroid/view/View;->layout(IIII)V

    move-object v4, p2

    :goto_0
    return-object v4

    :cond_2
    const-string v4, "GridItemEventSeparator"

    const-string v5, "[getView] mediaData is not IMediaDataFolder"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;
    .locals 3

    instance-of v1, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "GridItemEventSeparator"

    const-string v2, "[getViewId] viewId is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "GridItemEventSeparator"

    const-string v2, "[getViewId] mediaData null or not IMediaDataFolder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewResId(Lcom/htc/sunnyCore/IMediaData;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getSeperateTextLayout()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    return v0
.end method

.method public inflateViewContainer(I)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getSeperateTextLayout()I

    move-result v2

    if-eq p1, v2, :cond_0

    const-string v2, "GridItemEventSeparator"

    const-string v3, "[inflateViewContainer] Unsupported view res id"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackground(I)V
    .locals 0

    return-void
.end method

.method public setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    return-void
.end method

.method public setThumbTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 0

    return-void
.end method

.method public unbindMediaData()V
    .locals 0

    return-void
.end method
