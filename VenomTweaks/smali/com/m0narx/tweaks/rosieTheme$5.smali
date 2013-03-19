.class Lcom/m0narx/tweaks/rosieTheme$5;
.super Ljava/lang/Object;
.source "rosieTheme.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/rosieTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/widget/HtcAdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/rosieTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/rosieTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/rosieTheme$5;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Selected theme: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme$5;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    iget-object v0, v0, Lcom/m0narx/tweaks/rosieTheme;->mAdapter:Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme$5;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    #getter for: Lcom/m0narx/tweaks/rosieTheme;->Cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/m0narx/tweaks/rosieTheme;->access$3(Lcom/m0narx/tweaks/rosieTheme;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_rosie_theme"

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme$5;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    iget-object v0, v0, Lcom/m0narx/tweaks/rosieTheme;->mAdapter:Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/m0narx/tweaks/rosieTheme$5;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme$5;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    iget-object v0, v0, Lcom/m0narx/tweaks/rosieTheme;->mAdapter:Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/m0narx/tweaks/rosieTheme;->currentTheme:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/m0narx/tweaks/rosieTheme;->access$4(Lcom/m0narx/tweaks/rosieTheme;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->killLockCMD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";pkill com.htc.launcher;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme$5;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    iget-object v0, v0, Lcom/m0narx/tweaks/rosieTheme;->mAdapter:Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme$5;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    #calls: Lcom/m0narx/tweaks/rosieTheme;->setCustomizeState()V
    invoke-static {v0}, Lcom/m0narx/tweaks/rosieTheme;->access$5(Lcom/m0narx/tweaks/rosieTheme;)V

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->cancel(I)V

    return-void
.end method
