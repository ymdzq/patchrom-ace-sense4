.class Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;
.super Ljava/lang/Object;
.source "MusicGridViewUtilForCollection.java"

# interfaces
.implements Lcom/htc/sunny2/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewUtilForCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildMediaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/IMediaList",
        "<",
        "Lcom/htc/music/widget/gridview/MusicGridViewMediaData;",
        ">;"
    }
.end annotation


# instance fields
.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Ljava/util/List;)V
    .locals 0
    .parameter
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
    .line 703
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 704
    invoke-virtual {p0, p2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->updateMediaList(Ljava/util/List;)V

    .line 705
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 757
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    return-object v0
.end method

.method public updateMediaList(Ljava/util/List;)V
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
    .line 708
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    if-nez p1, :cond_1

    .line 709
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->updateMediaListData(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateMediaListData(Ljava/util/List;)V
    .locals 7
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
    .line 722
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    if-eqz p1, :cond_2

    .line 724
    const/4 v2, 0x0

    .line 726
    .local v2, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 727
    .local v0, count:I
    const-string v4, "[MusicGridViewUtil]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    if-lez v0, :cond_0

    .line 729
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .restart local v2       #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 732
    new-instance v5, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;

    iget-object v6, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/online/sinamusic/WrapperSonglist;

    invoke-direct {v5, v6, v1, v4}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;ILcom/htc/music/online/sinamusic/WrapperSonglist;)V

    invoke-virtual {v2, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 741
    .local v3, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;>;"
    iput-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 742
    if-eqz v3, :cond_1

    .line 743
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 745
    :cond_1
    const/4 v2, 0x0

    .line 747
    .end local v0           #count:I
    .end local v2           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;>;"
    .end local v3           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;>;"
    :cond_2
    return-void
.end method
