.class public Lcom/htc/music/ShortcutPageInfo;
.super Ljava/lang/Object;
.source "ShortcutPageInfo.java"


# instance fields
.field private mPreloadAutoDetectTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadIntentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    .line 19
    invoke-direct {p0, p1}, Lcom/htc/music/ShortcutPageInfo;->initPreloadMap(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/htc/music/ShortcutPageInfo;->initPreloadAutoDetectTypeMap()V

    .line 21
    return-void
.end method

.method private initPreloadAutoDetectTypeMap()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 119
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "radiotime.player"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "tunein.player"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isChinaSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "cn.kuwo.player"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusic"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    return-void
.end method

.method private initPreloadMap(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v4, 0x400

    .line 24
    const/4 v0, 0x0

    .line 60
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "radiotime.player"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "radiotime.player"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "radiotime.player"

    const v3, 0x7f020054

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "tunein.player"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "tunein.player"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "tunein.player"

    const v3, 0x7f020053

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 168
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    return-void
.end method

.method public getPreloadAutoDetectType(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method
