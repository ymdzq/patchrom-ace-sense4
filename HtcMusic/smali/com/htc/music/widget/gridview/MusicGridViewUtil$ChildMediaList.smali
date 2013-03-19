.class Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
.super Ljava/lang/Object;
.source "MusicGridViewUtil.java"

# interfaces
.implements Lcom/htc/sunny2/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
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
            "Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "cursor"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 730
    invoke-virtual {p0, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->updateMediaList(Landroid/database/Cursor;)V

    .line 731
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 780
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    return-object v0
.end method

.method public updateMediaList(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 734
    if-nez p1, :cond_1

    .line 735
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$400(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v1

    #calls: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->initChildFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V
    invoke-static {v0, p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$500(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V

    .line 741
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->updateMediaListData(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public updateMediaListData(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 745
    if-eqz p1, :cond_2

    .line 747
    const/4 v2, 0x0

    .line 749
    .local v2, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 750
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

    .line 751
    if-lez v0, :cond_0

    .line 752
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .restart local v2       #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 754
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 755
    new-instance v4, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v4, v5, v1, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;ILandroid/database/Cursor;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 756
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 764
    .local v3, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 765
    if-eqz v3, :cond_1

    .line 766
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 768
    :cond_1
    const/4 v2, 0x0

    .line 770
    .end local v0           #count:I
    .end local v2           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    .end local v3           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    :cond_2
    return-void
.end method
