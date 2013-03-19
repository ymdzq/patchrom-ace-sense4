.class public abstract Lcom/htc/music/online/TrackListActivity;
.super Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;
.source "TrackListActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/TrackListActivity$NonUIHandler;,
        Lcom/htc/music/online/TrackListActivity$TrackListAdapter;,
        Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;,
        Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;
    }
.end annotation


# static fields
.field static final CACHE_PLAY_ALL_DATA:I = 0x3

.field private static final CACHE_PLAY_ALL_DATA_FINISHED:I = 0x6

.field static final GET_SONG_LIST:I = 0x2

.field private static final HANDLE_SNS_EXCEPTION:I = 0x7

.field private static final HIDE_LOADING_MESSAGE:I = 0x3

.field private static final HIDE_PROCESS_DIALOG:I = 0xa

.field private static final INVALIDATE_VIEWS:I = 0x1

.field protected static final LIST_VIEW_WITHOUT_DESCRIPTION:I = 0x2

.field protected static final LIST_VIEW_WITH_DESCRIPTION:I = 0x1

.field protected static final NOTIFY_DATASET_CHANGED:I = 0x2

.field private static final NOTIFY_SONG_LIST_UPDATED:I = 0x5

.field static final REMOVE_FROM_FAVORITES:I = 0x1

.field private static final SHOW_LOADING_ITEM:I = 0x8

.field private static final SHOW_LOADING_MESSAGE:I = 0x4

.field private static final SHOW_PROCESS_DIALOG:I = 0x9

.field protected static final SNS_EXCEPTIO_SOURCE_FAVORITE:I = 0x2

.field protected static final SNS_EXCEPTIO_SOURCE_RECOMM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[TrackListActivity]"


# instance fields
.field private final PLAY_ALL:I

.field isRefreshing:Z

.field private m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field mActivity:Lcom/htc/music/online/TrackListActivity;

.field protected mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

.field protected mCachePlayAllData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field

.field mCurPage:I

.field protected mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

.field protected mCurrentPlayAllData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentSongId:I

.field protected mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

