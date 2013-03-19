.class public Lcom/htc/album/processor/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field public is3D:Z

.field public isInked:Z

.field public mNotSupported:Z

.field public mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mProcessedDateModified:J

.field public mProcessedPath:Ljava/lang/String;

.field public mProcessedSize:J

.field public mProcessedType:Ljava/lang/String;

.field public mProcessedUri:Landroid/net/Uri;

.field public mSourceDateModified:J

.field public mSourcePath:Ljava/lang/String;

.field public mSourceSize:J

.field public mSourceType:Ljava/lang/String;

.field public mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mSourceType:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mSourceUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-wide v2, p0, Lcom/htc/album/processor/FileInfo;->mSourceDateModified:J

    iput-wide v2, p0, Lcom/htc/album/processor/FileInfo;->mSourceSize:J

    iput-boolean v4, p0, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/htc/album/processor/FileInfo;->mProcessedType:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    iput-wide v2, p0, Lcom/htc/album/processor/FileInfo;->mProcessedDateModified:J

    iput-wide v2, p0, Lcom/htc/album/processor/FileInfo;->mProcessedSize:J

    iput-boolean v4, p0, Lcom/htc/album/processor/FileInfo;->is3D:Z

    iput-boolean v4, p0, Lcom/htc/album/processor/FileInfo;->isInked:Z

    return-void
.end method
