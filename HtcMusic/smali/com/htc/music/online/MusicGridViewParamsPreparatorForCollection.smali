.class public Lcom/htc/music/online/MusicGridViewParamsPreparatorForCollection;
.super Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
.source "MusicGridViewParamsPreparatorForCollection.java"


# instance fields
.field final CACHE_SET:I

.field fileCacheEnable:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "dim"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 7
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/music/online/MusicGridViewParamsPreparatorForCollection;->CACHE_SET:I

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/MusicGridViewParamsPreparatorForCollection;->fileCacheEnable:Z

    .line 12
    return-void
.end method


# virtual methods
.method public enableFileCache()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/MusicGridViewParamsPreparatorForCollection;->fileCacheEnable:Z

    .line 17
    return-void
.end method

.method public getFileCacheSize()I
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x3c

    return v0
.end method

.method public isEnableFileCache()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/htc/music/online/MusicGridViewParamsPreparatorForCollection;->fileCacheEnable:Z

    return v0
.end method
