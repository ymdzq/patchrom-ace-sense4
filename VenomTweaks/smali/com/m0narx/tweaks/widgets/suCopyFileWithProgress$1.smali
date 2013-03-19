.class Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;
.super Landroid/os/Handler;
.source "suCopyFileWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$3(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$3(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$1(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-static {}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$1(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    invoke-static {}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$3(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
