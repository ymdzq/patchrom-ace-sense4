.class public Lcom/htc/music/online/MusicArrayList;
.super Ljava/lang/Object;
.source "MusicArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/MusicArrayList$1;,
        Lcom/htc/music/online/MusicArrayList$MusicItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mLocalRecentAlbumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/MusicArrayList",
            "<TT;>.MusicItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 34
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private makeMusicItem(Ljava/lang/Object;)Lcom/htc/music/online/MusicArrayList$MusicItem;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/htc/music/online/MusicArrayList",
            "<TT;>.MusicItem;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/htc/music/online/MusicArrayList$MusicItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/MusicArrayList$MusicItem;-><init>(Lcom/htc/music/online/MusicArrayList;Lcom/htc/music/online/MusicArrayList$1;)V

    .line 41
    .local v0, musicItem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    #setter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$102(Lcom/htc/music/online/MusicArrayList$MusicItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method

.method private makeMusicItem(Ljava/lang/Object;Z)Lcom/htc/music/online/MusicArrayList$MusicItem;
    .locals 2
    .parameter
    .parameter "isOnline"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lcom/htc/music/online/MusicArrayList",
            "<TT;>.MusicItem;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/htc/music/online/MusicArrayList$MusicItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/MusicArrayList$MusicItem;-><init>(Lcom/htc/music/online/MusicArrayList;Lcom/htc/music/online/MusicArrayList$1;)V

    .line 48
    .local v0, musicItem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    #setter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$102(Lcom/htc/music/online/MusicArrayList$MusicItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    if-eqz p2, :cond_0

    .line 50
    const/4 v1, 0x1

    #setter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z
    invoke-static {v0, v1}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$202(Lcom/htc/music/online/MusicArrayList$MusicItem;Z)Z

    .line 52
    :cond_0
    return-object v0
.end method

