.class Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;
.super Ljava/lang/Object;
.source "MusicGridViewUtilForCollection.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/sunny2/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewUtilForCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentMediaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/SectionIndexer;",
        "Lcom/htc/sunny2/IMediaList",
        "<",
        "Lcom/htc/music/widget/gridview/MusicGridViewMediaData;",
        ">;"
    }
.end annotation


# instance fields
.field private childMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

.field private expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

.field protected mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexPositionMap:Landroid/util/SparseIntArray;

.field private mIndexStringArray:[Ljava/lang/String;

.field private mSelectedCount:I

.field final synthetic this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;


# direct methods
.method private constructor <init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;)V
    .locals 1
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 824
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    .line 826
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Lcom/htc/music/online/MusicGridViewUtilForCollection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;)V

    return-void
.end method


# virtual methods
.method public getChildIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    if-gt p1, v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    sub-int v0, p1, v0

    .line 999
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1005
    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v1, :cond_0

    .line 1006
    const-string v1, "[MusicGridViewUtil]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParentMediaList, childsCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/2addr v0, v1

    .line 1010
    .end local v0           #count:I
    :cond_0
    return v0

    .line 1004
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCountOnlyParent()I
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDeselectedCount()I
    .locals 2

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getCount()I

    move-result v0

    iget v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    return-object v0
.end method

.method public getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v1, :cond_1

    .line 1017
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getChildIndex(I)I

    move-result v0

    .line 1018
    .local v0, childIndex:I
    if-ltz v0, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->childMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    invoke-virtual {v1, v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v1

    .line 1034
    .end local v0           #childIndex:I
    :goto_0
    return-object v1

    .line 1021
    .restart local v0       #childIndex:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getParentIndex(I)I

    move-result p1

    .line 1032
    .end local v0           #childIndex:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 817
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    return-object v0
.end method

.method public getItemOnlyParent(I)Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    .locals 1
    .parameter "parentItemIndex"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 924
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    goto :goto_0
.end method

.method public getParentIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ne v0, p1, :cond_1

    .line 989
    :cond_0
    :goto_0
    return p1

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    if-lt p1, v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    if-le p1, v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    sub-int/2addr p1, v0

    goto :goto_0

    .line 986
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget p1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 1076
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionObject()[Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1040
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v5, indexStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    if-nez v9, :cond_0

    .line 1042
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    .line 1044
    :cond_0
    iget-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 1047
    const/4 v0, 0x0

    .line 1049
    .local v0, cnt:I
    iget-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    iget-object v9, v9, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1050
    .local v7, src:C
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 1051
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 1052
    .local v8, str:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #cnt:I
    .local v1, cnt:I
    invoke-virtual {v9, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 1054
    const/4 v4, 0x1

    .local v4, i:I
    iget-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1055
    iget-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    iget-object v9, v9, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1056
    .local v3, dest:C
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 1057
    const/16 v9, 0x5a

    if-le v3, v9, :cond_2

    .line 1065
    .end local v3           #dest:C
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 1066
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 1067
    iget-object v10, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v6

    .line 1066
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1058
    .end local v6           #j:I
    .restart local v3       #dest:C
    :cond_2
    if-eq v7, v3, :cond_4

    .line 1059
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 1060
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    invoke-virtual {v9, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 1062
    move v7, v3

    .line 1054
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #cnt:I
    .restart local v1       #cnt:I
    goto :goto_0

    .line 1071
    .end local v1           #cnt:I
    .end local v2           #count:I
    .end local v3           #dest:C
    .end local v4           #i:I
    .end local v7           #src:C
    .end local v8           #str:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    return-object v9

    .restart local v1       #cnt:I
    .restart local v2       #count:I
    .restart local v3       #dest:C
    .restart local v4       #i:I
    .restart local v7       #src:C
    .restart local v8       #str:Ljava/lang/String;
    :cond_4
    move v0, v1

    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    goto :goto_2
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    return v0
.end method

.method public remove(I)Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    .locals 2
    .parameter "parentIndex"

    .prologue
    .line 903
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 906
    .local v0, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    invoke-virtual {p0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 908
    .end local v0           #mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public remove(Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;)V
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 914
    invoke-virtual {p0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 916
    :cond_0
    return-void
.end method

.method public resetSelectedCount()V
    .locals 1

    .prologue
    .line 974
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    .line 975
    return-void
.end method

.method public setChildMediaList(Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;)V
    .locals 0
    .parameter "childList"

    .prologue
    .line 840
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->childMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaList;

    .line 841
    return-void
.end method

.method public setItemDeselected(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 954
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 955
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 960
    iget v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    goto :goto_0
.end method

.method public setItemSelected(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 942
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 943
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 948
    iget v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    goto :goto_0
.end method

.method public switchItemSelectedStatus(I)I
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 928
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 929
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 932
    iget v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    .line 938
    :cond_0
    :goto_0
    iget v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    return v1

    .line 934
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 935
    iget v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mSelectedCount:I

    goto :goto_0
.end method

.method public updateExpGridViewParams(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 846
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 847
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 848
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 849
    return-void
.end method

.method public updateMediaList(Ljava/util/List;)V
    .locals 0
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
    .line 828
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    if-nez p1, :cond_0

    .line 837
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->updateMediaListData(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateMediaListData(Ljava/util/List;)V
    .locals 11
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
    .line 856
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    iget-object v7, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    .line 857
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 858
    if-eqz p1, :cond_1

    .line 859
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 861
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 862
    iget-object v8, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    new-instance v9, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    iget-object v10, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/online/sinamusic/WrapperSonglist;

    invoke-direct {v9, v10, v2, v7}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;ILcom/htc/music/online/sinamusic/WrapperSonglist;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 900
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_1
    :goto_1
    return-void

    .line 868
    :cond_2
    if-eqz p1, :cond_1

    .line 869
    iget-object v6, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 871
    .local v6, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0       #count:I
    if-lez v0, :cond_6

    .line 872
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v5, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;>;"
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 876
    new-instance v4, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    iget-object v8, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/online/sinamusic/WrapperSonglist;

    invoke-direct {v4, v8, v2, v7}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;-><init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;ILcom/htc/music/online/sinamusic/WrapperSonglist;)V

    .line 877
    .local v4, mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;

    .line 878
    .local v1, data:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    iget-object v7, v4, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistUrl:Ljava/lang/String;

    iget-object v8, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 879
    iget-object v7, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistImagePath:Ljava/lang/String;

    iput-object v7, v4, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistImagePath:Ljava/lang/String;

    .line 880
    iget v7, v1, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mNumberOfChilds:I

    iput v7, v4, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mNumberOfChilds:I

    .line 881
    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->isSelected()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->setSelected(Z)V

    .line 882
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 886
    .end local v1           #data:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 889
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mediaData:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
    :cond_5
    iput-object v5, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 892
    .end local v2           #i:I
    .end local v5           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;>;"
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 893
    const/4 v6, 0x0

    .line 894
    invoke-virtual {p0}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    goto :goto_1
.end method
