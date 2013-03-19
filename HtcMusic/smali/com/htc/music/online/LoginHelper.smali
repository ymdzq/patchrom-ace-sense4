.class public Lcom/htc/music/online/LoginHelper;
.super Ljava/lang/Object;
.source "LoginHelper.java"


# static fields
.field public static final LOGIN_PROMPT_STYLE_DIALOG:I = 0x3e8

.field public static final LOGIN_PROMPT_STYLE_LAYOUT:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "[LoginHelper]"


# instance fields
.field private loginButton:Landroid/widget/Button;

.field private mCurrentLoginPromptStyle:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mLoginDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mLoginView:Landroid/view/View;

.field private mSinaAccountChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTitle:Ljava/lang/String;

.field private onLoginClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "handler"
    .parameter "style"
    .parameter "title"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginView:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;

    .line 27
    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mTitle:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 30
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/music/online/LoginHelper;->mCurrentLoginPromptStyle:I

    .line 127
    new-instance v0, Lcom/htc/music/online/LoginHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/LoginHelper$1;-><init>(Lcom/htc/music/online/LoginHelper;)V

    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mSinaAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lcom/htc/music/online/LoginHelper$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/LoginHelper$2;-><init>(Lcom/htc/music/online/LoginHelper;)V

    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->onLoginClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p1, p0, Lcom/htc/music/online/LoginHelper;->mHandler:Landroid/os/Handler;

    .line 34
    iput p2, p0, Lcom/htc/music/online/LoginHelper;->mCurrentLoginPromptStyle:I

    .line 35
    iput-object p3, p0, Lcom/htc/music/online/LoginHelper;->mTitle:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/htc/music/online/LoginHelper;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "handler"
    .parameter "title"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginView:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;

    .line 27
    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mTitle:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 30
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/music/online/LoginHelper;->mCurrentLoginPromptStyle:I

    .line 127
    new-instance v0, Lcom/htc/music/online/LoginHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/LoginHelper$1;-><init>(Lcom/htc/music/online/LoginHelper;)V

    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mSinaAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lcom/htc/music/online/LoginHelper$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/LoginHelper$2;-><init>(Lcom/htc/music/online/LoginHelper;)V

    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->onLoginClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p1, p0, Lcom/htc/music/online/LoginHelper;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p2, p0, Lcom/htc/music/online/LoginHelper;->mTitle:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/htc/music/online/LoginHelper;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/LoginHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/online/LoginHelper;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/music/online/LoginHelper;->gotoLogin(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/online/LoginHelper;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;

    return-object v0
.end method

.method private gotoLogin(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 112
    const/16 v0, 0xc9

    invoke-static {p1, v0, v1, v1}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/music/online/LoginHelper;->mCurrentLoginPromptStyle:I

    sparse-switch v0, :sswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 56
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/music/online/LoginHelper;->initLoginDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 59
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/htc/music/online/LoginHelper;->initLoginPage(Landroid/app/Activity;)V

    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method

.method private initLoginDialog(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 151
    const-string v0, "[LoginHelper]"

    const-string v1, "[initLoginDialog] activity cannot be null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_2

    .line 155
    const-string v0, "[LoginHelper]"

    const-string v1, "[initLoginDialog] mListener is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mTitle:Ljava/lang/String;

    .line 163
    :goto_1
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 164
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/htc/music/online/LoginHelper;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/online/LoginHelper;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1, v0, v1, v2}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 161
    :cond_3
    const-string v0, "[LoginHelper]"

    const-string v1, "[initLoginDialog] mTitle is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initLoginPage(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 171
    const v0, 0x7f080076

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginView:Landroid/view/View;

    .line 172
    const v0, 0x7f0800a8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/music/online/LoginHelper;->onLoginClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v0, "[LoginHelper]"

    const-string v1, "loginButton is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showLoginDialog(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_1

    .line 118
    const-string v0, "[LoginHelper]"

    const-string v1, "showLoginDialog, mLoginDialog is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private showLoginLayout(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "[LoginHelper]"

    const-string v1, "[showLoginLayout] mLoginView is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 99
    const-string v0, "[LoginHelper]"

    const-string v1, "[showLoginLayout] mHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    if-eqz p1, :cond_2

    .line 103
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mHandler:Landroid/os/Handler;

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mHandler:Landroid/os/Handler;

    const v1, 0x186a3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mLoginView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/music/online/LoginHelper;->init(Landroid/app/Activity;)V

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/htc/music/online/LoginHelper;->mSinaAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public onDestory(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->mSinaAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "[LoginHelper]"

    const-string v1, "[onDestroy] activity is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public onUserLoginStatusChange(Z)V
    .locals 3
    .parameter "isLogin"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    iget v2, p0, Lcom/htc/music/online/LoginHelper;->mCurrentLoginPromptStyle:I

    sparse-switch v2, :sswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 85
    :sswitch_0
    if-nez p1, :cond_0

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/music/online/LoginHelper;->showLoginDialog(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 88
    :sswitch_1
    if-nez p1, :cond_1

    :goto_2
    invoke-direct {p0, v0}, Lcom/htc/music/online/LoginHelper;->showLoginLayout(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method
