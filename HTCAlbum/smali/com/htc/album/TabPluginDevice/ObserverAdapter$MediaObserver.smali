.class Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;
.super Landroid/database/ContentObserver;
.source "ObserverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaObserver"
.end annotation


# static fields
.field private static final DELAY_TIMER:I = 0xbb8


# instance fields
.field private mIsChanged:Z

.field private mPreviousTime:J

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/ObserverAdapter;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mIsChanged:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method public isChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mIsChanged:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 10

    const/16 v9, 0x138f

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mIsChanged:Z

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->access$000(Lcom/htc/album/TabPluginDevice/ObserverAdapter;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    invoke-virtual {v5, v9}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onRemoveMessage(I)V

    const/16 v2, 0xbb8

    const-wide/16 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    :cond_0
    iget-wide v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    sub-long v3, v0, v5

    const-wide/16 v5, 0xbb8

    cmp-long v5, v5, v3

    if-gtz v5, :cond_1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6, v2}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onPostMessage(ILjava/lang/Object;I)V

    const-string v5, "ObserverAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ObserverAdapter][onChange]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ObserverAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ObserverAdapter][onChange]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ObserverAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ObserverAdapter][onChange]: delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
