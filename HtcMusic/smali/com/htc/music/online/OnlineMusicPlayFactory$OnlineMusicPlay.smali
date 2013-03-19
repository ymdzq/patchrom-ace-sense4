.class public interface abstract Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;
.super Ljava/lang/Object;
.source "OnlineMusicPlayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/OnlineMusicPlayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnlineMusicPlay"
.end annotation


# virtual methods
.method public abstract playSongAll(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;I)V
.end method

.method public abstract playSongAll(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;I)V"
        }
    .end annotation
.end method
