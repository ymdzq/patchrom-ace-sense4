.class Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentAlbumQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "res"

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    .line 1559
    const/4 v0, 0x0

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity;->access$5100(Lcom/htc/music/LandingPageActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 1560
    return-void
.end method

.method private checkCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1647
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRecentAlbum(Landroid/database/Cursor;Z)V
    .locals 13
    .parameter "cursor"
    .parameter "isOnline"

    .prologue
    .line 1651
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->checkCursor(Landroid/database/Cursor;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1683
    :cond_0
    return-void

    .line 1652
    :cond_1
    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1653
    .local v10, mRecentAlbumListSize:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1655
    .local v5, existList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1656
    .local v7, idIdx:I
    const-string v11, "album"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1657
    .local v2, albumIdx:I
    const-string v11, "artist"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1658
    .local v3, artistIdx:I
    const-string v11, "album_art"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1660
    .local v0, albumArtIdx:I
    const-string v11, "album_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1662
    .local v1, albumID:I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 1663
    .local v4, cursorCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 1664
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    if-ge v9, v10, :cond_2

    .line 1665
    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity$BaseItem;

    .line 1666
    .local v8, item:Lcom/htc/music/LandingPageActivity$BaseItem;
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5800(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v11

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v11, v12, :cond_3

    #getter for: Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5500(Lcom/htc/music/LandingPageActivity$BaseItem;)Z

    move-result v11

    if-ne v11, p2, :cond_3

    .line 1667
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/htc/music/LandingPageActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 1668
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/htc/music/LandingPageActivity$BaseItem;->setSecondaryText(Ljava/lang/String;)V

    .line 1669
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/htc/music/LandingPageActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 1670
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5800(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    .end local v8           #item:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1663
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1664
    .restart local v8       #item:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1677
    .end local v8           #item:Lcom/htc/music/LandingPageActivity$BaseItem;
    .end local v9           #j:I
    :cond_4
    const/4 v6, 0x0

    :goto_2
    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 1678
    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/LandingPageActivity$BaseItem;

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5800(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/LandingPageActivity$BaseItem;

    #getter for: Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5500(Lcom/htc/music/LandingPageActivity$BaseItem;)Z

    move-result v11

    if-ne v11, p2, :cond_5

    .line 1679
    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1680
    add-int/lit8 v6, v6, -0x1

    .line 1677
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected onOnlineQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1687
    const-string v0, "[LandingPage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecentAlbumQueryHandler, onQueryComplete(), token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #setter for: Lcom/htc/music/LandingPageActivity;->mOnlineAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/htc/music/LandingPageActivity;->access$5202(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1689
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    .line 1564
    const-string v7, "[LandingPage]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RecentAlbumQueryHandler, onQueryComplete(), token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-direct {p0, p3}, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->checkCursor(Landroid/database/Cursor;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mOnlineAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5200(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->checkCursor(Landroid/database/Cursor;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1568
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$2300(Lcom/htc/music/LandingPageActivity;)V

    .line 1569
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1570
    new-instance v0, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1571
    .local v0, addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    const/4 v7, -0x2

    invoke-virtual {v0, v7}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 1572
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    .end local v0           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5600(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1615
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5600(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$5700(Lcom/htc/music/LandingPageActivity;)Landroid/database/ContentObserver;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1619
    :goto_1
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5600(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1620
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7, v8}, Lcom/htc/music/LandingPageActivity;->access$5602(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1623
    :cond_1
    if-eqz p3, :cond_2

    .line 1624
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5700(Lcom/htc/music/LandingPageActivity;)Landroid/database/ContentObserver;

    move-result-object v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1627
    :cond_2
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #setter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7, p3}, Lcom/htc/music/LandingPageActivity;->access$5602(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1630
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mOnlineAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5200(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->checkRecentAlbum(Landroid/database/Cursor;Z)V

    .line 1633
    const/4 v7, 0x0

    invoke-direct {p0, p3, v7}, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->checkRecentAlbum(Landroid/database/Cursor;Z)V

    .line 1640
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1641
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->notifyDataSetChanged()V

    .line 1643
    :cond_3
    return-void

    .line 1573
    :cond_4
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5300(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1574
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1575
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5300(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 1576
    new-instance v0, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1580
    .restart local v0       #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5300(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v7

    aget v7, v7, v4

    invoke-virtual {v0, v7}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1587
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mIsOnlineList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5400(Lcom/htc/music/LandingPageActivity;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mIsOnlineList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5400(Lcom/htc/music/LandingPageActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_5

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mIsOnlineList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5400(Lcom/htc/music/LandingPageActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1588
    #setter for: Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z
    invoke-static {v0, v10}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5502(Lcom/htc/music/LandingPageActivity$BaseItem;Z)Z

    .line 1591
    :cond_5
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1582
    :catch_0
    move-exception v3

    .line 1583
    .local v3, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "[LandingPage]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete, ArrayIndexOutOfBoundsException, ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1594
    .end local v0           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    .end local v3           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4           #i:I
    :cond_6
    const-string v7, "_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1595
    .local v6, ididx:I
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1596
    .local v1, count:I
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1597
    const-string v7, "[LandingPage]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1600
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    new-array v8, v1, [I

    #setter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v7, v8}, Lcom/htc/music/LandingPageActivity;->access$5302(Lcom/htc/music/LandingPageActivity;[I)[I

    .line 1601
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v1, :cond_0

    .line 1602
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1603
    .local v5, id:I
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5300(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v7

    aput v5, v7, v4

    .line 1605
    new-instance v0, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1606
    .restart local v0       #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$5300(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v7

    aget v7, v7, v4

    invoke-virtual {v0, v7}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 1607
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1601
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1616
    .end local v0           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #ididx:I
    :catch_1
    move-exception v2

    .line 1617
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "[LandingPage]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAlbumCursor error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
