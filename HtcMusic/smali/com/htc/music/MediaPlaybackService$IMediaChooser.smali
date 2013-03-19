.class public interface abstract Lcom/htc/music/MediaPlaybackService$IMediaChooser;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMediaChooser"
.end annotation


# virtual methods
.method public abstract addRecentAlbumList()V
.end method

.method public abstract getAlbumArtPathFromDB(I)Ljava/lang/String;
.end method

.method public abstract getBufferingPercent()I
.end method

.method public abstract getCursorForArtPath(I)Landroid/database/Cursor;
.end method

.method public abstract getRecentAlbumId()[I
.end method

.method public abstract open([II)V
.end method

.method public abstract openCurrent()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract queryMediaInfo(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract setAudioMetaData(Landroid/database/Cursor;)V
.end method
