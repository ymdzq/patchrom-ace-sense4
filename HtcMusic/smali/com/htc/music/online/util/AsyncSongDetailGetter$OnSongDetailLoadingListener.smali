.class public interface abstract Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;
.super Ljava/lang/Object;
.source "AsyncSongDetailGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/util/AsyncSongDetailGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSongDetailLoadingListener"
.end annotation


# virtual methods
.method public abstract onFinish(Landroid/content/Context;ILcom/htc/music/online/sinamusic/WrapperSongDetail;)V
.end method

.method public abstract onReturnError(Lcom/htc/music/online/sinamusic/SnsException;)V
.end method

.method public abstract onStart()V
.end method
