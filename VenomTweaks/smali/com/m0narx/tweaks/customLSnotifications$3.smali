.class Lcom/m0narx/tweaks/customLSnotifications$3;
.super Ljava/lang/Object;
.source "customLSnotifications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/customLSnotifications;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/customLSnotifications;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/customLSnotifications;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/customLSnotifications$3;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v4, p0, Lcom/m0narx/tweaks/customLSnotifications$3;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    #getter for: Lcom/m0narx/tweaks/customLSnotifications;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v4}, Lcom/m0narx/tweaks/customLSnotifications;->access$1(Lcom/m0narx/tweaks/customLSnotifications;)Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v4, p0, Lcom/m0narx/tweaks/customLSnotifications$3;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    #getter for: Lcom/m0narx/tweaks/customLSnotifications;->enable_pscs:Z
    invoke-static {v4}, Lcom/m0narx/tweaks/customLSnotifications;->access$2(Lcom/m0narx/tweaks/customLSnotifications;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "com.htc.android.psclient"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v4, p0, Lcom/m0narx/tweaks/customLSnotifications$3;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    #getter for: Lcom/m0narx/tweaks/customLSnotifications;->enable_android:Z
    invoke-static {v4}, Lcom/m0narx/tweaks/customLSnotifications;->access$3(Lcom/m0narx/tweaks/customLSnotifications;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v4, p0, Lcom/m0narx/tweaks/customLSnotifications$3;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    #getter for: Lcom/m0narx/tweaks/customLSnotifications;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/customLSnotifications;->access$4(Lcom/m0narx/tweaks/customLSnotifications;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_lockscreen_notifications"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, p0, Lcom/m0narx/tweaks/customLSnotifications$3;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/customLSnotifications;->finish()V

    return-void

    :cond_2
    iget-object v4, v0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
