.class Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;
.super Ljava/lang/Object;
.source "PluginServiceConnectionManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "pluginConnection"
.end annotation


# instance fields
.field private mIsNoFriends:Z

.field private mIsPermissionRequired:Z

.field private mIsRetryEnabled:Z

.field private mIsSignInRequired:Z

.field private mIsSignedIn:Z

.field private mPermissionState:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

.field private mRetryCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsNoFriends:Z

    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignInRequired:Z

    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignedIn:Z

    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsPermissionRequired:Z

    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mPermissionState:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mRetryCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsNoFriends:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsNoFriends:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignInRequired:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignInRequired:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsPermissionRequired:Z

    return p1
.end method


# virtual methods
.method public getPermission()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mPermissionState:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mRetryCount:I

    goto :goto_0
.end method

.method public isNoFriends()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsNoFriends:Z

    return v0
.end method

.method public isPermissionRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsPermissionRequired:Z

    return v0
.end method

.method public isRetry()Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mRetryCount:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mRetryCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mRetryCount:I

    const/4 v0, 0x1

    :cond_1
    const-string v2, "PluginServiceConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][PluginServiceConnectionManager][isRetry]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0
.end method

.method public isRetryEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z

    return v0
.end method

.method public isSignInRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignInRequired:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignedIn:Z

    return v0
.end method

.method public setPermissionState(Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mPermissionState:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    const-string v0, "PluginServiceConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][PluginServiceConnectionManager][setPermissionState]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mPermissionState:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRetryCount(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mRetryCount:I

    const-string v0, "PluginServiceConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][PluginServiceConnectionManager][setRetryCount]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSignInState(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignedIn:Z

    const-string v0, "PluginServiceConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][PluginServiceConnectionManager][setSignInState]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
