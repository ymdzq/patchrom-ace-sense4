.class public Lcom/htc/album/addons/UploadEditorViewManager;
.super Landroid/widget/RelativeLayout;
.source "UploadEditorViewManager.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenControlHook;


# static fields
.field private static final DEBUG:Ljava/lang/String; = "KA>>> [UploadEditorViewManager]: "

.field private static final LOG_TAG:Ljava/lang/String; = "UploadEditorViewManager"

.field public static final SOURCE_FACEBOOK:I = 0x1

.field public static final SOURCE_FLICKR:I = 0x2

.field public static final SOURCE_RENREN:I = 0x5

.field public static final SOURCE_SINA:I = 0x3

.field public static final SOURCE_SINAWEIBO:I = 0x4

.field public static final SOURCE_UKNOWN:I


# instance fields
.field private isInit:Z

.field private mBundleArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mEditorDescription:Lcom/htc/widget/HtcEditText;

.field private mEditorIndicator:Landroid/widget/ImageView;

.field private mEditorPhotoIndex:Landroid/widget/TextView;

.field private mEditorReferLayout:Landroid/widget/RelativeLayout;

.field private mEditorReferMain:Landroid/widget/RelativeLayout;

.field private mEditorTagButton:Lcom/htc/widget/HtcRimButton;

.field private mEditorTitle:Lcom/htc/widget/HtcEditText;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMainView:Landroid/view/ViewGroup;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorIndicator:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorIndicator:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorIndicator:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/UploadEditorViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->setDescriptionHint()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/UploadEditorViewManager;)Lcom/htc/widget/HtcEditText;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/UploadEditorViewManager;)Lcom/htc/widget/HtcEditText;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    return-object v0
.end method

.method private setDescriptionHint()V
    .locals 4

    const v3, 0x7f0a006f

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v1, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->getDescriptionHintText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcEditText;->setHint(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setHint(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcEditText;->setHint(I)V

    goto :goto_0
.end method

.method private setPhotoDescription(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->setDescriptionHint()V

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    new-instance v1, Lcom/htc/album/addons/UploadEditorViewManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/UploadEditorViewManager$4;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/htc/album/addons/UploadEditorViewManager$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/UploadEditorViewManager$3;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public forceInvalidateTagBtn()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public getBundleArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhotoIndex()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTags(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "tags"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTextDescription()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextTitle()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setVisibility(I)V

    return-void
.end method

.method public initialize(Landroid/app/Activity;I)V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x11

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    const-class v1, Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setId(I)V

    iput p2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030048

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-ne v4, v1, :cond_2

    instance-of v1, p1, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const v2, 0x7f0a006d

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-ne v4, v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x203001e

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcEditText;->setMode(I)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcEditText;->setGravity(I)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    new-instance v2, Lcom/htc/album/addons/UploadEditorViewManager$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/UploadEditorViewManager$1;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcEditText;->setMode(I)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcEditText;->setGravity(I)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    new-instance v2, Lcom/htc/album/addons/UploadEditorViewManager$2;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/UploadEditorViewManager$2;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcRimButton;->setSingleLine()V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcRimButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcRimButton;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/UploadEditorViewManager;->relayout(Landroid/content/res/Configuration;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorIndicator:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onEditTextFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public prepareEditorView(IZ)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    const-string v4, "index"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorTitle()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorDescription()Z

    move-result v3

    if-ne v5, v3, :cond_5

    :cond_4
    const-string v3, "description"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorTagButton()Z

    move-result v3

    if-ne v5, v3, :cond_0

    :cond_6
    const-string v3, "tags"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v5, v3, :cond_8

    if-nez p2, :cond_8

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public prepareEditorView(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    :goto_1
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v0

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(ZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public relayout(Landroid/content/res/Configuration;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_0
    const/4 v3, 0x2

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_REFERMAIN_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-ne v6, v0, :cond_8

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_REFERMAIN_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_INDEX_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_INDEX_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-ne v6, v0, :cond_9

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_INDEX_BOTTOM_PORT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3}, Lcom/htc/widget/HtcEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_TITLE_BOTTOM_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3}, Lcom/htc/widget/HtcEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_DESCR_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_DESCR_MAX_HEIGHT_DIMEN:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcEditText;->setMaxHeight(I)V

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcEditText;->setMinHeight(I)V

    :cond_6
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcRimButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_TAG_BUTTON_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setMinHeight(I)V

    :cond_7
    return-void

    :cond_8
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_9
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_INDEX_BOTTOM_LAND_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public savePreviousEditorView(I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "title"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "description"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBundleData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-void
.end method

.method public setTagButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setTagButtonText(Ljava/util/ArrayList;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const v4, 0x7f0a0070

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    :goto_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->forceInvalidateTagBtn()V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setTagButtonText(ZLjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, ""

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const v4, 0x7f0a0070

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    :goto_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setVisibility(I)V

    return-void
.end method

.method public updateTags(IZLandroid/content/Intent;)V
    .locals 6

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v3, "tags"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_2
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "tags"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2, p2}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(Ljava/util/ArrayList;Z)V

    const-string v3, "UploadEditorViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [UploadEditorViewManager]: TAG_RESULT_OK, Get Tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
