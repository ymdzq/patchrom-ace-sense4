.class public abstract Lcom/htc/album/modules/ui/widget/ControlButton;
.super Ljava/lang/Object;
.source "ControlButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/ui/widget/ControlButton$1;,
        Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUTTON:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEF_BUBBLE_SIZE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STYLE_BUBBLE:I = 0x5

.field public static final STYLE_FOOTER_BUTTON:I = 0x3

.field public static final STYLE_HEADER_BUTTON:I = 0x1


# instance fields
.field protected mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

.field protected mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field protected mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

.field protected mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

.field protected mBubbleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mButton:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBUTTON;"
        }
    .end annotation
.end field

.field protected mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

.field protected mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

.field mDisplay:Landroid/view/Display;

.field protected mGroupId:I

.field protected mId:I

.field private mIsdataPlugin:Z

.field private mLockBubbleDirection:I

.field private mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field protected mShareItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

.field protected mStyle:I

.field private mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/ControlButton;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBUTTON;III)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    iput v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mLockBubbleDirection:I

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    iput-boolean v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mIsdataPlugin:Z

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    invoke-direct {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;-><init>(Lcom/htc/album/modules/ui/widget/ControlButton$1;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    iput p2, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mGroupId:I

    iput p3, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    iput p4, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mStyle:I

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/modules/ui/widget/ControlButton;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2

    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageResource(I)V

    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextResource(I)V

    return-object v0
.end method

.method public addBubble(IILjava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2

    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageResource(I)V

    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    return-object v0
.end method

.method public addBubble(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2

    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2

    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    return-void
.end method

.method public clearBubble()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->dismissBubble()V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    return-void
.end method

.method public dismissBubble()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissBubbleWithoutAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismissWithoutAnimation()V

    :cond_0
    return-void
.end method

.method public enableShareDataPlugin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mIsdataPlugin:Z

    return-void
.end method

.method public getButton()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUTTON;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mGroupId:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    return v0
.end method

.method public hasBubble()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isBubbleShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupShowing()Z

    move-result v0

    goto :goto_0
.end method

.method lockBubbleExpandDirection(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mLockBubbleDirection:I

    return-void
.end method

.method protected newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 3

    const/4 v2, 0x5

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Lcom/htc/album/modules/ui/widget/BubbleButton;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/album/modules/ui/widget/BubbleButton;-><init>(Lcom/htc/widget/HtcListItem;III)V

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->isBubbleShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method setId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    return-void
.end method

.method public abstract setImageBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setImageResource(I)V
.end method

.method public setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;->setControlButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    return-void
.end method

.method public setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    return-void
.end method

.method public setSharedAdapter(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    return-void
.end method

.method public abstract setTextResource(I)V
.end method

.method public abstract setTextString(Ljava/lang/String;)V
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showBubble()Z
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->hasBubble()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    if-nez v6, :cond_3

    new-instance v6, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    iget-object v7, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8}, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    :cond_3
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-nez v6, :cond_4

    new-instance v6, Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {v6}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>()V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v7, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorView(Landroid/view/View;)V

    new-instance v6, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    iget-object v7, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {v6, v7}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;-><init>(Lcom/htc/widget/HtcPopupWindowWrapper;)V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    new-instance v6, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

    iget-object v7, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v6, v7, v8}, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;-><init>(Ljava/util/List;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

    new-instance v6, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;-><init>(Lcom/htc/album/modules/ui/widget/ControlButton;Lcom/htc/album/modules/ui/widget/ControlButton$1;)V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    :cond_4
    iget v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mLockBubbleDirection:I

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    :cond_5
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    if-eqz v6, :cond_8

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v2

    :goto_1
    if-eqz v2, :cond_6

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    :cond_6
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    :goto_2
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->setControlBubbleListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->setBubbleItemClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;)V

    iget v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    if-eq v4, v5, :cond_7

    iget-boolean v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mIsdataPlugin:Z

    if-nez v5, :cond_7

    const/high16 v5, 0x60a0

    iget v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    if-ne v5, v6, :cond_b

    :cond_7
    invoke-static {}, Lcom/htc/album/helper/ShareMenuManager;->getShareMultipleAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v0

    new-instance v3, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

    invoke-direct {v3, v5, v0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;-><init>(Lcom/htc/widget/HtcPopupWindowWrapper;Lcom/htc/widget/IHtcShareViaAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnItemClickListener(Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;)V

    :goto_3
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupWindow()V

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-interface {v5}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;->onBubblePopped()V

    goto/16 :goto_0

    :cond_8
    move v2, v5

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mLockBubbleDirection:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    goto :goto_2

    :cond_b
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_3
.end method
