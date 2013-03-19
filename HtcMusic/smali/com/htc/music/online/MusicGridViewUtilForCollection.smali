.class public Lcom/htc/music/online/MusicGridViewUtilForCollection;
.super Ljava/lang/Object;
.source "MusicGridViewUtilForCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/MusicGridViewUtilForCollection$1;,
        Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;,
        Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;,
        Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;,
        Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;,
        Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;,
        Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;,
        Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;
    }
.end annotation


# static fields
.field private static final SELF_TERMINATE_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "[MusicGridViewUtil]"


# instance fields
.field protected mChildIdField:I

.field protected mChildImagePathField:I

.field private mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

.field protected mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field protected mChildNameField:I

.field protected mGridViewLayoutOrientation:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitialHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;

.field private mInitialThread:Landroid/os/HandlerThread;

.field protected mMusicGridViewItemUpdater:Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;

.field private mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

.field private mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

.field protected mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V
    .locals 2
    .parameter "parentType"
    .parameter "childType"
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildIdField:I

    .line 48
    iput v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildNameField:I

    .line 49
    iput v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildImagePathField:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mGridViewLayoutOrientation:I

    .line 54
    iput-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mHandlerThread:Landroid/os/HandlerThread;

    .line 55
    iput-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialThread:Landroid/os/HandlerThread;

    .line 65
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    .line 66
    iput-object p2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicGridViewUtilWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mHandlerThread:Landroid/os/HandlerThread;

    .line 69
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    .line 71
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "[MusicGridViewUtil]"

    const-string v1, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicGridViewInitialWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialThread:Landroid/os/HandlerThread;

    .line 77
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;

    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;

    .line 80
    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/online/MusicGridViewUtilForCollection;)Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/online/MusicGridViewUtilForCollection;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->updateAlbumartForGenreArtist(I)V

    return-void
.end method

