.class public Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;
.super Ljava/lang/Object;
.source "EventGridViewSeparatorPin.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridViewScreenControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EventGridViewSeparatorPin"

.field private static final RENDERORDER_ABOVEALL:I = 0x1

.field private static final SEPARATOR_HEIGHT:I


# instance fields
.field private mBreakMarginBot:I

.field private mBreakMarginTop:I

.field private mContext:Landroid/content/Context;

.field private mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

.field private mDateTimeDisplayed:Ljava/lang/String;

.field private mEventLayout:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

.field private mFirstVisibleIndex:I

.field private mHeight:I

.field private mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

.field private mHostH:I

.field private mHostW:I

.field private mIsAttached:Z

.field private mNodeRoot:Lcom/htc/sunnyCore/SceneNode;

.field private mPosY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PINNED_SEPARATOR_HEIGHT:I

    sput v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mEventLayout:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mNodeRoot:Lcom/htc/sunnyCore/SceneNode;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mFirstVisibleIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mIsAttached:Z

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostH:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginTop:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginBot:I

    sget v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHeight:I

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    return-void
.end method

.method private prepareTextLayer(Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    invoke-static {p1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHeight:I

    int-to-float v2, v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:I

    int-to-float v4, v4

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v6, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHeight:I

    int-to-float v2, v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:I

    int-to-float v4, v4

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    goto :goto_0
.end method

.method private prepareTextView(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    const v5, 0x7f030015

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v6, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    const v7, 0x7f09002c

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewTitle:Landroid/widget/TextView;

    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8, v8, v4, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHeight:I

    if-eq v5, v3, :cond_1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHeight:I

    :cond_1
    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->prepareTextView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method private setupDisplayText(Landroid/content/Context;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v6, "..."

    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->prepareTextView(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "EventGridViewSeparatorPin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][EventGridViewSeparatorPin][setupDisplayText]1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->prepareTextLayer(Landroid/view/ViewGroup;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "EventGridViewSeparatorPin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][EventGridViewSeparatorPin][setupDisplayText]2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachIRT(Landroid/content/Context;Lcom/htc/sunnyCore/view/SViewGroup;Lcom/htc/sunnyCore/SceneNode;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mNodeRoot:Lcom/htc/sunnyCore/SceneNode;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setupDisplayText(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mIsAttached:Z

    return-void
.end method

.method public detachIRT()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mIsAttached:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mNodeRoot:Lcom/htc/sunnyCore/SceneNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mIsAttached:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mFirstVisibleIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBreakMarginBot()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginBot:I

    return v0
.end method

.method public getBreakMarginTop()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginTop:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHeight:I

    return v0
.end method

.method public getPosY()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:I

    return v0
.end method

.method public onItemClickIRT(ILcom/htc/sunnyCore/SceneNode;)V
    .locals 0

    return-void
.end method

.method public onLayout(III)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    if-ne v4, p1, :cond_2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostH:I

    if-ne v4, p2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    iput p2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostH:I

    div-int/lit8 v4, p2, 0x2

    neg-int v4, v4

    add-int/2addr v4, p3

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:I

    neg-int v4, p3

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginTop:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginTop:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginBot:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "EventGridViewSeparatorPin"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][EventGridViewSeparatorPin][onLayout]: setupGeometry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->prepareTextLayer(Landroid/view/ViewGroup;)V

    :cond_3
    const/4 v1, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public onLayoutChangedIRT(II)V
    .locals 0

    return-void
.end method

.method public onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;Z)V

    return-void
.end method

.method public onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;Z)V
    .locals 6

    if-nez p3, :cond_1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mFirstVisibleIndex:I

    if-ne v4, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mFirstVisibleIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mEventLayout:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v4, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getSeparableIndicator(I)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager;->getEventsMonthString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    if-nez v4, :cond_3

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setText(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mEventLayout:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    goto :goto_0
.end method