.method private trasfetCollectionToMusicItem(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/music/online/MusicArrayList",
            "<TT;>.MusicItem;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, musicItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 58
    .local v3, t:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, v3}, Lcom/htc/music/online/MusicArrayList;->makeMusicItem(Ljava/lang/Object;)Lcom/htc/music/online/MusicArrayList$MusicItem;

    move-result-object v1

    .line 59
    .local v1, musicItem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v1           #musicItem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    .end local v3           #t:Ljava/lang/Object;,"TT;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Lcom/htc/music/online/MusicArrayList;->makeMusicItem(Ljava/lang/Object;)Lcom/htc/music/online/MusicArrayList$MusicItem;

    move-result-object v0

    .line 108
    .local v0, musicItem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    iget-object v1, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/htc/music/online/MusicArrayList;->makeMusicItem(Ljava/lang/Object;)Lcom/htc/music/online/MusicArrayList$MusicItem;

    move-result-object v0

    .line 97
    .local v0, musicItem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    iget-object v1, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-direct {p0, p1}, Lcom/htc/music/online/MusicArrayList;->trasfetCollectionToMusicItem(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 125
    .local v0, itemList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;>;"
    iget-object v1, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public addOnline(ILjava/lang/Object;Z)V
    .locals 2
    .parameter "location"
    .parameter
    .parameter "isOnline"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;Z)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2, p3}, Lcom/htc/music/online/MusicArrayList;->makeMusicItem(Ljava/lang/Object;Z)Lcom/htc/music/online/MusicArrayList$MusicItem;

    move-result-object v0

    .line 113
    .local v0, musicItem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    iget-object v1, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public addOnline(Ljava/lang/Object;Z)Z
    .locals 2
    .parameter
    .parameter "isOnline"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1, p2}, Lcom/htc/music/online/MusicArrayList;->makeMusicItem(Ljava/lang/Object;Z)Lcom/htc/music/online/MusicArrayList$MusicItem;

    move-result-object v0

    .line 102
    .local v0, musicItem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    iget-object v1, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 130
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    iget-object v0, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 135
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    const/4 v0, 0x0

    .line 138
    .local v0, objCast:Ljava/lang/Object;,"TT;"
    move-object v0, p1

    .line 143
    iget-object v1, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/music/online/MusicArrayList;->makeMusicItem(Ljava/lang/Object;)Lcom/htc/music/online/MusicArrayList$MusicItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    const/4 v1, 0x0

    .line 164
    .local v1, t:Ljava/lang/Object;,"TT;"
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/online/MusicArrayList$MusicItem;

    #getter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$100(Lcom/htc/music/online/MusicArrayList$MusicItem;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    .end local v1           #t:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v1

    .line 165
    .restart local v1       #t:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ClassCastException"

    const-string v3, "reCreate MusicArrayList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsOnlineList()Ljava/util/List;
    .locals 4

    .prologue
    .line 66
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, isOnlineList:Ljava/util/List;
    iget-object v3, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/online/MusicArrayList$MusicItem;

    .line 68
    .local v2, m:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    #getter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z
    invoke-static {v2}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$200(Lcom/htc/music/online/MusicArrayList$MusicItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v2           #m:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    :cond_1
    return-object v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 186
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/online/MusicArrayList;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;Z)I
    .locals 7
    .parameter "obj"
    .parameter "isOnline"

    .prologue
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    const/4 v4, -0x1

    .line 190
    iget-object v5, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2

    :cond_0
    move v1, v4

    .line 213
    :cond_1
    :goto_0
    return v1

    .line 193
    :cond_2
    iget-object v5, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 195
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 196
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/online/MusicArrayList$MusicItem;

    .line 197
    .local v2, musicitem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    #getter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$100(Lcom/htc/music/online/MusicArrayList$MusicItem;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    #getter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z
    invoke-static {v2}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$200(Lcom/htc/music/online/MusicArrayList$MusicItem;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eq v5, p2, :cond_1

    .line 195
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    .end local v2           #musicitem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v5, "ClassCastException"

    const-string v6, "reCreate MusicArrayList"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_4
    move v1, v4

    .line 213
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 218
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    iget-object v0, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    iget-object v1, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicArrayList$MusicItem;

    .line 248
    .local v0, musicitem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    #getter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$100(Lcom/htc/music/online/MusicArrayList$MusicItem;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 253
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    const/4 v1, 0x0

    .line 255
    .local v1, objCast:Ljava/lang/Object;,"TT;"
    move-object v1, p1

    .line 260
    invoke-direct {p0, v1}, Lcom/htc/music/online/MusicArrayList;->makeMusicItem(Ljava/lang/Object;)Lcom/htc/music/online/MusicArrayList$MusicItem;

    move-result-object v0

    .line 261
    .local v0, musicitem:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    iget-object v2, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setIsOnline(IZ)V
    .locals 1
    .parameter "pos"
    .parameter "isOnline"

    .prologue
    .line 180
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    iget-object v0, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicArrayList$MusicItem;

    #setter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z
    invoke-static {v0, p2}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$202(Lcom/htc/music/online/MusicArrayList$MusicItem;Z)Z

    .line 181
    return-void
.end method

.method public setIsOnlineList(Ljava/lang/String;)V
    .locals 6
    .parameter "isOnlineListString"

    .prologue
    .line 78
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    const-string v2, "isOnlineListString"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    return-void

    .line 82
    :cond_1
    const-string v2, "["

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 83
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, items:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 88
    const-string v2, "true"

    aget-object v3, v1, v0

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/online/MusicArrayList;->setIsOnline(IZ)V

    .line 87
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 283
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    iget-object v0, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public trasfertoLocalAlbumId()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, this:Lcom/htc/music/online/MusicArrayList;,"Lcom/htc/music/online/MusicArrayList<TT;>;"
    iget-object v3, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 318
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    :cond_1
    return-object v2

    .line 320
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v2, trasferredLocalAlbumId:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iget-object v3, p0, Lcom/htc/music/online/MusicArrayList;->mLocalRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/online/MusicArrayList$MusicItem;

    .line 322
    .local v1, m:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    #getter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z
    invoke-static {v1}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$200(Lcom/htc/music/online/MusicArrayList$MusicItem;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 323
    #getter for: Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/music/online/MusicArrayList$MusicItem;->access$100(Lcom/htc/music/online/MusicArrayList$MusicItem;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
