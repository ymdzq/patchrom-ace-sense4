.class public abstract Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;
.super Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;
.source "AbsCollectionBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$9;,
        Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;,
        Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;
    }
.end annotation


# static fields
.field protected static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field protected static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field protected static final FOLDER_LAYER_NUMBER:I = 0x1

.field protected static final GENRE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final MSG_GET_COLLECTION_DETAIL:I = 0x65

.field private static final MSG_GET_FIRST_COLLECTION:I = 0x66

.field private static final MSG_GET_NEXT_COLLECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "[FriendsCollectionBrowserActivityGrid]"

.field protected static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final _SHOW_TOAST:Z

.field private static preState:I


# instance fields
.field private hasCheckedLogin:Z

.field private mActionBar:Lcom/htc/widget/ActionBarExt;

.field private mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field mCols:[Ljava/lang/String;

.field private mComposer:Ljava/lang/String;

.field private mCurrentAction:Lcom/htc/music/online/SinaActions;

.field private mCurrentCollectionName:Ljava/lang/String;

.field private mCurrentCollectionUrl:Ljava/lang/String;

.field private mCurrentCreatorName:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mHasData:Z

.field private mHasRequestRelogin:Z

.field private mInitializer:Lcom/htc/music/online/LoginHelper;

.field private mIsCollectionListLoading:Z

.field private mIsStartMutiProcessActivity:Z

.field mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

.field private mNextAction:Lcom/htc/music/online/SinaActions;

.field private mNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

.field private volatile mNonUIHandler:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;

.field private volatile mNonUIThread:Landroid/os/HandlerThread;

.field protected mOnGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

.field private mOrientation:I

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSelectedSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;

.field private mSinaHandler:Landroid/os/Handler;

.field private final mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

.field private mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

.field mSnsExceptionPosListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSonglist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceIcon:Landroid/view/View;

.field private mToast:Landroid/widget/Toast;

.field private mUIHandler:Landroid/os/Handler;

.field onLoginButtonClickedListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 109
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    invoke-static {p0, v0}, Lcom/htc/music/online/OnlineMusicPlayFactory;->getOnlineMusicPlay(Landroid/content/Context;Z)Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCols:[Ljava/lang/String;

    .line 140
    iput-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 141
    iput-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 144
    iput-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIThread:Landroid/os/HandlerThread;

    .line 145
    iput-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;

    .line 153
    new-instance v0, Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-direct {v0}, Lcom/htc/music/online/util/SnsExceptionManager;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    .line 155
    iput-boolean v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsCollectionListLoading:Z

    .line 169
    new-instance v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;-><init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mUIHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;-><init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaHandler:Landroid/os/Handler;

    .line 317
    new-instance v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$3;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$3;-><init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSnsExceptionPosListener:Landroid/content/DialogInterface$OnClickListener;

    .line 337
    new-instance v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;-><init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

    .line 578
    iput-boolean v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsStartMutiProcessActivity:Z

    .line 579
    new-instance v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$5;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$5;-><init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->onLoginButtonClickedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 700
    iput-boolean v5, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasData:Z

    .line 701
    new-instance v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;-><init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mOnGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 800
    iput-boolean v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->hasCheckedLogin:Z

    .line 816
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->clearSonglist()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/MusicGridViewUtilForCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getGridViewUtilForCollection()Lcom/htc/music/online/MusicGridViewUtilForCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showNoDataToast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->doActionAfterGetDetail(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showLoadingProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->handleSnsException(Lcom/htc/music/online/sinamusic/SnsException;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/SinaActions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentAction:Lcom/htc/music/online/SinaActions;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsCollectionListLoading:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/util/SnsExceptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsCollectionListLoading:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsStartMutiProcessActivity:Z

    return p1
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->preState:I

    return v0
.end method

.method static synthetic access$2202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    sput p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->preState:I

    return p0
.end method

.method static synthetic access$2300(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->checkLogin()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasData:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasData:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->updateUIByResult(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/LoginHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mInitializer:Lcom/htc/music/online/LoginHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasRequestRelogin:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasRequestRelogin:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->updateGridView()V

    return-void
.end method

.method private checkLogin()V
    .locals 4

    .prologue
    .line 806
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    const/16 v1, 0xca

    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 810
    return-void
.end method

.method private clearSonglist()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    :cond_0
    return-void
.end method

.method private doActionAfterGetDetail(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    .locals 2
    .parameter "detail"

    .prologue
    .line 290
    sget-object v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$9;->$SwitchMap$com$htc$music$online$SinaActions:[I

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNextAction:Lcom/htc/music/online/SinaActions;

    invoke-virtual {v1}, Lcom/htc/music/online/SinaActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;->playSongAll(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;I)V

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->shareToWeibo(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateLoadingProgressDialog()Lcom/htc/app/HtcProgressDialog;
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    const v1, 0x204026b

    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method private getGridViewUtilForCollection()Lcom/htc/music/online/MusicGridViewUtilForCollection;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    return-object v0
.end method

.method private getSourceIcon()Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f020044

    .line 672
    new-instance v2, Lcom/htc/widget/ActionBarQuickContact;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarQuickContact;-><init>(Landroid/content/Context;)V

    .line 673
    .local v2, sourceIcon:Lcom/htc/widget/ActionBarQuickContact;
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 674
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {v2}, Lcom/htc/widget/ActionBarQuickContact;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 676
    .local v1, lparams:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 677
    const-string v3, "[FriendsCollectionBrowserActivityGrid]"

    const-string v4, "error in getSourceIcon, lparams is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/4 v2, 0x0

    .line 687
    .end local v1           #lparams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #sourceIcon:Lcom/htc/widget/ActionBarQuickContact;
    :goto_0
    return-object v2

    .line 680
    .restart local v1       #lparams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #sourceIcon:Lcom/htc/widget/ActionBarQuickContact;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 681
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 682
    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarQuickContact;->setBackgroundResource(I)V

    .line 683
    invoke-virtual {v2, v1}, Lcom/htc/widget/ActionBarQuickContact;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 685
    .end local v1           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const-string v3, "[FriendsCollectionBrowserActivityGrid]"

    const-string v4, "error in getSourceIcon, drawable is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSnsException(Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->hideAllProgressDialog()V

    .line 332
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-virtual {v0, p0, p1}, Lcom/htc/music/online/util/SnsExceptionManager;->showErrorMsg(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)V

    .line 335
    :cond_0
    return-void
.end method

.method private hideAllProgressDialog()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1297
    :goto_0
    return-void

    .line 1295
    :cond_0
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    const-string v1, "[hideAllProgressDialog]mProgressDialog is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 769
    const v2, 0x7f080075

    invoke-virtual {p0, v2}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 771
    new-instance v2, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    .line 773
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 774
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 776
    new-instance v1, Lcom/htc/music/online/MusicGridViewItemForCollection;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/online/MusicGridViewItemForCollection;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 777
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 778
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->initMusicGridViewUtil()V

    .line 780
    new-instance v2, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/online/MusicGridViewUtilForCollection;)V

    iput-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    .line 781
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->initGridViewPreparator(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 783
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 784
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 785
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 786
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 787
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 788
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mOnGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 789
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 791
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v3, 0x2080001

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setBackgroundResource(I)V

    .line 792
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 793
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 795
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 796
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v2, v3}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->updateMusicGridViewUtil(Lcom/htc/music/online/MusicGridViewUtilForCollection;)V

    .line 798
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 992
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 993
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 994
    new-instance v1, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$8;

    invoke-direct {v1, p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$8;-><init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 1015
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 864
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 865
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020042

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 866
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 867
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 868
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 869
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 870
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 872
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 873
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020043

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 874
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 875
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 876
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 877
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 878
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 879
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 880
    const v3, 0x7f03002d

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 881
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 882
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 883
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 885
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 886
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 887
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 957
    new-instance v1, Lcom/htc/music/online/MusicGridViewUtilForCollection;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/online/MusicGridViewUtilForCollection;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    .line 959
    new-instance v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$7;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$7;-><init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    .line 988
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v1, v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->setMusicGridViewItemUpdater(Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;)V

    .line 989
    return-void
.end method

.method private initSourceIcon()V
    .locals 5

    .prologue
    .line 625
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-nez v3, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 627
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 628
    new-instance v3, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 635
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v3, :cond_1

    .line 636
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v3}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 639
    :cond_1
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v3, :cond_4

    .line 641
    const-string v3, "[FriendsCollectionBrowserActivityGrid]"

    const-string v4, "initSourceIcon() initial fail, mActionBarCustomContainer == null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_2
    :goto_0
    return-void

    .line 630
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_3
    const-string v3, "[FriendsCollectionBrowserActivityGrid]"

    const-string v4, "initSourceIcon() initial fail"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    .end local v0           #activity:Landroid/app/Activity;
    :cond_4
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    if-nez v3, :cond_5

    .line 646
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getSourceIcon()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    .line 648
    :cond_5
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    if-nez v3, :cond_6

    .line 649
    const-string v3, "[FriendsCollectionBrowserActivityGrid]"

    const-string v4, "initSourceIcon, sourceIcon intial fail, it is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_6
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 654
    .local v2, parent:Landroid/view/ViewParent;
    if-nez v2, :cond_7

    .line 656
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 657
    :catch_0
    move-exception v1

    .line 658
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 660
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_7
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eq v3, v2, :cond_2

    .line 661
    const-string v3, "[FriendsCollectionBrowserActivityGrid]"

    const-string v4, "mActionBarCustomContainer already has a parent and its not actionBar!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #parent:Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 664
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 665
    :catch_1
    move-exception v1

    .line 666
    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showLoadingProgressDialog(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->generateLoadingProgressDialog()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1301
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1302
    if-eqz p1, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1310
    :goto_0
    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 1308
    :cond_1
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    const-string v1, "[showProgressWhenDoPlayAll] mProgressDialog is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNoDataToast()V
    .locals 1

    .prologue
    .line 367
    const v0, 0x7f0701ea

    invoke-direct {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showToast(I)V

    .line 368
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showToast(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 372
    return-void
.end method

.method private updateGridView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1313
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setTitle()V

    .line 1314
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 1315
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getGridViewUtilForCollection()Lcom/htc/music/online/MusicGridViewUtilForCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 1316
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getGridViewUtilForCollection()Lcom/htc/music/online/MusicGridViewUtilForCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 1317
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 1318
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getGridViewUtilForCollection()Lcom/htc/music/online/MusicGridViewUtilForCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->updateParentMediaList(Ljava/util/List;)V

    .line 1319
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getGridViewUtilForCollection()Lcom/htc/music/online/MusicGridViewUtilForCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 1320
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 1321
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 1324
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->hideEmptyErrorView()V

    .line 1328
    :cond_0
    return-void
.end method

.method private updateUIByResult(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1273
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1274
    :cond_0
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    const-string v1, "No data in the list, show empty view"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setEmptyView()V

    .line 1277
    :cond_1
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    .line 1278
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->updateGridView()V

    .line 1279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showLoadingProgressDialog(Z)V

    .line 1281
    return-void
.end method


# virtual methods
.method public clickIndexInit(I)V
    .locals 3
    .parameter "globalIndex"

    .prologue
    .line 1018
    iput p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1019
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    iget v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    .line 1020
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    iget v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionName:Ljava/lang/String;

    .line 1021
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    iget v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaDataCreator(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCreatorName:Ljava/lang/String;

    .line 1022
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentCollectionUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentCollectionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method public doAction(Lcom/htc/music/online/SinaActions;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentAction:Lcom/htc/music/online/SinaActions;

    .line 304
    sget-object v0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$9;->$SwitchMap$com$htc$music$online$SinaActions:[I

    invoke-virtual {p1}, Lcom/htc/music/online/SinaActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->getCollectionDetail(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->access$1600(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->getNextCollectionList()V
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->access$1700(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;)V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->getFirstCollectionList()V
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->access$1800(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1348
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1353
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getFirstCollectionType()I
.end method

.method protected abstract getNextCollectionType()I
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1268
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getScreenTitleResId()I
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "where"

    .prologue
    .line 1260
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 443
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 445
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 462
    :goto_0
    return-void

    .line 448
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mOrientation:I

    .line 449
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 451
    iget v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 515
    const-string v1, "[FriendsCollectionBrowserActivityGrid]"

    const-string v2, "FriendsCollectionBrowserActivityGrid onCreate + "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 517
    if-eqz p1, :cond_1

    .line 518
    const-string v1, "selectedalbum"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    .line 519
    const-string v1, "artistid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 520
    const-string v1, "genreid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 521
    const-string v1, "composer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 522
    const-string v1, "playlisturi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 523
    const-string v1, "description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mDescription:Ljava/lang/String;

    .line 534
    :goto_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setVolumeControlStream(I)V

    .line 535
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    .line 544
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 545
    const v1, 0x7f03002f

    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setContentView(I)V

    .line 556
    :cond_0
    :goto_1
    iput-object p0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 558
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->initGridView()V

    .line 560
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "[FriendsCollectionBrowserActivityGrid]"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIThread:Landroid/os/HandlerThread;

    .line 561
    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 562
    new-instance v1, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;-><init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;

    .line 563
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->initSourceIcon()V

    .line 569
    new-instance v1, Lcom/htc/music/online/LoginHelper;

    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getScreenTitleResId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->onLoginButtonClickedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/music/online/LoginHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mInitializer:Lcom/htc/music/online/LoginHelper;

    .line 570
    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mInitializer:Lcom/htc/music/online/LoginHelper;

    invoke-virtual {v1, p0}, Lcom/htc/music/online/LoginHelper;->onCreate(Landroid/app/Activity;)V

    .line 572
    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

    invoke-virtual {v1, v2}, Lcom/htc/music/online/util/SnsExceptionManager;->setOnNextActionListener(Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;)V

    .line 573
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->checkLogin()V

    .line 574
    const-string v1, "[FriendsCollectionBrowserActivityGrid]"

    const-string v2, "FriendsCollectionBrowserActivityGrid onCreate - "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 526
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "artistid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 527
    const-string v1, "genreid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 528
    const-string v1, "composer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 529
    const-string v1, "playlisturi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 530
    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 547
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setContentView(I)V

    .line 548
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v1, :cond_0

    .line 549
    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 550
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 552
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 553
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 4
    .parameter "playlistName"

    .prologue
    .line 1148
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1149
    .local v0, id:I
    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 1151
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1235
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 501
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 502
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSourceIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 506
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->free()V

    .line 507
    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mInitializer:Lcom/htc/music/online/LoginHelper;

    invoke-virtual {v1, p0}, Lcom/htc/music/online/LoginHelper;->onDestory(Landroid/app/Activity;)V

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mInitializer:Lcom/htc/music/online/LoginHelper;

    .line 509
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 510
    return-void
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1137
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1033
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->clickIndexInit(I)V

    .line 1034
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1035
    const-string v1, "[FriendsCollectionBrowserActivityGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. currentAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/friendscollection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1039
    const-string v1, "collectionid"

    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const-string v1, "collectionname"

    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const-string v1, "creatorname"

    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCreatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    const-string v1, "ShowActivityTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1043
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1044
    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->startActivity(Landroid/content/Intent;)V

    .line 1046
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 1141
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    invoke-static {p0, v0, v1, v1, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :cond_0
    return-void
.end method

.method public onGridViewItemDeleteComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1175
    const-string v1, "[FriendsCollectionBrowserActivityGrid]"

    const-string v2, "call onDeletionCompleted()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1180
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    aput v2, v0, v1

    .line 1181
    .local v0, a:[I
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    iget v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->deleteParentItem(I)V

    .line 1183
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v0, v3, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 1184
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setTitle()V

    .line 1186
    .end local v0           #a:[I
    :cond_0
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const v11, 0x7f0701e6

    const v10, 0x7f070058

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 1050
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->clickIndexInit(I)V

    .line 1051
    iget-object v5, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1052
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1053
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 1055
    .local v1, dlnaMode:I
    iget-object v5, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/online/sinamusic/WrapperSonglist;

    iput-object v5, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSelectedSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;

    .line 1056
    iget-object v5, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    .line 1058
    const/4 v2, 0x0

    .line 1059
    .local v2, headerTitle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1060
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1061
    .local v3, ids:[I
    iget-object v5, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1062
    :cond_0
    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1065
    if-nez v1, :cond_2

    .line 1067
    new-array v4, v7, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v11}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1074
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v7, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_0

    .line 1124
    .restart local v3       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->hideHtcContextMenu()V

    .line 1125
    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1127
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dlnaMode:I
    .end local v2           #headerTitle:Ljava/lang/String;
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 1080
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dlnaMode:I
    .restart local v2       #headerTitle:Ljava/lang/String;
    .restart local v3       #ids:[I
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :cond_2
    new-array v4, v7, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v11}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1086
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v7, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_0

    .line 1094
    :cond_3
    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionName:Ljava/lang/String;

    .line 1096
    if-nez v1, :cond_4

    .line 1098
    new-array v4, v7, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v11}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1104
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v7, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_2

    .restart local v3       #ids:[I
    goto :goto_0

    .line 1111
    :cond_4
    new-array v4, v7, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v11}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1117
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v7, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_3

    .restart local v3       #ids:[I
    goto :goto_0

    .line 1074
    :array_0
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 1086
    :array_1
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 1104
    :array_2
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 1117
    :array_3
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1132
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1192
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    const-string v1, "[onHtcContextItemSelected] PLAY_COLLECTION fail, mSonglist is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const/4 v0, 0x0

    .line 1206
    :goto_0
    return v0

    .line 1195
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1206
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1197
    :sswitch_0
    sget-object v0, Lcom/htc/music/online/SinaActions;->PLAY_ALL:Lcom/htc/music/online/SinaActions;

    iput-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mNextAction:Lcom/htc/music/online/SinaActions;

    .line 1198
    sget-object v0, Lcom/htc/music/online/SinaActions;->GET_COLLECTION_DETAIL:Lcom/htc/music/online/SinaActions;

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->doAction(Lcom/htc/music/online/SinaActions;)V

    goto :goto_1

    .line 1202
    :sswitch_1
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSelectedSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->shareToWeibo(Lcom/htc/music/online/sinamusic/WrapperSonglist;)V

    goto :goto_1

    .line 1195
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->hasCheckedLogin:Z

    .line 490
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 491
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->onPause()V

    .line 492
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1243
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 481
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->onResume()V

    .line 482
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mInitializer:Lcom/htc/music/online/LoginHelper;

    invoke-virtual {v0, p0}, Lcom/htc/music/online/LoginHelper;->onResume(Landroid/app/Activity;)V

    .line 483
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setTitle()V

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setCategoryProgressVisible(Z)V

    .line 485
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 469
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentCollectionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 476
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 1
    .parameter "forceShuffle"

    .prologue
    .line 1252
    const/4 v0, 0x0

    return v0
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1336
    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showEmptyView(I)V

    .line 1337
    return-void
.end method

.method public setIsStartMutiProcessActivity(Z)V
    .locals 0
    .parameter "isStartMutiProActivity"

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsStartMutiProcessActivity:Z

    .line 590
    return-void
.end method

.method protected setTitle()V
    .locals 1

    .prologue
    .line 1341
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getScreenTitleResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1344
    return-void
.end method

.method shareToWeibo(Lcom/htc/music/online/sinamusic/WrapperSonglist;)V
    .locals 4
    .parameter "songlist"

    .prologue
    .line 1164
    if-eqz p1, :cond_0

    .line 1165
    invoke-static {p1}, Lcom/htc/music/online/Util;->getBundleFromSongList(Lcom/htc/music/online/sinamusic/WrapperSonglist;)Landroid/os/Bundle;

    move-result-object v0

    .line 1166
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsStartMutiProcessActivity:Z

    .line 1167
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    const/16 v2, 0xcc

    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v0}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 1171
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1169
    :cond_0
    const-string v1, "[FriendsCollectionBrowserActivityGrid]"

    const-string v2, "[shareToWeibo] detail is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method shareToWeibo(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    .locals 4
    .parameter "detail"

    .prologue
    .line 1154
    if-eqz p1, :cond_0

    .line 1155
    invoke-static {p1}, Lcom/htc/music/online/Util;->getBundleFromSongListDetail(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)Landroid/os/Bundle;

    move-result-object v0

    .line 1156
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsStartMutiProcessActivity:Z

    .line 1157
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    const/16 v2, 0xcc

    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v0}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 1161
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1159
    :cond_0
    const-string v1, "[FriendsCollectionBrowserActivityGrid]"

    const-string v2, "[shareToWeibo] detail is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 609
    iget-boolean v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsStartMutiProcessActivity:Z

    if-eqz v0, :cond_0

    .line 610
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 612
    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsStartMutiProcessActivity:Z

    .line 613
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 614
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 618
    :cond_1
    return-void
.end method