.field protected mIds:[I

.field mIsEmptyList:Z

.field mIsInnerTypeChanged:Z

.field private mIsOnStop:Z

.field protected mItems:[Ljava/lang/CharSequence;

.field protected mListViewType:I

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field mLoadingViewIsShown:Z

.field mNetworkAvailableChecked:Z

.field private mNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

.field protected mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

.field mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

.field private mNonUILooper:Landroid/os/Looper;

.field private mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

.field mPrepareGettingMore:Z

.field mProcessDialog:Lcom/htc/app/HtcProgressDialog;

.field mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field protected mSelectedPosition:I

.field private final mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

.field mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

.field private mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

.field mSongList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field

.field protected mTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field

.field protected mTrackListUiHandler:Landroid/os/Handler;

.field private mTrackListView:Lcom/htc/widget/HtcListView;

.field private onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

.field shouldRefresh:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;-><init>()V

    .line 67
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    invoke-static {p0, v0}, Lcom/htc/music/online/OnlineMusicPlayFactory;->getOnlineMusicPlay(Landroid/content/Context;Z)Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    .line 68
    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/online/TrackListActivity;->PLAY_ALL:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentSongId:I

    .line 78
    iput v3, p0, Lcom/htc/music/online/TrackListActivity;->mListViewType:I

    .line 82
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    .line 86
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    .line 90
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->shouldRefresh:Z

    .line 92
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->isRefreshing:Z

    .line 94
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->mNetworkAvailableChecked:Z

    .line 98
    iput-boolean v3, p0, Lcom/htc/music/online/TrackListActivity;->mIsEmptyList:Z

    .line 102
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->mLoadingViewIsShown:Z

    .line 106
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->mPrepareGettingMore:Z

    .line 108
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 110
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 115
    iput v2, p0, Lcom/htc/music/online/TrackListActivity;->mCurPage:I

    .line 117
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 119
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mProcessDialog:Lcom/htc/app/HtcProgressDialog;

    .line 121
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mActivity:Lcom/htc/music/online/TrackListActivity;

    .line 123
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    .line 127
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->mIsOnStop:Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentPlayAllData:Ljava/util/ArrayList;

    .line 136
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCachePlayAllData:Ljava/util/ArrayList;

    .line 140
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->mIsInnerTypeChanged:Z

    .line 145
    new-instance v0, Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-direct {v0}, Lcom/htc/music/online/util/SnsExceptionManager;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    .line 147
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    .line 453
    new-instance v0, Lcom/htc/music/online/TrackListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/TrackListActivity$2;-><init>(Lcom/htc/music/online/TrackListActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    .line 566
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mItems:[Ljava/lang/CharSequence;

    .line 567
    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mIds:[I

    .line 599
    new-instance v0, Lcom/htc/music/online/TrackListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/online/TrackListActivity$4;-><init>(Lcom/htc/music/online/TrackListActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 1275
    new-instance v0, Lcom/htc/music/online/TrackListActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/online/TrackListActivity$5;-><init>(Lcom/htc/music/online/TrackListActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    .line 1399
    new-instance v0, Lcom/htc/music/online/TrackListActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/online/TrackListActivity$6;-><init>(Lcom/htc/music/online/TrackListActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/TrackListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/online/TrackListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;->showLoadingItem()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/online/TrackListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/online/TrackListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/music/online/TrackListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/online/TrackListActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/music/online/TrackListActivity;->showProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/online/TrackListActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/music/online/TrackListActivity;->showTrackOptions(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/online/TrackListActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/music/online/TrackListActivity;->showProcessDialog(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/music/online/util/SnsExceptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/online/TrackListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mIsOnStop:Z

    return v0
.end method

.method private getMoreList()V
    .locals 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->checkNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1175
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;->hideLoadingItem()V

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->isRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    if-eqz v0, :cond_0

    .line 1179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->isRefreshing:Z

    .line 1180
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getSnsExceptionListener(I)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "type"

    .prologue
    .line 506
    new-instance v0, Lcom/htc/music/online/TrackListActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/online/TrackListActivity$3;-><init>(Lcom/htc/music/online/TrackListActivity;I)V

    .line 531
    .local v0, posListener:Landroid/content/DialogInterface$OnClickListener;
    return-object v0
.end method

.method private hideLoadingItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1257
    iput-boolean v1, p0, Lcom/htc/music/online/TrackListActivity;->mPrepareGettingMore:Z

    .line 1258
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1261
    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/online/TrackListActivity;->mLoadingViewIsShown:Z

    .line 1262
    return-void
.end method

.method private playAllFromIndex(I)V
    .locals 2
    .parameter "idx"

    .prologue
    .line 535
    if-gez p1, :cond_1

    .line 536
    const-string v0, "[TrackListActivity]"

    const-string v1, "[playAllFromIndex] idx < 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 540
    const-string v0, "[TrackListActivity]"

    const-string v1, "[playAllFromIndex] mTrackList cannot be null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentPlayAllData:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 544
    const-string v0, "[TrackListActivity]"

    const-string v1, "[playAllFromIndex] mCurrentPlayAllData cannot be null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentPlayAllData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 549
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentPlayAllData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 551
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentPlayAllData:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;->playSongAll(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.metachanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/online/TrackListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 611
    return-void
.end method

.method private showLoadingItem()V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mLoadingViewIsShown:Z

    if-eqz v0, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mPrepareGettingMore:Z

    .line 1251
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private showProcessDialog(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 1231
    if-eqz p1, :cond_2

    .line 1232
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProcessDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 1233
    const v0, 0x20402cd

    invoke-virtual {p0, v0}, Lcom/htc/music/online/TrackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProcessDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProcessDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProcessDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1243
    :cond_1
    :goto_0
    return-void

    .line 1239
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProcessDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProcessDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProcessDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method private showProgressDialog(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 1216
    if-eqz p1, :cond_2

    .line 1217
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 1218
    const v0, 0x204026b

    invoke-virtual {p0, v0}, Lcom/htc/music/online/TrackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1228
    :cond_1
    :goto_0
    return-void

    .line 1224
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method private showTrackOptions(IZ)V
    .locals 3
    .parameter "position"
    .parameter "bLongClick"

    .prologue
    .line 579
    iput p1, p0, Lcom/htc/music/online/TrackListActivity;->mSelectedPosition:I

    .line 580
    const-string v0, ""

    .line 581
    .local v0, trackName:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/music/online/TrackListActivity;->mSelectedPosition:I

    if-le v1, v2, :cond_1

    .line 582
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/music/online/TrackListActivity;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/online/sinamusic/WrapperSong;

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 583
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-virtual {v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v1

    iput v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentSongId:I

    .line 585
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-virtual {v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v0

    .line 592
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->fillOptionItems()V

    .line 593
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mItems:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mIds:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/music/online/TrackListActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 594
    return-void

    .line 588
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentSongId:I

    .line 589
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    goto :goto_0
.end method

.method private wapNetworkAction()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 268
    const/16 v0, 0xd

    invoke-static {p0, v0}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 269
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p0, v0}, Lcom/htc/music/online/TrackListActivity;->setDialogTitle(Lcom/htc/widget/HtcAlertDialog;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 274
    :cond_1
    return-void
.end method


# virtual methods
.method appendSongs(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1213
    .local p1, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    return-void
.end method

.method protected abstract cachePlayAllData(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end method

.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/online/TrackListActivity;->playAllFromIndex(I)V

    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method protected checkNetwork()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 249
    :cond_0
    invoke-static {p0}, Lcom/htc/music/online/Util;->checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 250
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_1

    .line 251
    invoke-static {p0}, Lcom/htc/music/online/Util;->is3GWap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;->wapNetworkAction()V

    .line 257
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 254
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected fillOptionItems()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 569
    new-array v0, v3, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f070058

    invoke-virtual {p0, v2}, Lcom/htc/music/online/TrackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x204026f

    invoke-virtual {p0, v2}, Lcom/htc/music/online/TrackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0701dc

    invoke-virtual {p0, v2}, Lcom/htc/music/online/TrackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0701df

    invoke-virtual {p0, v2}, Lcom/htc/music/online/TrackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x2040216

    invoke-virtual {p0, v2}, Lcom/htc/music/online/TrackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mItems:[Ljava/lang/CharSequence;

    .line 574
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mIds:[I

    .line 576
    return-void

    .line 574
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected abstract getTrackList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end method

.method protected handleSnsException(Lcom/htc/music/online/sinamusic/SnsException;I)V
    .locals 3
    .parameter "e"
    .parameter "type"

    .prologue
    const/4 v2, 0x7

    .line 494
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 495
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 496
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 497
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method abstract haveMore()Z
.end method

.method protected needCheckNetworkInOnResume()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mNetworkAvailableChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->setTitle()V

    .line 166
    iput-object p0, p0, Lcom/htc/music/online/TrackListActivity;->mActivity:Lcom/htc/music/online/TrackListActivity;

    .line 168
    invoke-static {p0}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[TrackListActivity]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 172
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mNonUILooper:Landroid/os/Looper;

    .line 174
    new-instance v1, Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/online/TrackListActivity$NonUIHandler;-><init>(Lcom/htc/music/online/TrackListActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    .line 176
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/online/TrackListActivity;->setVolumeControlStream(I)V

    .line 178
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    const v1, 0x7f030067

    invoke-virtual {p0, v1}, Lcom/htc/music/online/TrackListActivity;->setContentView(I)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    .line 183
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 184
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 187
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-nez v1, :cond_1

    .line 188
    new-instance v1, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    invoke-direct {v1, p0, p0, p0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;-><init>(Lcom/htc/music/online/TrackListActivity;Landroid/content/Context;Lcom/htc/music/online/TrackListActivity;)V

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/online/TrackListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    .line 193
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 196
    :cond_2
    new-instance v1, Lcom/htc/music/online/TrackListActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/music/online/TrackListActivity$1;-><init>(Lcom/htc/music/online/TrackListActivity;)V

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 209
    new-instance v1, Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mActivity:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    .line 211
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;->registerReceivers()V

    .line 213
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

    invoke-virtual {v1, v2}, Lcom/htc/music/online/util/SnsExceptionManager;->setOnNextActionListener(Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;)V

    .line 219
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 615
    const/4 v0, 0x2

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const v3, 0x7f07000a

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 617
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 322
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 325
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/music/online/TrackListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    iput-object v3, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    .line 328
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_1

    .line 329
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    if-eqz v1, :cond_8

    .line 338
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mNonUILooper:Landroid/os/Looper;

    if-eqz v1, :cond_9

    .line 344
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 350
    :goto_1
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 351
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentPlayAllData:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 354
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCurrentPlayAllData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 356
    :cond_4
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCachePlayAllData:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 357
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCachePlayAllData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 359
    :cond_5
    iput-object v3, p0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    .line 360
    iput-object v3, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    .line 364
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/online/TrackListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-eqz v1, :cond_7

    .line 371
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v1}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->onDestroy()V

    .line 372
    iput-object v3, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    .line 375
    :cond_7
    const-string v1, "[TrackListActivity]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void

    .line 340
    :cond_8
    const-string v1, "[TrackListActivity]"

    const-string v2, "[onDestroy] mNonUIHandler is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_9
    const-string v1, "[TrackListActivity]"

    const-string v2, "[onDestroy] mNonUILooper is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[TrackListActivity]"

    const-string v2, "[onDestroy] unregisterReceiver mNowPlayingReceiver fail!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 7
    .parameter "idx"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 395
    sparse-switch p1, :sswitch_data_0

    .line 450
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v4

    :goto_1
    return v4

    .line 397
    :sswitch_0
    iget v5, p0, Lcom/htc/music/online/TrackListActivity;->mSelectedPosition:I

    invoke-direct {p0, v5}, Lcom/htc/music/online/TrackListActivity;->playAllFromIndex(I)V

    goto :goto_1

    .line 402
    :sswitch_1
    iget-object v6, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-static {p0, v6, v5}, Lcom/htc/music/online/Util;->shareMusicInfo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;Z)V

    goto :goto_1

    .line 407
    :sswitch_2
    iget-object v6, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-nez v6, :cond_1

    .line 408
    const-string v4, "[TrackListActivity]"

    const-string v6, "[onHtcContextItemSelected][ADD_TO_ONLINE_FAVORITES] mAddToFavUtil is null!"

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 409
    goto :goto_1

    .line 411
    :cond_1
    iget-object v6, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    if-nez v6, :cond_2

    .line 412
    const-string v4, "[TrackListActivity]"

    const-string v6, "[onHtcContextItemSelected][ADD_TO_ONLINE_FAVORITES] mCurSong is null!"

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 413
    goto :goto_1

    .line 416
    :cond_2
    iget-object v5, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v2

    .line 417
    .local v2, songId:I
    iget-object v5, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, songName:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 419
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "requestActionType"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    const-string v4, "songId"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string v4, "songName"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v4, v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->request(Landroid/os/Bundle;)V

    goto :goto_0

    .line 427
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #songId:I
    .end local v3           #songName:Ljava/lang/String;
    :sswitch_3
    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    if-eqz v4, :cond_0

    .line 428
    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-static {p0, v4}, Lcom/htc/music/online/Util;->gotoRelatedWeibo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;)V

    goto :goto_0

    .line 441
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->removeSelectedSong()V

    goto :goto_0

    .line 445
    :sswitch_5
    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity;->mCurSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-virtual {v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v2

    .line 446
    .restart local v2       #songId:I
    new-instance v1, Lcom/htc/music/online/util/AsyncSongDetailGetter;

    invoke-direct {v1, p0}, Lcom/htc/music/online/util/AsyncSongDetailGetter;-><init>(Landroid/content/Context;)V

    .line 447
    .local v1, getter:Lcom/htc/music/online/util/AsyncSongDetailGetter;
    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    invoke-virtual {v1, v2, v4}, Lcom/htc/music/online/util/AsyncSongDetailGetter;->start(ILcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;)V

    goto :goto_0

    .line 395
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1c -> :sswitch_3
        0x1d -> :sswitch_2
        0x1e -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 482
    invoke-direct {p0, p3}, Lcom/htc/music/online/TrackListActivity;->playAllFromIndex(I)V

    .line 483
    iput p3, p0, Lcom/htc/music/online/TrackListActivity;->mSelectedPosition:I

    .line 484
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 488
    invoke-direct {p0, p3, v0}, Lcom/htc/music/online/TrackListActivity;->showTrackOptions(IZ)V

    .line 489
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 634
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 640
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 636
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->categoryRightAction()Z

    .line 637
    const/4 v0, 0x1

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 281
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 284
    :cond_0
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onPause()V

    .line 285
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 623
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 625
    .local v0, enabled:Z
    :goto_0
    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 626
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 627
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 629
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 623
    .end local v0           #enabled:Z
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mIsOnStop:Z

    .line 224
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onResume()V

    .line 225
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->setTitle()V

    .line 232
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->needCheckNetworkInOnResume()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->checkNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->requestSongList()V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mNetworkAvailableChecked:Z

    .line 238
    :cond_1
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 651
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->shouldRefresh:Z

    .line 653
    add-int v2, p2, p3

    if-ne v2, p4, :cond_1

    iget-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->mIsEmptyList:Z

    if-nez v2, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->haveMore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    iget-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->mPrepareGettingMore:Z

    if-nez v2, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;->showLoadingItem()V

    .line 658
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->shouldRefresh:Z

    .line 662
    :cond_1
    move v1, p2

    .line 663
    .local v1, start:I
    add-int v0, p2, p3

    .line 664
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 665
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 667
    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->shouldRefresh:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 672
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;->getMoreList()V

    .line 675
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 677
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 682
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 687
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onStop()V

    .line 290
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->onStop()V

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 297
    iput-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 301
    iput-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 304
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mIsOnStop:Z

    .line 306
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 312
    iput-object v2, p0, Lcom/htc/music/online/TrackListActivity;->m3GWapAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 314
    :cond_3
    return-void

    .line 293
    :cond_4
    const-string v0, "[TrackListActivity]"

    const-string v1, "[onStop] mSinaRequestHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected removeSelectedSong()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method protected requestSongList()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->sendEmptyMessage(I)Z

    .line 264
    :cond_0
    return-void
.end method

.method protected abstract setDialogTitle(Lcom/htc/widget/HtcAlertDialog;)V
.end method

.method protected abstract setTitle()V
.end method

.method protected showData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1185
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSongList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1186
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1188
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1189
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;->hideLoadingItem()V

    .line 1190
    iget-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mIsEmptyList:Z

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->hide()V

    .line 1194
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->mIsEmptyList:Z

    .line 1196
    :cond_1
    iget v0, p0, Lcom/htc/music/online/TrackListActivity;->mCurPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/online/TrackListActivity;->mCurPage:I

    .line 1208
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->isRefreshing:Z

    .line 1209
    return-void

    .line 1199
    :cond_3
    iget-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mIsEmptyList:Z

    if-eqz v0, :cond_5

    .line 1200
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_4

    .line 1201
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->hide()V

    .line 1203
    :cond_4
    iput-boolean v2, p0, Lcom/htc/music/online/TrackListActivity;->mIsEmptyList:Z

    goto :goto_0

    .line 1204
    :cond_5
    iget-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mLoadingViewIsShown:Z

    if-eqz v0, :cond_2

    .line 1205
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;->hideLoadingItem()V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->startActivity(Landroid/content/Intent;)V

    .line 384
    iget-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mIsInnerTypeChanged:Z

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/TrackListActivity;->mIsInnerTypeChanged:Z

    .line 388
    :cond_0
    return-void
.end method
