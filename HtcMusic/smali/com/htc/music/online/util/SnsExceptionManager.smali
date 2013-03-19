.class public Lcom/htc/music/online/util/SnsExceptionManager;
.super Ljava/lang/Object;
.source "SnsExceptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;,
        Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;,
        Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;,
        Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;,
        Lcom/htc/music/online/util/SnsExceptionManager$Displayer;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = ""


# instance fields
.field private final mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisplayerManager:Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;

.field private mLastDisplayableObj:Ljava/lang/Object;

.field private mOnNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

.field private mSnsException:Lcom/htc/music/online/sinamusic/SnsException;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;-><init>(Lcom/htc/music/online/util/SnsExceptionManager;Lcom/htc/music/online/util/SnsExceptionManager$1;)V

    iput-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mDisplayerManager:Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;

    .line 68
    new-instance v0, Lcom/htc/music/online/util/SnsExceptionManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/util/SnsExceptionManager$1;-><init>(Lcom/htc/music/online/util/SnsExceptionManager;)V

    iput-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 171
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/online/util/SnsExceptionManager;)Lcom/htc/music/online/sinamusic/SnsException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mSnsException:Lcom/htc/music/online/sinamusic/SnsException;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/online/util/SnsExceptionManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mLastDisplayableObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/online/util/SnsExceptionManager;)Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mOnNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

    return-object v0
.end method

.method private getSnsErrorMsgDisplayObj(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)Ljava/lang/Object;
    .locals 3
    .parameter "context"
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p2, :cond_0

    .line 24
    const-string v1, ""

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]e cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local p1
    :goto_0
    return-object v0

    .line 27
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v1, :cond_1

    .line 28
    const-string v1, ""

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]positiveListener cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    .local v0, object:Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    const-string v1, ""

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)] No Match Data,return is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :pswitch_1
    const-string v1, ""

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Network error, please check network connection"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    check-cast p1, Landroid/app/Activity;

    .end local p1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1, v1, v2}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 37
    .local v0, object:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 40
    .local v0, object:Ljava/lang/Object;
    .restart local p1
    :pswitch_2
    const-string v1, ""

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Data error, please retry later"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v1, ""

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Added failed, please retry"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v1, ""

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Invalid parameter, please re-entery this page"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v1, ""

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Friendstream error"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_6
    const-string v1, ""

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Token error, please re-login"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    check-cast p1, Landroid/app/Activity;

    .end local p1
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1, v1, v2}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 58
    .local v0, object:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public hideErorrMsg()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mDisplayerManager:Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->dismiss()V

    .line 107
    return-void
.end method

.method public setOnNextActionListener(Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mOnNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

    .line 83
    return-void
.end method

.method public showErrorMsg(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 3
    .parameter "context"
    .parameter "e"

    .prologue
    .line 86
    if-nez p2, :cond_0

    .line 87
    const-string v0, ""

    const-string v1, "error msg is null, exit handle message"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mSnsException:Lcom/htc/music/online/sinamusic/SnsException;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mSnsException:Lcom/htc/music/online/sinamusic/SnsException;

    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mDisplayerManager:Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;

    iget-object v1, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mLastDisplayableObj:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->show(Ljava/lang/Object;I)V

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mDisplayerManager:Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;

    iget-object v1, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mLastDisplayableObj:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->show(Ljava/lang/Object;I)V

    goto :goto_0

    .line 94
    :cond_1
    iput-object p2, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mSnsException:Lcom/htc/music/online/sinamusic/SnsException;

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/htc/music/online/util/SnsExceptionManager;->getSnsErrorMsgDisplayObj(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mLastDisplayableObj:Ljava/lang/Object;

    goto :goto_1

    .line 98
    :cond_2
    iput-object p2, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mSnsException:Lcom/htc/music/online/sinamusic/SnsException;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/music/online/util/SnsExceptionManager;->getSnsErrorMsgDisplayObj(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager;->mLastDisplayableObj:Ljava/lang/Object;

    goto :goto_1
.end method
