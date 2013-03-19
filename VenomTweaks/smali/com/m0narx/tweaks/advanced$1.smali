.class Lcom/m0narx/tweaks/advanced$1;
.super Ljava/lang/Object;
.source "advanced.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/advanced;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/advanced;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/advanced;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/advanced$1;->this$0:Lcom/m0narx/tweaks/advanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/advanced$1;)Lcom/m0narx/tweaks/advanced;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced$1;->this$0:Lcom/m0narx/tweaks/advanced;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 10

    const v5, 0x7f0a00d2

    const v9, 0x7f0a007e

    const v8, 0x7f0a0034

    const/high16 v7, 0x7f02

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "pref_fix"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/m0narx/tweaks/advanced$1;->this$0:Lcom/m0narx/tweaks/advanced;

    invoke-static {v4, v5}, Lcom/m0narx/tweaks/widgets/Dialogs;->progressDialog(Landroid/content/Context;I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    new-instance v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;

    iget-object v4, p0, Lcom/m0narx/tweaks/advanced$1;->this$0:Lcom/m0narx/tweaks/advanced;

    invoke-direct {v0, v4, v3}, Lcom/m0narx/tweaks/process/fixPermissionsProcess;-><init>(Landroid/content/Context;Lcom/htc/app/HtcProgressDialog;)V

    invoke-virtual {v0}, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->start()V

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    const/4 v4, 0x1

    return v4

    :cond_1
    const-string v4, "pref_zip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/m0narx/tweaks/advanced$1;->this$0:Lcom/m0narx/tweaks/advanced;

    invoke-static {v4, v5}, Lcom/m0narx/tweaks/widgets/Dialogs;->progressDialog(Landroid/content/Context;I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    new-instance v2, Lcom/m0narx/tweaks/process/zipAlignProcess;

    iget-object v4, p0, Lcom/m0narx/tweaks/advanced$1;->this$0:Lcom/m0narx/tweaks/advanced;

    invoke-direct {v2, v4, v3}, Lcom/m0narx/tweaks/process/zipAlignProcess;-><init>(Landroid/content/Context;Lcom/htc/app/HtcProgressDialog;)V

    invoke-virtual {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->start()V

    goto :goto_0

    :cond_2
    const-string v4, "pref_cache"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$1;->this$0:Lcom/m0narx/tweaks/advanced;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00cd

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0129

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/m0narx/tweaks/advanced$1$1;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/advanced$1$1;-><init>(Lcom/m0narx/tweaks/advanced$1;)V

    invoke-virtual {v4, v9, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/m0narx/tweaks/advanced$1$2;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/advanced$1$2;-><init>(Lcom/m0narx/tweaks/advanced$1;)V

    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    :cond_3
    const-string v4, "pref_dalvik"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$1;->this$0:Lcom/m0narx/tweaks/advanced;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00ce

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a012a

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/m0narx/tweaks/advanced$1$3;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/advanced$1$3;-><init>(Lcom/m0narx/tweaks/advanced$1;)V

    invoke-virtual {v4, v9, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/m0narx/tweaks/advanced$1$4;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/advanced$1$4;-><init>(Lcom/m0narx/tweaks/advanced$1;)V

    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0
.end method
