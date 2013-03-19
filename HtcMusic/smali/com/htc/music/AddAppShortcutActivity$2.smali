.class Lcom/htc/music/AddAppShortcutActivity$2;
.super Ljava/lang/Object;
.source "AddAppShortcutActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AddAppShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AddAppShortcutActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/AddAppShortcutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v1, 0x0

    .line 289
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/AddAppShortcutActivity;->access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 290
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    iget-object v3, v3, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 291
    .local v0, app:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 292
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/music/util/MusicUtils;->getAppLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 300
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/htc/music/AddAppShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 301
    iget-object v3, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    invoke-virtual {v3}, Lcom/htc/music/AddAppShortcutActivity;->finish()V

    .line 302
    return-void

    .line 294
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 295
    .restart local v1       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 296
    const-string v3, "PkgName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
