.class public Lcom/htc/album/AlbumMain/TabPluginDummy;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginDummy.java"


# static fields
.field public static final TABPLUGIN_NAME:Ljava/lang/String; = "HtcDummy"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    const-string v0, "HtcDummy"

    return-object v0
.end method
