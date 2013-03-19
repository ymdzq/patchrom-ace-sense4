.class public Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginFacebook.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "service_name"

    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "service_display"

    invoke-virtual {p0}, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a003c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "social_intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "social_bundle"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method

.method public getDrawableResSet()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    const v0, 0x7f0a003c

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

    return-object v0
.end method
