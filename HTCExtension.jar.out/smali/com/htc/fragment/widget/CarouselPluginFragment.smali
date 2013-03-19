.class public Lcom/htc/fragment/widget/CarouselPluginFragment;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "CarouselPluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselPluginFragment$PluginChangeObserver;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPluginUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    const-string v0, "content://com.htc.fragment.opensense.plugin/plugins"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mPluginUri:Landroid/net/Uri;

    new-instance v0, Lcom/htc/fragment/widget/CarouselPluginFragment$PluginChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselPluginFragment$PluginChangeObserver;-><init>(Lcom/htc/fragment/widget/CarouselPluginFragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselPluginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mPluginUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected onAddPluginTabs()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselPluginFragment;->registerContentObservers()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselPluginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onResume()V

    return-void
.end method
