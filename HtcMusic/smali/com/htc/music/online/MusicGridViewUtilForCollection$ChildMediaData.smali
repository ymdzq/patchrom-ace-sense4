.class public Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;
.super Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
.source "MusicGridViewUtilForCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewUtilForCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildMediaData"
.end annotation


# instance fields
.field protected mId:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;


# direct methods
.method constructor <init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;ILcom/htc/music/online/sinamusic/WrapperSonglist;)V
    .locals 2
    .parameter
    .parameter "index"
    .parameter "songList"

    .prologue
    const/4 v1, -0x1

    .line 767
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-direct {p0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;-><init>()V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->mPath:Ljava/lang/String;

    .line 768
    iget v0, p1, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildNameField:I

    if-eq v0, v1, :cond_0

    .line 769
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistCreater()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->mName:Ljava/lang/String;

    .line 774
    :cond_0
    iget v0, p1, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mChildIdField:I

    if-eq v0, v1, :cond_1

    .line 775
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->mId:Ljava/lang/String;

    .line 781
    :cond_1
    return-void
.end method


# virtual methods
.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 785
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ChildMediaData;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isItemDataReady()Z
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x1

    return v0
.end method
