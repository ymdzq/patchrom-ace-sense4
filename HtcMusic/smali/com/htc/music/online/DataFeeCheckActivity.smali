.class public Lcom/htc/music/online/DataFeeCheckActivity;
.super Landroid/app/Activity;
.source "DataFeeCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/DataFeeCheckActivity$DismissListener;,
        Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;
    }
.end annotation


# static fields
.field public static ACTION_DATA_FEE_CHECK:Ljava/lang/String; = null

.field public static final DATAFEE_CHECKED:Ljava/lang/String; = "data_fee_checked"

.field public static final DIALOG_DATA_FEE:I = 0x1

.field public static final RESULT_DATAFEECHECK_SUCCESS:I = 0x2

.field public static final RESULT_DATAFEE_CHECKED:I = 0x1

.field public static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "SinaMusic"

.field static final TAG:Ljava/lang/String; = "[DataFeeCheckActivity]"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "sina_music_data_fee_check"

    sput-object v0, Lcom/htc/music/online/DataFeeCheckActivity;->ACTION_DATA_FEE_CHECK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/DataFeeCheckActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/music/online/DataFeeCheckActivity;->saveDataFeeChecked()V

    return-void
.end method

.method private checkDataFee()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-static {p0}, Lcom/htc/music/online/DataFeeCheckActivity;->isDataFeeChecked(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/htc/music/online/DataFeeCheckActivity;->showNewDialog(I)V

    .line 89
    const/4 v0, 0x0

    .line 91
    :cond_0
    return v0
.end method

.method private doDataFeeCheck()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/music/online/DataFeeCheckActivity;->checkDataFee()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/online/DataFeeCheckActivity;->setResult(I)V

    .line 83
    invoke-virtual {p0}, Lcom/htc/music/online/DataFeeCheckActivity;->finish()V

    goto :goto_0
.end method

.method public static isDataFeeChecked(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p0, :cond_0

    .line 96
    const-string v2, "[DataFeeCheckActivity]"

    const-string v3, "[isDataFeeChecked] activity cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return v1

    .line 99
    :cond_0
    const-string v2, "SinaMusic"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, preferences:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    .line 102
    const-string v2, "[DataFeeCheckActivity]"

    const-string v3, "[isDataFeeChecked] preferences is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    const-string v2, "data_fee_checked"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private saveDataFeeChecked()V
    .locals 6

    .prologue
    .line 127
    const-string v3, "SinaMusic"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/online/DataFeeCheckActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 129
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "data_fee_checked"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "[DataFeeCheckActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SaveDataFeeChecked apply ex =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/online/DataFeeCheckActivity;->requestWindowFeature(I)Z

    .line 39
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/htc/music/online/DataFeeCheckActivity;->setContentView(I)V

    .line 40
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    new-instance v1, Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;

    invoke-direct {v1, p0}, Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;-><init>(Lcom/htc/music/online/DataFeeCheckActivity;)V

    .line 59
    .local v1, listener:Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;
    const/4 v2, 0x3

    invoke-static {p0, v2, v1}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 60
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v0, :cond_0

    .line 61
    new-instance v2, Lcom/htc/music/online/DataFeeCheckActivity$DismissListener;

    invoke-direct {v2, p0}, Lcom/htc/music/online/DataFeeCheckActivity$DismissListener;-><init>(Lcom/htc/music/online/DataFeeCheckActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 45
    invoke-virtual {p0}, Lcom/htc/music/online/DataFeeCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/htc/music/online/DataFeeCheckActivity;->ACTION_DATA_FEE_CHECK:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/htc/music/online/DataFeeCheckActivity;->doDataFeeCheck()V

    .line 51
    :cond_0
    return-void
.end method

.method protected showNewDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/online/DataFeeCheckActivity;->showNewDialog(ILandroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method protected showNewDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "args"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/htc/music/online/DataFeeCheckActivity;->removeDialog(I)V

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/online/DataFeeCheckActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 76
    return-void
.end method
