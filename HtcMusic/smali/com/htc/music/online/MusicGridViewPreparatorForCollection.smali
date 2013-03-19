.class public Lcom/htc/music/online/MusicGridViewPreparatorForCollection;
.super Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.source "MusicGridViewPreparatorForCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/MusicGridViewPreparatorForCollection$1;,
        Lcom/htc/music/online/MusicGridViewPreparatorForCollection$GridCallbackListenerForCollection;,
        Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;
    }
.end annotation


# instance fields
.field private mAsyncDecodeThread:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;

.field protected mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/online/MusicGridViewUtilForCollection;)V
    .locals 1
    .parameter "host"
    .parameter "name"
    .parameter "musicGridViewUtil"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    .line 51
    new-instance v0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$GridCallbackListenerForCollection;

    invoke-direct {v0, p0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$GridCallbackListenerForCollection;-><init>(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;Lcom/htc/sunny2/common/CacheItem;ZLcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->addDecodeTask(Lcom/htc/sunny2/common/CacheItem;ZLcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;I)Lcom/htc/sunny2/common/TextureMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private addDecodeTask(Lcom/htc/sunny2/common/CacheItem;ZLcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 6
    .parameter "item"
    .parameter "isDataPrared"
    .parameter "decodeItem"

    .prologue
    .line 177
    new-instance v2, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct {v2}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 178
    .local v2, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    iget v3, p3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    .line 179
    invoke-virtual {v2, p1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 180
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "isDataReady"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v3, "index"

    iget v4, p3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v3, "subIndex"

    iget v4, p3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    invoke-virtual {v2, v0}, Lcom/htc/sunny2/common/IterationDecodeTask;->setBundle(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v3

    or-int/lit8 v1, v3, 0x30

    .line 187
    .local v1, decodeFlags:I
    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 189
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 190
    sget-boolean v3, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] add task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 194
    :cond_1
    return-void
.end method


# virtual methods
.method protected decodeOriginalFile(J)Z
    .locals 13
    .parameter "limitedTimeMillis"

    .prologue
    .line 102
    sget-object v1, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$1;->$SwitchMap$com$htc$sunny2$widget$gridview$GridViewPreparatorImpl$DecodeState:[I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 173
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v12

    .line 106
    .local v12, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v12, :cond_0

    .line 107
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v10

    .line 108
    .local v10, itemCount:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", identifier "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", preparator list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", media list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->setFailTextureToCurrentTask()V

    .line 110
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 111
    const/4 v1, 0x1

    goto :goto_1

    .line 113
    .end local v10           #itemCount:I
    :cond_0
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v11

    .line 115
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v11, :cond_1

    .line 116
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v12, Lcom/htc/sunny2/IMediaData;

    .line 117
    .restart local v12       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v12, :cond_2

    .line 118
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v10

    .line 119
    .restart local v10       #itemCount:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", subIdx "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", identifier "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", preparator list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", media list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->setFailTextureToCurrentTask()V

    .line 121
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 122
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 125
    .end local v10           #itemCount:I
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v10

    .line 126
    .restart local v10       #itemCount:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] List is null, index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", subIdx "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", identifier "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", preparator list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", media list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->setFailTextureToCurrentTask()V

    .line 128
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 129
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 133
    .end local v10           #itemCount:I
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_2
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, filePath:Ljava/lang/String;
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->isItemDataReady()Z

    move-result v9

    .line 135
    .local v9, isDataPrared:Z
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 136
    sget-boolean v1, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] decodeItem index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", subIdx "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", filePath = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 141
    invoke-virtual {p0, v12}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V

    .line 142
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 145
    :cond_4
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v4

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 146
    .local v0, tempItem:Lcom/htc/sunny2/common/CacheItem;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 147
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 148
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 149
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 150
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 151
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 152
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 153
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 154
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 157
    const/4 v1, 0x2

    iget v2, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    if-eq v1, v2, :cond_5

    .line 159
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-direct {p0, v0, v9, v1}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->addDecodeTask(Lcom/htc/sunny2/common/CacheItem;ZLcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 170
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->setFailTextureToCurrentTask(Z)V

    goto/16 :goto_0

    .line 162
    :cond_5
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mAsyncDecodeThread:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;

    if-nez v1, :cond_6

    .line 163
    new-instance v1, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;

    invoke-direct {v1, p0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;-><init>(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)V

    iput-object v1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mAsyncDecodeThread:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;

    .line 164
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mAsyncDecodeThread:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->start()V

    .line 166
    :cond_6
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mAsyncDecodeThread:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1, v0, v12, v9, v2}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->addDecodeItem(Lcom/htc/sunny2/common/CacheItem;Lcom/htc/sunny2/IMediaData;ZLcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    goto :goto_2

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public free()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mAsyncDecodeThread:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mAsyncDecodeThread:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->exitThread()V

    .line 386
    :cond_0
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->free()V

    .line 387
    return-void
.end method

.method protected textureReuseForNewTextureMap(Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/IMediaList;I)V
    .locals 10
    .parameter "oldMap"
    .parameter "newMap"
    .parameter "medialist"
    .parameter "subIdx"

    .prologue
    .line 57
    if-nez p1, :cond_1

    .line 100
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v4, 0x0

    .line 60
    .local v4, originalOldMapSize:I
    const/4 v5, 0x0

    .line 62
    .local v5, recycledCount:I
    invoke-virtual {p1}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v4

    .line 64
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget-object v8, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v8}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getChildItemCount()I

    move-result v8

    add-int v0, v7, v8

    .line 65
    .local v0, bottomIndex:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v0, v7, :cond_2

    .line 66
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v0, v7, -0x1

    .line 67
    if-gez v0, :cond_2

    .line 68
    const/4 v0, 0x0

    .line 72
    :cond_2
    iget-object v7, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v7}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    .line 74
    .local v1, expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .local v2, i:I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 76
    invoke-interface {p3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 77
    .local v3, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v3, :cond_4

    .line 79
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[textureReuseForNewTextureMap] null media data, item count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", item index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_4
    instance-of v7, v3, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    if-eqz v7, :cond_5

    .line 84
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 85
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_3

    .line 87
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v2, v6, v7}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 91
    .end local v6           #texture:Lcom/htc/sunny2/Texture;
    :cond_5
    iget-object v7, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v7}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->isGridViewExpanded()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 93
    .restart local v6       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_3

    .line 95
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v2, v6, v7}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public updateMusicGridViewUtil(Lcom/htc/music/online/MusicGridViewUtilForCollection;)V
    .locals 0
    .parameter "musicGridViewUtil"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    .line 46
    return-void
.end method
