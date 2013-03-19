.class public Lcom/htc/music/online/sinamusic/SinaRequestHandler;
.super Lcom/htc/music/online/OnlineRequestHandler;
.source "SinaRequestHandler.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/music/online/OnlineRequestHandler;-><init>(Landroid/app/Activity;)V

    .line 12
    const-string v0, "[SinaRequestHandler]"

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    .line 17
    invoke-direct {p0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/music/online/OnlineRequestHandler;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    .line 12
    const-string v0, "[SinaRequestHandler]"

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    .line 22
    invoke-direct {p0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    .line 27
    return-void
.end method


# virtual methods
.method protected addToFavorite(I)Z
    .locals 4
    .parameter "songId"

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    if-nez v2, :cond_0

    .line 49
    const-string v2, "[SinaRequestHandler]"

    const-string v3, "[addToFavorite] mEngine is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return v1

    .line 52
    :cond_0
    if-gez p1, :cond_1

    .line 53
    const-string v2, "[SinaRequestHandler]"

    const-string v3, "[addToFavorite] songId < 0!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    invoke-interface {v2, p1}, Lcom/htc/music/online/sinamusic/ISinaEngine;->addToFavourite(I)Z
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printStackTrace()V

    goto :goto_0
.end method

.method protected checkLogin()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    const/16 v1, 0xca

    iget-object v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mMessageHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 34
    :cond_0
    return-void
.end method

.method protected createLoginHelper(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mMessageHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 68
    const-string v0, "[SinaRequestHandler]"

    const-string v1, "[createLoginHelper] mMessageHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_2

    .line 72
    const-string v0, "[SinaRequestHandler]"

    const-string v1, "[createLoginHelper] mListener is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    if-nez v0, :cond_0

    .line 76
    if-nez p1, :cond_3

    .line 77
    const-string p1, ""

    .line 79
    :cond_3
    new-instance v0, Lcom/htc/music/online/LoginHelper;

    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mMessageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/music/online/LoginHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    .line 80
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/LoginHelper;->onCreate(Landroid/app/Activity;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsUnregistered:Z

    goto :goto_0
.end method

.method protected getLoginStatus()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "[SinaRequestHandler]"

    const-string v1, "[getLoginStatus] mEngine is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    invoke-interface {v0}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getLoginStatus()Z

    move-result v0

    goto :goto_0
.end method
