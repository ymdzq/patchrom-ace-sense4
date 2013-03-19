.class public Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
.super Lcom/htc/widget/MoreExpandableItemInfo;
.source "DLNAExpandableItemInfo.java"


# instance fields
.field private mContainerID:Ljava/lang/String;

.field private mContainerName:Ljava/lang/String;

.field private mExpand:Z

.field private mFileType:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mImg:Landroid/graphics/Bitmap;

.field private mImgPath:Ljava/lang/String;

.field private mIsCancelled:Z

.field private mLevel:I

.field private mName:Ljava/lang/String;

.field private mParentID:Ljava/lang/String;

.field private mPos:J

.field private mStartIdx:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p4, p5, p6}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mPos:J

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p8, p9, p10}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mPos:J

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    iput-wide p6, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p7, p8, p9}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mPos:J

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GetContainerID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method public GetContainerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    return-object v0
.end method

.method public GetExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    return v0
.end method

.method public GetFileType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    return-object v0
.end method

.method public GetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public GetImg()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public GetImgPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetLevel()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    return v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public GetParentID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    return-object v0
.end method

.method public GetPos()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mPos:J

    return-wide v0
.end method

.method public GetStartIdx()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    return-wide v0
.end method

.method public IsContainer()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetContainerID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    return-void
.end method

.method public SetContainerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    return-void
.end method

.method public SetExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    return-void
.end method

.method public SetFileType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    return-void
.end method

.method public SetImg(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public SetImgPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    return-void
.end method

.method public SetLevel(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    return-void
.end method

.method public SetParentID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    return-void
.end method

.method public getCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    return v0
.end method

.method public setCancelled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    return-void
.end method