.method private updateAlbumartForGenreArtist(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mMusicGridViewItemUpdater:Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;

    invoke-interface {v0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;->notifyViewItemDataChange(I)V

    .line 451
    return-void
.end method

.method private updateExpandableGridViewParameters(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 2
    .parameter "globalIndex"
    .parameter "gridView"
    .parameter "expParams"

    .prologue
    .line 250
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v0, :cond_3

    .line 251
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ne v0, p1, :cond_0

    .line 252
    invoke-virtual {p3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 272
    .end local p3
    :goto_0
    return-object p3

    .line 254
    .restart local p3
    :cond_0
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    if-ge p1, v0, :cond_1

    .line 255
    iput p1, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 265
    :goto_1
    iget v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mGridViewLayoutOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 266
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumColumn()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getBestChildInsertIndex(II)I

    move-result v0

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 270
    :goto_2
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 271
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->getCount()I

    move-result v0

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    goto :goto_0

    .line 256
    :cond_1
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    if-le p1, v0, :cond_2

    .line 257
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    sub-int v0, p1, v0

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    goto :goto_1

    .line 259
    :cond_2
    const/4 p3, 0x0

    goto :goto_0

    .line 262
    :cond_3
    iput p1, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    goto :goto_1

    .line 268
    :cond_4
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumRow()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getBestChildInsertIndex(II)I

    move-result v0

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    goto :goto_2
.end method


# virtual methods
.method public deleteChildItem(I)V
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    .line 199
    .local v1, expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    iget-object v2, v2, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    iget v2, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 201
    iget v2, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1           #expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[MusicGridViewUtil]"

    const-string v3, "deleteChildItem : index out of bounds"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteItems(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 7
    .parameter "globalIndex"
    .parameter "gridView"

    .prologue
    .line 137
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v5}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    .line 138
    .local v1, expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getChildIndex(I)I

    move-result v2

    .local v2, j:I
    if-ltz v2, :cond_3

    .line 139
    iget-object v5, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    iget-object v5, v5, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    iget-object v5, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    if-eqz v5, :cond_1

    .line 142
    iget-object v5, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    invoke-virtual {v5}, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 143
    .local v4, msg:Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, v4, Landroid/os/Message;->what:I

    .line 144
    iget-object v5, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v5, v5, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 145
    .local v3, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v3, :cond_0

    .line 146
    const/4 v5, 0x1

    #setter for: Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->needToGetPath:Z
    invoke-static {v3, v5}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->access$002(Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;Z)Z

    .line 148
    :cond_0
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    iget-object v5, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    invoke-virtual {v5, v4}, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    .end local v3           #mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    iget v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 154
    iget v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 155
    invoke-virtual {p2, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 168
    .end local v1           #expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .end local v2           #j:I
    :cond_2
    :goto_0
    return-void

    .line 156
    .restart local v1       #expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .restart local v2       #j:I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentIndex(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 158
    iget-object v5, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v5, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->remove(I)Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 159
    iget v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v5, :cond_2

    .line 160
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 161
    invoke-virtual {p2, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v1           #expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .end local v2           #j:I
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "[MusicGridViewUtil]"

    const-string v6, "deleteItem : index out of bounds"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteParentItem(I)V
    .locals 1
    .parameter "parentIndex"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->remove(I)Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 194
    return-void
.end method

.method public deleteParentItems([ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 5
    .parameter "list"
    .parameter "gridView"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 175
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v3, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    move-result-object v2

    .line 177
    .local v2, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    iget-object v3, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v3, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->remove(Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v2           #mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[MusicGridViewUtil]"

    const-string v4, "deleteItem : index out of bounds"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    iput-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 90
    iput-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mHandlerThread:Landroid/os/HandlerThread;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;->quitImmediately:Z

    .line 95
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 96
    iput-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 101
    iput-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialThread:Landroid/os/HandlerThread;

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v0, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v0, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iput-object v2, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    iget-object v0, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    iget-object v0, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    iput-object v2, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 118
    :cond_5
    return-void
.end method

.method public getChildIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getChildIndex(I)I

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getChildItemCount()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->getCount()I

    move-result v0

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildItemCount(I)I
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v1, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 398
    .local v0, mediatData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v0, :cond_0

    .line 399
    iget v1, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mNumberOfChilds:I

    .line 403
    .end local v0           #mediatData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildItemCount(Lcom/htc/sunny2/IMediaData;)I
    .locals 1
    .parameter "parentMediaData"

    .prologue
    .line 407
    instance-of v0, p1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    if-eqz v0, :cond_0

    .line 408
    check-cast p1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .end local p1
    iget v0, p1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mNumberOfChilds:I

    .line 410
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildMediaDataId(I)Ljava/lang/String;
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    iget-object v0, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;

    iget-object v0, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getChildMediaDataName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    iget-object v1, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;

    .line 333
    .local v0, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;
    if-eqz v0, :cond_0

    .line 334
    iget-object v1, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->mName:Ljava/lang/String;

    .line 336
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Lcom/htc/music/online/MusicGridViewUtilForCollection$1;)V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChildId(I)Ljava/lang/String;
    .locals 2
    .parameter "parentIndex"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v1, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 369
    .local v0, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mFirstChildId:Ljava/lang/String;

    .line 372
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 347
    instance-of v0, p1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    if-eqz v0, :cond_0

    .line 348
    check-cast p1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    .line 349
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;

    if-eqz v0, :cond_1

    .line 350
    check-cast p1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getParentIndex(I)I

    move-result p1

    .line 239
    .end local p1
    :cond_0
    return p1
.end method

.method public getParentItemCount()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getCountOnlyParent()I

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentItemDeselectedCount()I
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getDeselectedCount()I

    move-result v0

    .line 625
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentItemIdFieldSelectedList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v4, :cond_0

    .line 637
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v4}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getCount()I

    move-result v0

    .local v0, count:I
    if-gtz v0, :cond_1

    .line 649
    .end local v0           #count:I
    :cond_0
    return-object v2

    .line 640
    .restart local v0       #count:I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 642
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v4, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 643
    .local v3, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistUrl:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 644
    new-instance v4, Ljava/lang/Integer;

    iget-object v5, v3, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getParentItemSelectedCount()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getSelectedCount()I

    move-result v0

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentItemSelectedList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 653
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v4, :cond_0

    .line 655
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v4}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getCount()I

    move-result v0

    .local v0, count:I
    if-gtz v0, :cond_1

    .line 667
    .end local v0           #count:I
    :cond_0
    return-object v2

    .line 658
    .restart local v0       #count:I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 660
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v4, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 661
    .local v3, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 662
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getParentMediaDataCreator(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 323
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v1, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 324
    .local v0, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mCreatorName:Ljava/lang/String;

    .line 327
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentMediaDataId(I)Ljava/lang/String;
    .locals 2
    .parameter "parentIndex"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v1, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 361
    .local v0, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v0, :cond_0

    .line 362
    iget-object v1, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistUrl:Ljava/lang/String;

    .line 364
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentMediaDataName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v1, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 315
    .local v0, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v0, :cond_0

    .line 316
    iget-object v1, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistName:Ljava/lang/String;

    .line 318
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 340
    instance-of v0, p1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    if-eqz v0, :cond_0

    .line 341
    check-cast p1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentMediaList()Lcom/htc/sunny2/IMediaList;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    return-object v0
.end method

.method public isContainOnlyOneChild(I)Z
    .locals 3
    .parameter "parentIndex"

    .prologue
    const/4 v1, 0x1

    .line 383
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v2, v2, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 384
    .local v0, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mNumberOfChilds:I

    if-ne v2, v1, :cond_0

    .line 385
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGridViewExpanded()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameParentClicked(I)Z
    .locals 1
    .parameter "parentIndex"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareDestroy(Lcom/htc/sunny2/view/SSurfaceView;Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 4
    .parameter "surfaceView"
    .parameter "gridView"

    .prologue
    .line 121
    invoke-virtual {p1, p2}, Lcom/htc/sunny2/view/SSurfaceView;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mInitialHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$InitialHandler;->quitImmediately:Z

    .line 132
    :cond_1
    return-void
.end method

.method public resetParentItemSelectedCount()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->resetSelectedCount()V

    .line 632
    :cond_0
    return-void
.end method

.method public setAllParentItemDeselected()I
    .locals 3

    .prologue
    .line 604
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v2, :cond_1

    .line 605
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getCount()I

    move-result v0

    .line 606
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 607
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v2, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->setItemDeselected(I)V

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    :cond_0
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getSelectedCount()I

    move-result v2

    .line 611
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAllParentItemSelected()I
    .locals 3

    .prologue
    .line 593
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getCount()I

    move-result v0

    .line 595
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 596
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v2, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->setItemSelected(I)V

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getSelectedCount()I

    move-result v2

    .line 600
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setMusicGridViewItemUpdater(Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mMusicGridViewItemUpdater:Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;

    .line 573
    return-void
.end method

.method public switchParentItemSelectedStatus(I)I
    .locals 1
    .parameter "parentIndex"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->switchItemSelectedStatus(I)I

    move-result v0

    .line 589
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateChildMediaList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, childList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Ljava/util/List;)V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    iget-object v0, v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    new-instance v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Ljava/util/List;)V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    goto :goto_0
.end method

.method public updateExpandableGridView(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 6
    .parameter "globalIndex"
    .parameter "gridView"

    .prologue
    .line 290
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v4}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v3

    .line 291
    .local v3, oldParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    invoke-direct {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;-><init>()V

    .line 292
    .local v2, newParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget v4, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    iput v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 293
    iget v4, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    iput v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 294
    iget v4, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iput v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 295
    iget v4, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    iput v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 296
    invoke-direct {p0, p1, p2, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->updateExpandableGridViewParameters(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    .line 297
    iget v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v4, :cond_1

    iget v0, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 298
    .local v0, index:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v4, v4, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 299
    .local v1, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewTitle(Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    iget-object v5, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    invoke-virtual {v4, v5}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->setChildMediaList(Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;)V

    .line 301
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v4, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->updateExpGridViewParams(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 302
    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {p2, v4, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildMediaList(Lcom/htc/sunny2/IMediaList;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 303
    return-void

    .end local v0           #index:I
    .end local v1           #mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    :cond_1
    move v0, p1

    .line 297
    goto :goto_0
.end method

.method public updateExpandableGridView(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V
    .locals 0
    .parameter "globalIndex"
    .parameter "gridView"
    .parameter "layoutOrientation"

    .prologue
    .line 285
    iput p3, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mGridViewLayoutOrientation:I

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->updateExpandableGridView(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 287
    return-void
.end method

.method public updateExpandableGridViewParameters(IILcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 3
    .parameter "parentClickIndex"
    .parameter "parentColumn"
    .parameter "gridView"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    .line 277
    .local v0, expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    invoke-virtual {p3, v1, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getBestChildInsertIndex(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 278
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    invoke-virtual {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 279
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v1, v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->updateExpGridViewParams(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 280
    return-object v0
.end method

.method public updateParentMediaList(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 223
    const-string v0, "[MusicGridViewUtil]"

    const-string v1, "updateParentMediaList(Cursor c) is not supported"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public updateParentMediaList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, parentList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Lcom/htc/music/online/MusicGridViewUtilForCollection$1;)V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->updateMediaList(Ljava/util/List;)V

    .line 220
    return-void
.end method

.method public updateParentViewItem(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 577
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 580
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 581
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mNonUiHandler:Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 583
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
