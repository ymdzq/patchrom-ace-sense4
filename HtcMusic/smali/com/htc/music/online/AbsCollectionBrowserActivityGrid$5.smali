.class Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$5;
.super Ljava/lang/Object;
.source "AbsCollectionBrowserActivityGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$5;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 583
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$5;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsStartMutiProcessActivity:Z
    invoke-static {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$2102(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    .line 584
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$5;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    const/16 v1, 0xc9

    invoke-static {v0, v1, v2, v2}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 585
    return-void
.end method
