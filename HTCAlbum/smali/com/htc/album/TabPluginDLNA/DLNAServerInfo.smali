.class public Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
.super Ljava/lang/Object;
.source "DLNAServerInfo.java"


# instance fields
.field public mID:Ljava/lang/String;

.field public mIsRefresh:Z

.field public mIsRemove:Z

.field public mLocation:Ljava/lang/String;

.field public mMediumID:Ljava/lang/String;

.field public mMediumName:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mRequestServer:Z

.field public mUriThumb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRefresh:Z

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRemove:Z

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mRequestServer:Z

    return-void
.end method
