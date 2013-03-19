.class public interface abstract Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;
.super Ljava/lang/Object;
.source "LandingPageCacheThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/LandingPageCacheThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LandingPageCacheCallBack"
.end annotation


# static fields
.field public static final LIST_FROM_CACHE:I = 0x1

.field public static final LIST_FROM_DB:I = 0x2


# virtual methods
.method public abstract readEnd(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation
.end method
