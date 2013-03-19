.class public Lcom/htc/album/modules/ui/widget/GalleryHostBar;
.super Lcom/htc/album/modules/ui/widget/BaseControlBar;
.source "GalleryHostBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HOST:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/htc/album/modules/ui/widget/BaseControlBar",
        "<THOST;",
        "Lcom/htc/album/modules/ui/widget/HeaderButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    return-void
.end method


# virtual methods
.method public getHost()Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    return-object v0
.end method

.method public getMaxButtonCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
