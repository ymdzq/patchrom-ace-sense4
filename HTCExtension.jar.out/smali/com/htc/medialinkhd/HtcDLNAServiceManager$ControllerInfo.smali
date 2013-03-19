.class public final Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/medialinkhd/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# instance fields
.field private curContentID:Ljava/lang/String;

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mIndex:J

.field private mMute:Z

.field private mPlayState:I

.field private mPosition:I

.field private mRendererId:Ljava/lang/String;

.field private mRendererName:Ljava/lang/String;

.field private mRepeat:I

.field private mShuffle:Z

.field private mThumbnailPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTotal:J

.field private mVolume:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1062
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iput-wide v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1103
    iput-wide v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1121
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return-void
.end method

.method static synthetic access$1402(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1062
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1062
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1062
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return p1
.end method

.method static synthetic access$1602(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1062
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1062
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1062
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1062
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1062
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return p1
.end method

.method static synthetic access$2002(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1062
    iput-wide p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1062
    iput-wide p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    return-wide p1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 1215
    iget-wide v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 1162
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1236
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1370
    return-void
.end method

.method public setArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1393
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0
    .parameter "aCurContentID"

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 1347
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    .line 1427
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 1193
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    .line 1194
    return-void
.end method

.method public setIndex(J)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1204
    iput-wide p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1205
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 1258
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    .line 1259
    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1172
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1173
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1247
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1248
    return-void
.end method

.method public setRendererName(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererName"

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1326
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .parameter "repeat"

    .prologue
    .line 1280
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 1281
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0
    .parameter "shuffle"

    .prologue
    .line 1269
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 1270
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1438
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1416
    return-void
.end method

.method public setTotal(J)V
    .locals 0
    .parameter "total"

    .prologue
    .line 1226
    iput-wide p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1227
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 1292
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 1293
    return-void
.end method
