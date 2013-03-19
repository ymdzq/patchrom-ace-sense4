.class public abstract Lcom/htc/music/online/OnlineRequestHandler;
.super Ljava/lang/Object;
.source "OnlineRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;,
        Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;
    }
.end annotation


# static fields
.field public static final ACTION_ADDTO_FAVORITE:I = 0x1

.field public static final ACTION_GET_FAVORITE_LIST:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field private static final HIDE_PROCESSING_DIALOG:I = 0x2

.field public static final KEY_ACTION_TYPE:Ljava/lang/String; = "requestActionType"

.field public static final KEY_SONG_ID:Ljava/lang/String; = "songId"

.field public static final KEY_SONG_NAME:Ljava/lang/String; = "songName"

.field private static final SHOW_PROCESSING_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[OnlineRequestHandler]"


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field private mCurrentActionType:I

.field protected mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasRequestRelogin:Z

.field private mIsGotoLogin:Z

.field protected mIsUnregistered:Z

.field protected mListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mLoginHelper:Lcom/htc/music/online/LoginHelper;

.field protected mMessageHandler:Landroid/os/Handler;

.field private mNonUiHandler:Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;

.field private mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSongId:I

.field private mSongName:Ljava/lang/String;

.field protected final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 27
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mNonUiHandler:Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;

    .line 29
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 30
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    .line 31
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 32
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongId:I

    .line 38
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongName:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mCurrentActionType:I

    .line 47
    iput-boolean v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHasRequestRelogin:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsGotoLogin:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsUnregistered:Z

    .line 146
    new-instance v0, Lcom/htc/music/online/OnlineRequestHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/OnlineRequestHandler$1;-><init>(Lcom/htc/music/online/OnlineRequestHandler;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mMessageHandler:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/htc/music/online/OnlineRequestHandler$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/OnlineRequestHandler$2;-><init>(Lcom/htc/music/online/OnlineRequestHandler;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mUIHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 27
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mNonUiHandler:Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;

    .line 29
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 30
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    .line 31
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 32
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongId:I

    .line 38
    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongName:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mCurrentActionType:I

    .line 47
    iput-boolean v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHasRequestRelogin:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsGotoLogin:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsUnregistered:Z

    .line 146
    new-instance v0, Lcom/htc/music/online/OnlineRequestHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/OnlineRequestHandler$1;-><init>(Lcom/htc/music/online/OnlineRequestHandler;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mMessageHandler:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/htc/music/online/OnlineRequestHandler$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/OnlineRequestHandler$2;-><init>(Lcom/htc/music/online/OnlineRequestHandler;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mUIHandler:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/OnlineRequestHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHasRequestRelogin:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/online/OnlineRequestHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHasRequestRelogin:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/online/OnlineRequestHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->actIfNotLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/online/OnlineRequestHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->actAfterLogin()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/online/OnlineRequestHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->actAfterAccountChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/online/OnlineRequestHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->handleAddToFavorite()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/online/OnlineRequestHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->showProcessingDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/online/OnlineRequestHandler;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method private actAfterAccountChange()V
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mCurrentActionType:I

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/online/OnlineRequestHandler;->getLoginStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->sendMessageToAddFavorite()V

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->destroyLoginHelper()V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/htc/music/online/OnlineRequestHandler;->getLoginStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    invoke-interface {v0}, Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;->doAfterLogin()V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    invoke-interface {v0}, Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;->doAfterLogout()V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private actAfterLogin()V
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mCurrentActionType:I

    packed-switch v0, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 216
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->sendMessageToAddFavorite()V

    .line 217
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->destroyLoginHelper()V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    invoke-interface {v0}, Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;->doAfterLogin()V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private actIfNotLogin()V
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mCurrentActionType:I

    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    invoke-interface {v0}, Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;->doIfNotLogin()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private addToFavoriteFailed(Ljava/lang/String;)V
    .locals 3
    .parameter "songName"

    .prologue
    .line 433
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0701e1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, toastText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 439
    .end local v0           #toastText:Ljava/lang/String;
    :goto_0
    return-void

    .line 437
    :cond_0
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[addToFavoriteFailed] activity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addToFavoriteSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "songName"

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[addToFavoriteSuccess] songName cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 423
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[addToFavoriteSuccess] mActivity cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, toastText:Ljava/lang/StringBuffer;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0701e0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private addToFavorites(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[addToFavorites] bundle cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 278
    :cond_0
    const-string v1, "songId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongId:I

    .line 279
    iget v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongId:I

    if-gez v1, :cond_1

    .line 280
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[addToFavorites] mSongId < 0!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_1
    const-string v1, "songName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongName:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 285
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[addToFavorites] mSongName cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    const-string v0, ""

    .line 290
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 291
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0701dc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mCurrentActionType:I

    .line 296
    invoke-virtual {p0, v0}, Lcom/htc/music/online/OnlineRequestHandler;->createLoginHelper(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/htc/music/online/OnlineRequestHandler;->checkLogin()V

    goto :goto_0

    .line 293
    :cond_3
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[addToFavorites] mActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addToFavoritesInternal(ILjava/lang/String;)V
    .locals 1
    .parameter "songId"
    .parameter "songName"

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->showProcessingDialogInNonUI()V

    .line 410
    invoke-virtual {p0, p1}, Lcom/htc/music/online/OnlineRequestHandler;->addToFavorite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0, p2}, Lcom/htc/music/online/OnlineRequestHandler;->addToFavoriteSuccess(Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/music/online/OnlineRequestHandler;->addToFavoriteFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private alwaysReceiveLoginStatusChange()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 269
    iget v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mCurrentActionType:I

    if-eq v1, v0, :cond_0

    .line 270
    .local v0, bNeed:Z
    :goto_0
    return v0

    .line 269
    .end local v0           #bNeed:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private destroyLoginHelper()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 353
    const-string v0, "[OnlineRequestHandler]"

    const-string v1, "[destroyLoginHelper] mActivity is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/LoginHelper;->onDestory(Landroid/app/Activity;)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    goto :goto_0
.end method

.method private getFavoriteList(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 301
    const-string v0, ""

    .line 302
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mCurrentActionType:I

    .line 308
    invoke-virtual {p0, v0}, Lcom/htc/music/online/OnlineRequestHandler;->createLoginHelper(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/htc/music/online/OnlineRequestHandler;->checkLogin()V

    .line 310
    return-void

    .line 305
    :cond_0
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[getFavoriteList] mActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized getNonUiHandler()Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;
    .locals 2

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mNonUiHandler:Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mNonUiHandler:Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    monitor-exit p0

    return-object v0

    .line 197
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OnlineRequestHandlerWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 198
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v0, Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;-><init>(Lcom/htc/music/online/OnlineRequestHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mNonUiHandler:Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;

    .line 200
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mNonUiHandler:Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleAddToFavorite()V
    .locals 3

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, hasInvalidInput:Z
    iget v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongId:I

    if-gez v1, :cond_1

    .line 393
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[handleAddToFavorite] songId < 0!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x1

    .line 400
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->hideProcessingDialogInNonUI()V

    .line 406
    :goto_1
    return-void

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 396
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[handleAddToFavorite] songName cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 404
    :cond_2
    iget v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongId:I

    iget-object v2, p0, Lcom/htc/music/online/OnlineRequestHandler;->mSongName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/music/online/OnlineRequestHandler;->addToFavoritesInternal(ILjava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->hideProcessingDialogInNonUI()V

    goto :goto_1
.end method

.method private hideProcessingDialogInNonUI()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string v0, "[OnlineRequestHandler]"

    const-string v1, "[hideProcessingDialogInNonUI] mUIHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMessageToAddFavorite()V
    .locals 2

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->getNonUiHandler()Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;

    move-result-object v0

    .line 385
    .local v0, nonUiHandler:Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;
    if-eqz v0, :cond_0

    .line 386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;->sendEmptyMessage(I)Z

    .line 388
    :cond_0
    return-void
.end method

.method private showProcessingDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 445
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 446
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 447
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x20402cd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_1
    const-string v0, "[OnlineRequestHandler]"

    const-string v1, "[showProcessingDialog] mActivity is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showProcessingDialogInNonUI()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    const-string v0, "[OnlineRequestHandler]"

    const-string v1, "[showProcessingDialogInNonUI] mUIHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract addToFavorite(I)Z
.end method

.method protected abstract checkLogin()V
.end method

.method protected abstract createLoginHelper(Ljava/lang/String;)V
.end method

.method protected abstract getLoginStatus()Z
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->destroyLoginHelper()V

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->alwaysReceiveLoginStatusChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-boolean v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsGotoLogin:Z

    if-nez v0, :cond_2

    .line 80
    iget-boolean v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsUnregistered:Z

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/htc/music/online/OnlineRequestHandler;->destroyLoginHelper()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsUnregistered:Z

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 93
    :cond_1
    return-void

    .line 85
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsGotoLogin:Z

    goto :goto_0
.end method

.method public request(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v1, "[OnlineRequestHandler]"

    const-string v2, "[request] bundle is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v1, "requestActionType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, requestType:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/music/online/OnlineRequestHandler;->addToFavorites(Landroid/os/Bundle;)V

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/music/online/OnlineRequestHandler;->getFavoriteList(Landroid/os/Bundle;)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setGetFavoriteInterface(Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;)V
    .locals 0
    .parameter "inf"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mGetFavInf:Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;

    .line 139
    return-void
.end method

.method public setHasRelogin(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/online/OnlineRequestHandler;->mHasRequestRelogin:Z

    .line 129
    return-void
.end method

.method public setIsGotoLogin()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/OnlineRequestHandler;->mIsGotoLogin:Z

    .line 125
    return-void
.end method
