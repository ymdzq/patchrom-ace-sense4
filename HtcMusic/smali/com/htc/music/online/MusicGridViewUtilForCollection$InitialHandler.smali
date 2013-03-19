.class final Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;
.super Landroid/os/Handler;
.source "MusicGridViewUtilForCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewUtilForCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitialHandler"
.end annotation


# instance fields
.field protected quitImmediately:Z

.field final synthetic this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    .line 463
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;->quitImmediately:Z

    .line 464
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 468
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    #getter for: Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;
    invoke-static {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->access$200(Lcom/htc/music/online/MusicGridViewUtilForCollection;)Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    #getter for: Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;
    invoke-static {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->access$200(Lcom/htc/music/online/MusicGridViewUtilForCollection;)Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getCountOnlyParent()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 472
    iget-boolean v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;->quitImmediately:Z

    if-eqz v1, :cond_1

    .line 477
    .end local v0           #i:I
    :cond_0
    return-void

    .line 469
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
