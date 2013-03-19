.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItemFolder.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GridItemFolderParams"


# instance fields
.field public mDateViewH:I

.field public mIsViewBackgroundDecode:Z

.field public mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

.field public mOverlapImages:I

.field public mResIdDateViewId:I

.field public mResIdSelector:I

.field public mResIdTextLayout:I

.field public mResIdTextViewId:I

.field public mSupportImageOverlay:Z

.field public mTextViewH:I

.field public mThumbH:I

.field public mThumbW:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    iput-boolean p2, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->getOverlayCount(Z)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->getFolderBGResId(Z)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->onNewLayoutGetter(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Folder_Select(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->imageDimension()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->imageDimension()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->getTextLayoutId()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    const v0, 0x7f090048

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    const v0, 0x7f090049

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->textHeightFirst()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->textHeightSecond()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    return-object v0
.end method

.method public static spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    iget-boolean v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    iget-object v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    iget-boolean v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    goto :goto_0
.end method

.method public enableViewBackgroundDecode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    return-void
.end method

.method protected getFolderBGResId(Z)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v0, 0x7f02000b

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02000a

    goto :goto_0
.end method

.method protected getOverlayCount(Z)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :cond_0
    return v0
.end method

.method protected getTextLayoutId()I
    .locals 1

    const v0, 0x7f03001e

    return v0
.end method

.method public layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    return-object v0
.end method

.method protected onNewLayoutGetter(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolderOverlapImages;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolderOverlapImages;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;-><init>()V

    goto :goto_0
.end method
