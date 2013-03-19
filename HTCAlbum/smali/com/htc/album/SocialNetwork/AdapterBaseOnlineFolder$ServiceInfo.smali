.class public Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;
.super Ljava/lang/Object;
.source "AdapterBaseOnlineFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceInfo"
.end annotation


# instance fields
.field public mAlbumName:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mIsEnablePhotoOfMe:Z

.field public mIsEnableRecentList:Z

.field public mIsEnableRecentVideo:Z

.field public mIsEnableSort:Z

.field public mIsFlagDisplay:Z

.field public mIsForceUpdate:Z

.field public mIsInternal:Z

.field public mServiceName:Ljava/lang/String;

.field public mServiceURL:Ljava/lang/String;

.field public mUserBuddyIcon:Ljava/lang/String;

.field public mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUserName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;


# direct methods
.method public constructor <init>(Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->this$0:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mAlbumName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserBuddyIcon:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentList:Z

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentVideo:Z

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnablePhotoOfMe:Z

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableSort:Z

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsFlagDisplay:Z

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsInternal:Z

    return-void
.end method
