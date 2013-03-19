.class public Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RoundedCornerRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;Z)V

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_BackgroundColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;->setBackgroundColor(I)V

    return-void
.end method
