.class public Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;
.super Ljava/lang/Object;
.source "CollectionSwitcherAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCollectionSwitcherItemClickListener"
.end annotation


# instance fields
.field mCollectionSwitcherAdapter:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;

.field mContext:Landroid/content/Context;

.field protected mHistoryManager:Lcom/htc/music/util/HistoryManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "categorySwitcherAdapter"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V
    .locals 2
    .parameter "context"
    .parameter "collectionSwitcherAdapter"
    .parameter "historyManager"

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mContext:Landroid/content/Context;

    .line 198
    iput-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mCollectionSwitcherAdapter:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;

    .line 199
    iput-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 209
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context and categorySwitcherAdapter shouldn\'t be null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mCollectionSwitcherAdapter:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;

    .line 215
    iput-object p3, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 216
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mCollectionSwitcherAdapter:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;

    if-eqz v2, :cond_0

    .line 229
    if-ltz p3, :cond_2

    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mCollectionSwitcherAdapter:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v2, v2

    if-gt v2, p3, :cond_3

    .line 230
    :cond_2
    const-string v2, "[CategorySwitcherAdapter]"

    const-string v3, "click position out of bound!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_3
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mCollectionSwitcherAdapter:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v2, p3

    .line 236
    .local v1, source:Lcom/htc/music/util/SourceItem;
    iget-object v2, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v3, "StartNewActivity"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 237
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_4

    .line 238
    iget-object v2, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v3, "ShowActivityTitle"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_5

    .line 244
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-interface {v2, v3, v4}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 248
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v3, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/music/util/HistoryManager;->saveLastCollectionItemTag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_5
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
