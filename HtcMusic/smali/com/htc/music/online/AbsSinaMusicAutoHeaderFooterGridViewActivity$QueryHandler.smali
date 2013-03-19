.class public Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "AbsSinaMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "res"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    .line 652
    const/4 v0, 0x0

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->access$200(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 653
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 657
    sget-object v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "@@@@ onQueryComplete()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p3, p2}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->init(Landroid/database/Cursor;Z)V

    .line 668
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    #setter for: Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z
    invoke-static {v0, v2}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->access$002(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;Z)Z

    .line 669
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0, v2}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->setCategoryProgressVisible(Z)V

    .line 673
    :cond_0
    return-void
.end method
