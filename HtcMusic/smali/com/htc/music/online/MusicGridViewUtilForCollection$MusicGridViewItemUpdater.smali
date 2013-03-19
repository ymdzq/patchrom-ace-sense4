.class public interface abstract Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;
.super Ljava/lang/Object;
.source "MusicGridViewUtilForCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewUtilForCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicGridViewItemUpdater"
.end annotation


# virtual methods
.method public abstract getChildList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImagePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract notifyAllDataChange()V
.end method

.method public abstract notifyViewItemDataChange(I)V
.end method
