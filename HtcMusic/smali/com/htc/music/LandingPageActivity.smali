.class public Lcom/htc/music/LandingPageActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "LandingPageActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/LandingPageActivity$NonUIHandler;,
        Lcom/htc/music/LandingPageActivity$MyContentObserver;,
        Lcom/htc/music/LandingPageActivity$BaseItem;,
        Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;,
        Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;,
        Lcom/htc/music/LandingPageActivity$LaunchItem;
    }
.end annotation


# static fields
.field private static final ADD_APP_SHORTCUT:I = 0x0

.field private static final DIALOG_FOR_DELETE:I = 0x1

.field private static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final DIALOG_RESTORE_APP:I = 0x3

.field private static final DIALOG_SHARETEXT:I = 0x2

.field private static final FIX_ITEM_NUM:I = 0x1

.field private static final INIT_LAUNCH_ITEM:I = 0x2710

.field private static final MEDIA_SERVER_PACKAGE_NAME:Ljava/lang/String; = "com.htc.music.mediaserver"

.field private static final MENU_ADD_APP_SHORTCUT:I = 0x1

.field private static final MENU_MEDIA_SERVER:I = 0x2

.field private static final MENU_VMM_UPLOAD:I = 0x15

.field private static final MSG_ULOG_USED_APP:I = 0x2712

.field private static final MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.htc.music"

.field private static final NOFITY_ADAPTER:I = 0x2712

.field private static final NO_RECENTLY_PLAYED_ALBUM_ID:I = -0x2

.field private static final QUERY_RECENT_ALBUM_INFO:I = 0x0

.field private static final RELOAD_RECENT_ALBUM:I = 0x2711

.field public static final REQ_DATAFEE_CHECK:I = 0x1

.field private static final SHOW_NO_RECENTLY_PLAYED_ALBUM:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "[LandingPage]"

.field private static final ULOG_KEY_LABEL:Ljava/lang/String; = "label"

.field private static final ULOG_KEY_PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final mAlbumCols:[Ljava/lang/String; = null

.field private static final mScaleSize:F = 1.2f


# instance fields
.field private final addToFavForLandingPage:Lcom/htc/music/util/AddToFavUtil;

.field private mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mAutoAddList:[Ljava/lang/String;

.field private mAutoDetectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mClickedItem:Lcom/htc/music/LandingPageActivity$LaunchItem;

.field private mClickedName:Ljava/lang/String;

.field private mClickedPackageName:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCustIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCustIntentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mCustItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCustTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomizationList:[Ljava/lang/String;

.field private mCustomizationSize:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeaderViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOnlineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mIsStartMutiProcessActivity:Z

.field private mLaunchItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mLongClickedItemType:I

.field private mLongClickedLaunchIntent:Landroid/content/Intent;

.field private mLongClickedName:Ljava/lang/String;

.field private mLongClickedPackageName:Ljava/lang/String;

.field private mLuanchItemBgHeight:I

.field private mLuanchItemBgWidth:I

.field private mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

.field private mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mOnlineAlbumCursor:Landroid/database/Cursor;

.field private final mOnlineMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

.field private mOrientation:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPreloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentAlbumIds:[I

.field private mRecentAlbumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mRemoveList:Ljava/lang/StringBuilder;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectedAlbumId:I

.field private mSelectedAlbumName:Ljava/lang/String;

.field private mSelectedArtistName:Ljava/lang/String;

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceBound:Z

.field private mShareBundle:Landroid/os/Bundle;

.field private mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

.field private mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

.field private mSmallIconHeight:I

.field private mSmallIconWidth:I

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStopping:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mUserAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mbIsItemClicked:Z

.field private onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/LandingPageActivity;->mAlbumCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 137
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 153
    new-instance v0, Lcom/htc/music/util/AddToFavUtil;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AddToFavUtil;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->addToFavForLandingPage:Lcom/htc/music/util/AddToFavUtil;

    .line 155
    iput-boolean v3, p0, Lcom/htc/music/LandingPageActivity;->mIsStartMutiProcessActivity:Z

    .line 157
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    .line 159
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mOnlineMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 164
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    .line 188
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;

    .line 189
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mClickedName:Ljava/lang/String;

    .line 190
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mClickedPackageName:Ljava/lang/String;

    .line 191
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedPackageName:Ljava/lang/String;

    .line 192
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationSize:I

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustIntentMap:Ljava/util/HashMap;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustTypeMap:Ljava/util/HashMap;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustIconMap:Ljava/util/HashMap;

    .line 197
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 198
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mClickedItem:Lcom/htc/music/LandingPageActivity$LaunchItem;

    .line 201
    iput-boolean v3, p0, Lcom/htc/music/LandingPageActivity;->mbIsItemClicked:Z

    .line 204
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    .line 206
    iput v4, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    .line 207
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    .line 208
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    .line 213
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    .line 214
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    .line 215
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    .line 216
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    .line 220
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    .line 521
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    .line 522
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    .line 523
    iput v4, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    .line 527
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mShareBundle:Landroid/os/Bundle;

    .line 530
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    .line 534
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    .line 541
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 542
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 544
    iput-boolean v3, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    .line 545
    iput-boolean v3, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    .line 547
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    .line 640
    new-instance v0, Lcom/htc/music/LandingPageActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$2;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    .line 1518
    new-instance v0, Lcom/htc/music/LandingPageActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$5;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->osc:Landroid/content/ServiceConnection;

    .line 2139
    new-instance v0, Lcom/htc/music/LandingPageActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$6;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 2576
    new-instance v0, Lcom/htc/music/LandingPageActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$7;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    .line 2675
    new-instance v0, Lcom/htc/music/LandingPageActivity$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$MyContentObserver;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;

    .line 134
    return-void
.end method

.method private InitRecentAlbumList([ILjava/util/List;)V
    .locals 4
    .parameter "recentAlbumIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2871
    .local p2, isOnlineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2872
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2873
    new-instance v0, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 2874
    .local v0, addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 2875
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2876
    const/4 v2, 0x1

    #setter for: Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z
    invoke-static {v0, v2}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5502(Lcom/htc/music/LandingPageActivity$BaseItem;Z)Z

    .line 2878
    :cond_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2880
    .end local v0           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_1
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2881
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/LandingPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mbIsItemClicked:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/LandingPageActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/LandingPageActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/music/LandingPageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity;->mbIsItemClicked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/LandingPageActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->initConstant()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->initCustMap()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->initCustTypeMap()V

    return-void
.end method

.method static synthetic access$1902(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/ShortcutPageInfo;)Lcom/htc/music/ShortcutPageInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->reloadLaunchItemList()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mClickedName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mClickedPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mClickedPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/LandingPageActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/LandingPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/htc/music/LandingPageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/LandingPageActivity;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/LandingPageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity;->reloadRecentAlbum(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/music/LandingPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mOnlineAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mOnlineAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/htc/music/LandingPageActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    return-object v0
.end method

.method static synthetic access$5302(Lcom/htc/music/LandingPageActivity;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    return-object p1
.end method

.method static synthetic access$5400(Lcom/htc/music/LandingPageActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mIsOnlineList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/htc/music/LandingPageActivity;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/LandingPageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/htc/music/LandingPageActivity;->showNewDialog(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    return v0
.end method

.method static synthetic access$6402(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    return p1
.end method

.method static synthetic access$6500(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->showOnlineAlbumOptions()V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->showAlbumOptions()V

    return-void
.end method

.method static synthetic access$6700(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mOnlineMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/LandingPageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/htc/music/LandingPageActivity;->showNewDialog(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$7100(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/LandingPageActivity$LaunchItem;)Lcom/htc/music/LandingPageActivity$LaunchItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mClickedItem:Lcom/htc/music/LandingPageActivity$LaunchItem;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    return p1
.end method

.method private addCustApp(Lcom/htc/music/LandingPageActivity$LaunchItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 3042
    if-nez p1, :cond_0

    .line 3043
    const-string v4, "[LandingPage]"

    const-string v5, "[addCustApp] item cannot be null!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    :goto_0
    return-void

    .line 3046
    :cond_0
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v2

    .line 3047
    .local v2, pkgName:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 3048
    const-string v4, "[LandingPage]"

    const-string v5, "[addCustApp] pkgName cannot be null!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3052
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/htc/music/LandingPageActivity;->getCustAppIndex(Ljava/lang/String;I)I

    move-result v1

    .line 3053
    .local v1, itemIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 3054
    const-string v4, "[LandingPage]"

    const-string v5, "[addCustApp] item is not customized app!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3058
    :cond_2
    invoke-direct {p0, v1}, Lcom/htc/music/LandingPageActivity;->getRelativeCustAppPos(I)I

    move-result v3

    .line 3059
    .local v3, relativePos:I
    add-int/lit8 v0, v3, 0x1

    .line 3060
    .local v0, absolutePos:I
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3061
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private appExist(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 2624
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2625
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 2626
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method private doAfterCheckDataFeeSuccess()V
    .locals 1

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mClickedItem:Lcom/htc/music/LandingPageActivity$LaunchItem;

    if-eqz v0, :cond_0

    .line 2987
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mClickedItem:Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-virtual {v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->startIntent()V

    .line 2989
    :cond_0
    return-void
.end method

.method private getClassName(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;
    .locals 5
    .parameter "item"

    .prologue
    .line 1228
    if-nez p1, :cond_1

    .line 1229
    const-string v3, "[LandingPage]"

    const-string v4, "[getClassName] item cannot be null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v0, ""

    .line 1243
    :cond_0
    :goto_0
    return-object v0

    .line 1232
    :cond_1
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v2

    .line 1233
    .local v2, launchIntent:Landroid/content/Intent;
    const-string v0, " "

    .line 1234
    .local v0, className:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1235
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1236
    .local v1, cmpName:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 1237
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1238
    if-nez v0, :cond_0

    .line 1239
    const-string v0, " "

    goto :goto_0
.end method

.method private getCollectionIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1178
    const/4 v0, 0x0

    .line 1179
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 1180
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v2, :cond_0

    .line 1181
    check-cast v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .end local v1           #parent:Landroid/app/Activity;
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLastCollectionIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1186
    :goto_0
    return-object v0

    .line 1183
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_0
    const-string v2, "[LandingPage]"

    const-string v3, "can\'t find MusicBrowserTabActivity as parent!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCustAppIndex(Ljava/lang/String;I)I
    .locals 4
    .parameter "pkgName"
    .parameter "startOffset"

    .prologue
    .line 3104
    if-nez p1, :cond_1

    .line 3105
    const-string v2, "[LandingPage]"

    const-string v3, "[getCustAppLevel] pkgName is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    const/4 v1, -0x1

    .line 3115
    :cond_0
    :goto_0
    return v1

    .line 3108
    :cond_1
    const/4 v1, -0x1

    .line 3109
    .local v1, index:I
    move v0, p2

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationSize:I

    if-ge v0, v2, :cond_0

    .line 3110
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3111
    move v1, v0

    .line 3112
    goto :goto_0

    .line 3109
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getLibraryIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2664
    const/4 v0, 0x0

    .line 2665
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 2666
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v2, :cond_0

    .line 2667
    check-cast v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .end local v1           #parent:Landroid/app/Activity;
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLastCategoryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2672
    :goto_0
    return-object v0

    .line 2669
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_0
    const-string v2, "[LandingPage]"

    const-string v3, "can\'t find MusicBrowserTabActivity as parent!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPackageName(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;
    .locals 4
    .parameter "item"

    .prologue
    .line 1200
    if-nez p1, :cond_1

    .line 1201
    const-string v2, "[LandingPage]"

    const-string v3, "[getPackageName] item cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v1, ""

    .line 1224
    :cond_0
    :goto_0
    return-object v1

    .line 1204
    :cond_1
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v1

    .line 1205
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1209
    const-string v1, " "

    .line 1210
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1211
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v1

    .line 1212
    if-nez v1, :cond_0

    .line 1213
    const-string v1, " "

    goto :goto_0

    .line 1216
    :cond_2
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v0

    .line 1217
    .local v0, launchIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 1219
    if-nez v1, :cond_0

    .line 1220
    const-string v1, " "

    goto :goto_0
.end method

.method private getRecommendationIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.media/recommendation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1194
    const-class v1, Lcom/htc/music/online/RecommendationBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1195
    const-string v1, "ForceDisableDropDown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1196
    return-object v0
.end method

.method private getRelativeCustAppPos(I)I
    .locals 7
    .parameter "itemIndex"

    .prologue
    .line 3073
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3074
    .local v1, custSize:I
    const/4 v4, 0x0

    .line 3075
    .local v4, searchItem:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/4 v3, -0x1

    .line 3076
    .local v3, insertPos:I
    const/4 v0, -0x1

    .line 3077
    .local v0, curOffset:I
    const/4 v5, 0x0

    .line 3078
    .local v5, startOffset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3079
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #searchItem:Lcom/htc/music/LandingPageActivity$LaunchItem;
    check-cast v4, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .line 3080
    .restart local v4       #searchItem:Lcom/htc/music/LandingPageActivity$LaunchItem;
    if-eqz v4, :cond_2

    .line 3081
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/htc/music/LandingPageActivity;->getCustAppIndex(Ljava/lang/String;I)I

    move-result v0

    .line 3082
    if-le v0, p1, :cond_2

    .line 3083
    move v3, v2

    .line 3091
    :cond_0
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 3092
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3094
    :cond_1
    return v3

    .line 3087
    :cond_2
    add-int/lit8 v5, v0, 0x1

    .line 3078
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2630
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2631
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 2632
    .local v2, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 2633
    const-string v4, "[LandingPage]"

    const-string v5, "getResolveInfo, resolveInfoList is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    :goto_0
    return-object v3

    .line 2636
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2637
    .local v0, length:I
    if-gtz v0, :cond_1

    .line 2638
    const-string v4, "[LandingPage]"

    const-string v5, "getResolveInfo, There\'s no app to match the launch intent"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2641
    :cond_1
    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 2642
    const-string v3, "[LandingPage]"

    const-string v4, "getResolveInfo, The intent will launch more than one app"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method private getUpdatedAddList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 993
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "removelist"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 994
    .local v4, removeListStr:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/htc/music/LandingPageActivity;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 996
    .local v3, removeList:[Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/music/LandingPageActivity;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, autoAddStr:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 999
    array-length v1, v3

    .line 1000
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1001
    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1002
    aget-object v5, v3, v2

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1007
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/music/LandingPageActivity;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSong;
    .locals 6
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 3238
    iget v3, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    .line 3239
    .local v3, albumid:I
    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/online/Util;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    return-object v0
.end method

.method private hideRecentlyAlbumDialogs()V
    .locals 1

    .prologue
    .line 2658
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->hideHtcContextMenu()V

    .line 2659
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->removeDialog(I)V

    .line 2660
    const/16 v0, 0x25a

    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->removeDialog(I)V

    .line 2661
    return-void
.end method

.method private initConstant()V
    .locals 3

    .prologue
    .line 951
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 952
    .local v0, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 953
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020061

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 954
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    .line 955
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    .line 956
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080078

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 957
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    .line 958
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    .line 959
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->getAutoAddList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    .line 961
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->getCustomizationList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;

    .line 962
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationSize:I

    .line 966
    :cond_0
    return-void
.end method

.method private initCustMap()V
    .locals 4

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustIntentMap:Ljava/util/HashMap;

    const-string v1, "cn.sina.music"

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "cn.sina.music"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustIconMap:Ljava/util/HashMap;

    const-string v1, "cn.sina.music"

    const v2, 0x7f02004f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustIntentMap:Ljava/util/HashMap;

    const-string v1, "com.douban.radio"

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.douban.radio"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    return-void
.end method

.method private initCustTypeMap()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 1485
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isChinaSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustTypeMap:Ljava/util/HashMap;

    const-string v1, "com.douban.radio"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mCustTypeMap:Ljava/util/HashMap;

    const-string v1, "cn.sina.music"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    :cond_0
    return-void
.end method

.method private isCarModeExist()Z
    .locals 3

    .prologue
    .line 2649
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2650
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.AutoMotive"

    const-string v2, "com.htc.AutoMotive.carousel.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2651
    invoke-direct {p0, v0}, Lcom/htc/music/LandingPageActivity;->appExist(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2652
    const/4 v1, 0x1

    .line 2654
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHVGA()Z
    .locals 3

    .prologue
    .line 3120
    iget v1, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 3121
    .local v0, length:I
    :goto_0
    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 3120
    .end local v0           #length:I
    :cond_0
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    goto :goto_0

    .line 3121
    .restart local v0       #length:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private launchMediaServer()V
    .locals 4

    .prologue
    .line 2268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2269
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2271
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2272
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/dlnaexp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2276
    :goto_0
    const-string v1, "ShowActivityTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2277
    const-string v1, "InnerActivityType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2278
    const-string v1, "LaunchFromSwitcher"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2279
    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2281
    const-string v1, "com.htc.music.mediaserver"

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    return-void

    .line 2274
    :cond_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/dlna"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private loadCollectionChannel()V
    .locals 3

    .prologue
    .line 1164
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1165
    .local v0, friendItem:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 1166
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1167
    const/4 v1, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setInnerItemEnable(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3800(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 1168
    const/4 v1, 0x5

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1170
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->getCollectionIntent()Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1171
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    return-void
.end method

.method private loadCustomizationApps(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 5
    .parameter "appInfo"
    .parameter "pkgName"
    .parameter "launchType"

    .prologue
    .line 3010
    if-nez p2, :cond_0

    .line 3011
    const-string v3, "[LandingPage]"

    const-string v4, "[loadCustomizationApps] pkgName cannot be null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    :goto_0
    return-void

    .line 3014
    :cond_0
    if-nez p1, :cond_1

    .line 3015
    const-string v3, "[LandingPage]"

    const-string v4, "[loadCustomizationApps] appInfo cannot be null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3018
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3019
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 3020
    const-string v3, "[LandingPage]"

    const-string v4, "[loadCustomizationApps] pm is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3023
    :cond_2
    new-instance v1, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {v1, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 3024
    .local v1, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3025
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_4

    .line 3026
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v1, v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 3030
    :goto_1
    const/4 v3, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIsCustApp(Z)V
    invoke-static {v1, v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$7200(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 3031
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 3032
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v1, p3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 3033
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mCustIconMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3034
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mCustIconMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v1, v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4000(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 3036
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ApplicationInfo;)V

    .line 3037
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3038
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3028
    :cond_4
    const/4 v3, 0x0

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v1, v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private loadHTCIcon(Landroid/widget/ImageView;Lcom/htc/music/LandingPageActivity$LaunchItem;)V
    .locals 2
    .parameter "iv"
    .parameter "item"

    .prologue
    .line 1460
    if-nez p1, :cond_0

    .line 1461
    const-string v0, "[LandingPage]"

    const-string v1, "[loadHTCIcon] iv cannot be null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    :goto_0
    return-void

    .line 1464
    :cond_0
    if-nez p2, :cond_1

    .line 1465
    const-string v0, "[LandingPage]"

    const-string v1, "[loadHTCIcon] item cannot be null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1468
    :cond_1
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1469
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1470
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    iget v1, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/music/LandingPageActivity;->scaleLaunchIcon(Landroid/widget/ImageView;II)V

    goto :goto_0
.end method

.method private loadOnlineListFromPref([ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "newRecentAlbumIds"
    .parameter "isOnlineListString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2885
    if-eqz p2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2886
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity;->makeDefaultIsOnline([I)Ljava/util/List;

    move-result-object v2

    .line 2901
    :cond_1
    :goto_0
    return-object v2

    .line 2888
    :cond_2
    const-string v3, "["

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 2889
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2890
    .local v1, items:[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v3, v1

    if-gtz v3, :cond_4

    .line 2891
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity;->makeDefaultIsOnline([I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 2893
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2894
    .local v2, newIsOnlineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 2895
    const-string v3, "true"

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2896
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2894
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2898
    :cond_5
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private loadRecentAlbumIdListFromPref(Landroid/content/SharedPreferences;)[I
    .locals 6
    .parameter "sharedPreferences"

    .prologue
    .line 2915
    const-string v4, "[LandingPage]"

    const-string v5, "loadRecentAlbumIdListFromPref +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    const/4 v2, 0x0

    .line 2919
    .local v2, newstyle:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 2920
    .local v0, cardId:I
    xor-int/lit8 v1, v0, -0x1

    .line 2921
    .local v1, id:I
    const-string v4, "cardid"

    invoke-interface {p1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2922
    const/4 v2, 0x1

    .line 2923
    const-string v4, "cardid"

    xor-int/lit8 v5, v0, -0x1

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2925
    :cond_0
    if-ne v1, v0, :cond_1

    .line 2928
    const-string v4, "[LandingPage]"

    const-string v5, "reloadQueueImpl: card id is the same."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    invoke-direct {p0, p1, v2}, Lcom/htc/music/LandingPageActivity;->loadRecentAlbumList(Landroid/content/SharedPreferences;Z)[I

    move-result-object v3

    .line 2934
    .local v3, retAry:[I
    :goto_0
    const-string v4, "[LandingPage]"

    const-string v5, "loadRecentAlbumIdListFromPref -"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    return-object v3

    .line 2931
    .end local v3           #retAry:[I
    :cond_1
    const/4 v4, 0x0

    new-array v3, v4, [I

    .restart local v3       #retAry:[I
    goto :goto_0
.end method

.method private loadRecentAlbumList(Landroid/content/SharedPreferences;Z)[I
    .locals 14
    .parameter "sharedPreferences"
    .parameter "newstyle"

    .prologue
    .line 2940
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2942
    .local v8, retIntList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v11, "localrecentalbumid"

    const-string v12, ""

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2944
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 2945
    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2946
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 2947
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 2948
    if-eqz p2, :cond_3

    .line 2949
    aget-object v9, v1, v2

    .line 2950
    .local v9, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2951
    .local v5, n:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 2952
    shl-int/lit8 v5, v5, 0x4

    .line 2953
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2954
    .local v0, c:C
    const/16 v11, 0x30

    if-lt v0, v11, :cond_0

    const/16 v11, 0x39

    if-gt v0, v11, :cond_0

    .line 2955
    add-int/lit8 v11, v0, -0x30

    add-int/2addr v5, v11

    .line 2951
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2956
    :cond_0
    const/16 v11, 0x61

    if-lt v0, v11, :cond_1

    const/16 v11, 0x66

    if-gt v0, v11, :cond_1

    .line 2957
    add-int/lit8 v11, v0, 0xa

    add-int/lit8 v11, v11, -0x61

    add-int/2addr v5, v11

    goto :goto_2

    .line 2960
    :cond_1
    const/4 v4, 0x0

    .line 2965
    .end local v0           #c:C
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2947
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v9           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2968
    :cond_3
    aget-object v11, v1, v2

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2974
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 2975
    .local v10, size:I
    const-string v11, "[LandingPage]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    new-array v7, v10, [I

    .line 2977
    .local v7, retAry:[I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v10, :cond_5

    .line 2978
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v7, v2

    .line 2977
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2981
    :cond_5
    return-object v7
.end method

.method private loadRecommendationChannel()V
    .locals 3

    .prologue
    .line 1154
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1155
    .local v0, recommItem:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 1156
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1157
    const/4 v1, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setInnerItemEnable(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3800(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 1158
    const/4 v1, 0x4

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1159
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->getRecommendationIntent()Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1160
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    return-void
.end method

.method private makeDefaultIsOnline([I)Ljava/util/List;
    .locals 3
    .parameter "newRecentAlbumIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2906
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2907
    .local v1, newIsOnlineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2908
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2907
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2910
    :cond_0
    return-object v1
.end method

.method private makeWhere(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3160
    .local p1, albumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3161
    .local v1, where:Ljava/lang/StringBuilder;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3162
    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3164
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 3166
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3169
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private prepareDataForList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3149
    .local p1, localAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, onlineAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, isOnlineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3150
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 3151
    .local v1, isOnline:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3152
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity$BaseItem;

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5800(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3149
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3154
    :cond_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity$BaseItem;

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5800(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3157
    .end local v1           #isOnline:Ljava/lang/Boolean;
    :cond_1
    return-void
.end method

.method private reloadLaunchItemList()V
    .locals 17

    .prologue
    .line 1012
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/LandingUtils;->getShortcutInfoList(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1014
    .local v13, shortcutInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/ShortcutInfo;>;"
    new-instance v12, Lcom/htc/music/ShortcutInfo;

    invoke-direct {v12}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 1015
    .local v12, shortcutInfo:Lcom/htc/music/ShortcutInfo;
    const-string v14, "com.htc.music"

    invoke-virtual {v12, v14}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 1016
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 1017
    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1031
    const-string v14, "LandingPage"

    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 1033
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v15, "removelist"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1034
    .local v10, removeListStr:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 1035
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1039
    .local v8, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_7

    .line 1040
    const/4 v5, 0x0

    .line 1046
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v14}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1047
    .local v9, pkgName:Ljava/lang/String;
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v14}, Lcom/htc/music/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1048
    .local v2, clsName:Ljava/lang/String;
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v14}, Lcom/htc/music/ShortcutInfo;->getType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1049
    .local v7, launchType:I
    const/4 v6, 0x0

    .line 1050
    .local v6, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/4 v11, 0x0

    .line 1051
    .local v11, resolveInfo:Landroid/content/pm/ResolveInfo;
    packed-switch v7, :pswitch_data_0

    .line 1039
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1053
    :pswitch_0
    new-instance v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v6           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1054
    .restart local v6       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x2080078

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0700f3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1056
    const-string v14, "com.htc.music"

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1057
    const/4 v14, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setInnerItemEnable(Z)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3800(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 1058
    const/4 v14, 0x0

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1059
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getLibraryIntent()Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1064
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->loadRecommendationChannel()V

    goto :goto_1

    .line 1067
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->loadCollectionChannel()V

    goto :goto_1

    .line 1071
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v14, v9}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1072
    if-eqz v5, :cond_1

    .line 1073
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 1074
    if-eqz v11, :cond_1

    .line 1075
    new-instance v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v6           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1076
    .restart local v6       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v14, 0x1000

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1077
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v6, v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v14, v9}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1079
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v14, v9}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4000(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1082
    :cond_2
    const-string v14, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1084
    :cond_3
    const/4 v14, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4100(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 1086
    :cond_4
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v6, v9}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1088
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int v4, v14, v15

    .line 1095
    .local v4, insertIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gt v4, v14, :cond_5

    .line 1096
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1098
    :cond_5
    const-string v14, "[LandingPage]"

    const-string v15, "reloadLaunchItemList, Insert index > mLaunchItemList size"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1106
    .end local v4           #insertIndex:I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1107
    if-eqz v5, :cond_1

    .line 1108
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 1109
    if-eqz v11, :cond_1

    .line 1110
    new-instance v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v6           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1111
    .restart local v6       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v14, 0x1000

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1112
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v6, v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1113
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v6, v9}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1121
    :pswitch_5
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1122
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    if-eqz v5, :cond_1

    .line 1125
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 1126
    if-eqz v11, :cond_1

    .line 1127
    new-instance v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v6           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1128
    .restart local v6       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v14, 0x1000

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1129
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v6, v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1130
    const-string v14, "com.htc.fm"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1131
    const v14, 0x7f02004b

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v6, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4000(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1133
    :cond_6
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v6, v9}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1142
    :pswitch_6
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v14}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/htc/music/online/Util;->getAppInfoIncludeDisable(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1143
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 1144
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v14}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14, v7}, Lcom/htc/music/LandingPageActivity;->loadCustomizationApps(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1150
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #clsName:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v7           #launchType:I
    .end local v9           #pkgName:Ljava/lang/String;
    .end local v11           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_7
    return-void

    .line 1051
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private reloadRecentAlbum(Z)V
    .locals 25
    .parameter "fromPref"

    .prologue
    .line 2768
    const/16 v22, 0x0

    .line 2769
    .local v22, newRecentAlbumIds:[I
    const/16 v21, 0x0

    .line 2770
    .local v21, newIsOnlineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    const/16 v18, 0x0

    .line 2771
    .local v18, failFromPref:Z
    if-nez p1, :cond_3

    .line 2774
    :try_start_0
    const-string v3, "[LandingPage]"

    const-string v4, "enter mService.getOnlineAlbumId()"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2776
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 2777
    const-string v3, "[LandingPage]"

    const-string v4, "reloadRecentAlbum, mService = null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    monitor-exit p0

    .line 2867
    :cond_0
    :goto_0
    return-void

    .line 2780
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getOnlineAlbumId()[I

    move-result-object v22

    .line 2781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getIsOnlineList()Ljava/util/List;

    move-result-object v21

    .line 2782
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2783
    :try_start_2
    const-string v3, "[LandingPage]"

    const-string v4, "leave mService.getOnlineAlbumId()"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2800
    :goto_1
    if-nez v22, :cond_2

    .line 2801
    const-string v3, "[LandingPage]"

    const-string v4, "recentAlbumIds is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    :cond_2
    if-nez v18, :cond_b

    .line 2806
    if-nez v21, :cond_6

    .line 2807
    const-string v3, "[LandingPage]"

    const-string v4, "recentAlbumIds is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2782
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2785
    :catch_0
    move-exception v17

    .line 2786
    .local v17, e:Landroid/os/RemoteException;
    const-string v3, "[LandingPage]"

    const-string v4, "Cannot get recent album ID from service."

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2790
    .end local v17           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v3, "Music"

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/music/LandingPageActivity;->loadRecentAlbumIdListFromPref(Landroid/content/SharedPreferences;)[I

    move-result-object v22

    .line 2792
    const-string v3, "Music"

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "recentalbumisOnline"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2794
    .local v19, isOnlineListString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/music/LandingPageActivity;->loadOnlineListFromPref([ILjava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 2796
    if-eqz v22, :cond_4

    move-object/from16 v0, v22

    array-length v3, v0

    if-eqz v3, :cond_4

    if-eqz v21, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_5

    :cond_4
    const/16 v18, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 2813
    .end local v19           #isOnlineListString:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mIsOnlineList:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$BaseItem;

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5800(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v3

    const/4 v4, -0x2

    if-eq v3, v4, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mIsOnlineList:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2822
    const-string v3, "[LandingPage]"

    const-string v4, "Recent album didn\'t change."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2826
    :cond_8
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    .line 2828
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/LandingPageActivity;->mIsOnlineList:Ljava/util/List;

    .line 2830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    array-length v3, v3

    if-gtz v3, :cond_a

    .line 2831
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2838
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/LandingPageActivity;->mIsOnlineList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/htc/music/LandingPageActivity;->InitRecentAlbumList([ILjava/util/List;)V

    .line 2839
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2840
    .local v20, localAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2841
    .local v23, onlineAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mIsOnlineList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/LandingPageActivity;->prepareDataForList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2842
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/LandingPageActivity;->makeWhere(Ljava/util/List;)Ljava/lang/String;

    move-result-object v24

    .line 2843
    .local v24, where:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/music/LandingPageActivity;->makeWhere(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 2844
    .local v8, whereForOL:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/LandingPageActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 2845
    .local v7, mOnlineAlbumCols:[Ljava/lang/String;
    const/4 v3, 0x2

    const-string v4, "album_id"

    aput-object v4, v7, v3

    .line 2846
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startOnlineQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lcom/htc/music/LandingPageActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2854
    .end local v7           #mOnlineAlbumCols:[Ljava/lang/String;
    .end local v8           #whereForOL:Ljava/lang/String;
    .end local v20           #localAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23           #onlineAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24           #where:Ljava/lang/String;
    :cond_b
    const-string v16, "album COLLATE NOCASE ASC LIMIT 0,8"

    .line 2855
    .local v16, sortOrder:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2856
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v3, "album != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    const-string v3, " AND album != \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lcom/htc/music/LandingPageActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private reloadRecentAlbumAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x2711

    .line 2696
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2698
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2700
    :cond_0
    return-void
.end method

.method private saveLaunchItemList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1248
    const-string v3, "LandingPage"

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 1249
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1250
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "launchitemcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1251
    const-string v3, "preloadlistcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1252
    const-string v3, "autodetectlistcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1256
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1268
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {p0, v3}, Lcom/htc/music/LandingPageActivity;->getPackageName(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1272
    :cond_0
    const-string v3, "launchitemlist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1274
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1276
    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1278
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1279
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1281
    :cond_1
    const-string v3, "launchtypelist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1285
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1291
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {p0, v3}, Lcom/htc/music/LandingPageActivity;->getClassName(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1295
    :cond_2
    const-string v3, "launchclassnamelist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1297
    const-string v3, "removelist"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1300
    return-void
.end method

.method private scaleLaunchIcon(Landroid/widget/ImageView;II)V
    .locals 3
    .parameter "iv"
    .parameter "iconWidth"
    .parameter "iconHeight"

    .prologue
    .line 1513
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    sub-int/2addr v2, p2

    div-int/lit8 v0, v2, 0x2

    .line 1514
    .local v0, paddingLeft:I
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    sub-int/2addr v2, p3

    div-int/lit8 v1, v2, 0x2

    .line 1515
    .local v1, paddingTop:I
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1516
    return-void
.end method

.method private searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 3229
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/LandingPageActivity;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    .line 3230
    .local v0, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    invoke-static {p0, v0}, Lcom/htc/music/online/Util;->gotoRelatedWeibo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;)V

    .line 3232
    return-void
.end method

.method private sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .parameter "label"

    .prologue
    .line 3126
    if-nez p1, :cond_0

    .line 3127
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendUsedAppULogMessage, packageName is null!, label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    :goto_0
    return-void

    .line 3131
    :cond_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 3132
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3133
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3134
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "package_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    const-string v2, "label"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3137
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3140
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const-string v2, "[LandingPage]"

    const-string v3, "sendUsedAppULogMessage, mNonUIHandler is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .parameter "item"
    .parameter "appInfo"

    .prologue
    .line 2992
    if-nez p2, :cond_1

    .line 2993
    const-string v1, "[LandingPage]"

    const-string v2, "setNameAndIcon(LaunchItem, ApplicationInfo), appInfo is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    :cond_0
    :goto_0
    return-void

    .line 2997
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2998
    .local v0, pm:Landroid/content/pm/PackageManager;
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 2999
    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 3002
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 3004
    const-string v1, "com.htc.vmm"

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3005
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "item"
    .parameter "resolveInfo"

    .prologue
    .line 1495
    if-nez p2, :cond_1

    .line 1496
    const-string v1, "[LandingPage]"

    const-string v2, "setNameAndIcon(), resolveInfo is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1501
    .local v0, pm:Landroid/content/pm/PackageManager;
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 1502
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 1505
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1507
    const-string v1, "com.htc.vmm"

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1508
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 2615
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mShareBundle:Landroid/os/Bundle;

    .line 2619
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->showNewDialog(I)V

    .line 2620
    return-void
.end method

.method private shareOnlineMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 3220
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/LandingPageActivity;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    .line 3221
    .local v0, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/music/online/Util;->shareMusicInfo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;Z)V

    .line 3223
    return-void
.end method

.method private showAlbumOptions()V
    .locals 9

    .prologue
    const v8, 0x204020f

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 2498
    const/4 v2, 0x0

    .line 2499
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 2500
    .local v1, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 2503
    .local v0, dlnaMode:I
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v3}, Lcom/htc/music/online/Util;->serviceInOnlineMode(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2506
    new-array v2, v7, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f07005a

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v8}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2510
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v7, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_0

    .line 2518
    .restart local v1       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->hideHtcContextMenu()V

    .line 2519
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/music/LandingPageActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 2520
    return-void

    .line 2513
    :cond_0
    new-array v2, v4, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 2516
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v4, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_1

    .restart local v1       #ids:[I
    goto :goto_0

    .line 2510
    :array_0
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 2516
    :array_1
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showOnlineAlbumOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 3174
    new-array v1, v4, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0701dc

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x204020f

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0701df

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x2040216

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3179
    .local v1, items:[Ljava/lang/CharSequence;
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 3180
    .local v0, ids:[I
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->hideHtcContextMenu()V

    .line 3181
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lcom/htc/music/LandingPageActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 3182
    return-void

    .line 3179
    nop

    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private strArrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strArray"

    .prologue
    .line 969
    if-nez p1, :cond_0

    .line 970
    const-string v3, "[LandingPage]"

    const-string v4, "strArrayToStr, strArray is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const/4 v3, 0x0

    .line 979
    :goto_0
    return-object v3

    .line 973
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 974
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    array-length v0, p1

    .line 975
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 976
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 979
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private strToStrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 983
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    :cond_0
    const-string v1, "[LandingPage]"

    const-string v2, "strToStrArray, str is null or empty"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const/4 v0, 0x0

    .line 988
    :goto_0
    return-object v0

    .line 987
    :cond_1
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, strArray:[Ljava/lang/String;
    goto :goto_0
.end method

.method private updateLaunchItemsUI()V
    .locals 27

    .prologue
    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1304
    .local v8, itemNumber:I
    if-gtz v8, :cond_0

    .line 1305
    const-string v22, "[LandingPage]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "itemNumber = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    :goto_0
    return-void

    .line 1308
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_1

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1308
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1311
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1313
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v15, v0, [I

    fill-array-data v15, :array_0

    .line 1314
    .local v15, resNameId:[I
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v13, v0, [I

    fill-array-data v13, :array_1

    .line 1315
    .local v13, resIconId:[I
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v14, v0, [I

    fill-array-data v14, :array_2

    .line 1317
    .local v14, resLayoutId:[I
    const/16 v18, 0x0

    .line 1318
    .local v18, shortcutView:Landroid/view/View;
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1319
    .local v10, ll:Landroid/widget/LinearLayout;
    new-instance v22, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1320
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1321
    const v22, 0x2080001

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1323
    const/4 v5, 0x3

    .line 1324
    .local v5, column:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 1325
    const/4 v5, 0x3

    .line 1326
    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x2050011

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x205000b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1349
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f03003b

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 1350
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->isHVGA()Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1351
    const v22, 0x7f08008d

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1352
    .local v20, view:Landroid/view/View;
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    const v22, 0x7f08008c

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1354
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/high16 v26, 0x205

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1361
    .end local v20           #view:Landroid/view/View;
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1362
    const v22, 0x7f080080

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1363
    .local v9, iv:Landroid/widget/ImageView;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1364
    .local v11, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f02003f

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1367
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe999999999999aL

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1368
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe999999999999aL

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1369
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 1370
    .local v12, params:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1371
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1372
    const v22, 0x7f02003f

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1374
    const v22, 0x7f080081

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #iv:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 1375
    .restart local v9       #iv:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f02003e

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1376
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe999999999999aL

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1377
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe999999999999aL

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1378
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 1379
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1380
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1381
    const v22, 0x7f02003e

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1382
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1383
    const/16 v22, 0x0

    aget v22, v15, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1384
    .local v19, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4200(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    const/16 v22, 0x0

    aget v22, v14, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 1387
    .local v21, viewItem:Landroid/view/View;
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4300(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1393
    const v22, 0x7f08007f

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1394
    .local v6, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1395
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1399
    const/4 v7, 0x1

    :goto_4
    if-ge v7, v8, :cond_c

    .line 1400
    rem-int v22, v7, v5

    if-nez v22, :cond_2

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f03003b

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 1402
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->isHVGA()Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 1403
    const v22, 0x7f08008d

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1404
    .restart local v20       #view:Landroid/view/View;
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1405
    const v22, 0x7f08008c

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1406
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1408
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/high16 v26, 0x205

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1413
    .end local v20           #view:Landroid/view/View;
    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1416
    :cond_2
    rem-int v22, v7, v5

    aget v22, v13, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #iv:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 1417
    .restart local v9       #iv:Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1418
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v22

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 1423
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v9, v1}, Lcom/htc/music/LandingPageActivity;->loadHTCIcon(Landroid/widget/ImageView;Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    .line 1435
    :goto_6
    rem-int v22, v7, v5

    aget v22, v15, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #tv:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 1436
    .restart local v19       #tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4200(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    if-nez v7, :cond_4

    .line 1438
    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x205000d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1440
    :cond_4
    rem-int v22, v7, v5

    aget v22, v14, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 1441
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4300(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1399
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 1330
    .end local v6           #fl:Landroid/widget/FrameLayout;
    .end local v9           #iv:Landroid/widget/ImageView;
    .end local v11           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v19           #tv:Landroid/widget/TextView;
    .end local v21           #viewItem:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 1331
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->isHVGA()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1332
    const/4 v5, 0x4

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x205000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/high16 v24, 0x205

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x205000a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x2050001

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 1338
    :cond_6
    const/4 v5, 0x5

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x205000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/high16 v24, 0x205

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x205000a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x205000b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 1345
    :cond_7
    const-string v22, "[LandingPage]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown orientation change. mOrientation = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1358
    :cond_8
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x205000a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 1410
    .restart local v6       #fl:Landroid/widget/FrameLayout;
    .restart local v9       #iv:Landroid/widget/ImageView;
    .restart local v11       #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v19       #tv:Landroid/widget/TextView;
    .restart local v21       #viewItem:Landroid/view/View;
    :cond_9
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x205000a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 1425
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v22

    if-lez v22, :cond_b

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1427
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1428
    sget-object v22, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_6

    .line 1430
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1431
    const v22, 0x7f020061

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3f99999a

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3f99999a

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/music/LandingPageActivity;->scaleLaunchIcon(Landroid/widget/ImageView;II)V

    goto/16 :goto_6

    .line 1447
    :cond_c
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f030034

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 1451
    .local v17, seperatorView:Landroid/view/View;
    const v22, 0x7f08007a

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItemSeparator;

    .line 1452
    .local v16, seperator:Lcom/htc/widget/HtcListItemSeparator;
    const/16 v22, 0x0

    const v23, 0x7f070119

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 1453
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1313
    nop

    :array_0
    .array-data 0x4
        0x82t 0x0t 0x8t 0x7ft
        0x85t 0x0t 0x8t 0x7ft
        0x88t 0x0t 0x8t 0x7ft
        0x8bt 0x0t 0x8t 0x7ft
        0x8ft 0x0t 0x8t 0x7ft
    .end array-data

    .line 1314
    :array_1
    .array-data 0x4
        0x80t 0x0t 0x8t 0x7ft
        0x84t 0x0t 0x8t 0x7ft
        0x87t 0x0t 0x8t 0x7ft
        0x8at 0x0t 0x8t 0x7ft
        0x8et 0x0t 0x8t 0x7ft
    .end array-data

    .line 1315
    :array_2
    .array-data 0x4
        0x7et 0x0t 0x8t 0x7ft
        0x83t 0x0t 0x8t 0x7ft
        0x86t 0x0t 0x8t 0x7ft
        0x89t 0x0t 0x8t 0x7ft
        0x8dt 0x0t 0x8t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected executeMenuAction(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2261
    if-nez p1, :cond_1

    .line 2265
    :cond_0
    :goto_0
    return-void

    .line 2262
    :cond_1
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 2263
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->launchMediaServer()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2321
    sparse-switch p1, :sswitch_data_0

    .line 2495
    :cond_0
    :goto_0
    return-void

    .line 2323
    :sswitch_0
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 2324
    const/4 v8, 0x0

    .line 2325
    .local v8, pkgName:Ljava/lang/String;
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 2326
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2334
    :goto_1
    const-string v14, "[LandingPage]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ADD_APP_SHORTCUT, package name = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    const/4 v6, 0x3

    .line 2336
    .local v6, itemType:I
    if-eqz v8, :cond_6

    .line 2338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mCustTypeMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2339
    .local v2, custInt:Ljava/lang/Integer;
    if-eqz v2, :cond_5

    .line 2340
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2351
    .end local v2           #custInt:Ljava/lang/Integer;
    :cond_1
    :goto_2
    const-string v14, "[LandingPage]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ADD_APP_SHORTCUT, itemType = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2354
    .local v11, removeListStr:Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v14, ";"

    invoke-virtual {v8, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2355
    const-string v14, ";"

    invoke-virtual {v8, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 2356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    :cond_2
    new-instance v5, Lcom/htc/music/LandingPageActivity$LaunchItem;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 2361
    .local v5, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/4 v12, 0x0

    .line 2362
    .local v12, resolveInfo:Landroid/content/pm/ResolveInfo;
    packed-switch v6, :pswitch_data_0

    .line 2468
    :cond_3
    :goto_3
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    goto/16 :goto_0

    .line 2330
    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v6           #itemType:I
    .end local v11           #removeListStr:Ljava/lang/String;
    .end local v12           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    .line 2332
    const-string v14, "[LandingPage]"

    const-string v15, "ADD_APP_SHORTCUT, intent = null or intent.getComponent() = null"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2343
    .restart local v2       #custInt:Ljava/lang/Integer;
    .restart local v6       #itemType:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v14, v8}, Lcom/htc/music/ShortcutPageInfo;->getPreloadAutoDetectType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2344
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 2345
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    .line 2349
    .end local v2           #custInt:Ljava/lang/Integer;
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_6
    const-string v14, "[LandingPage]"

    const-string v15, "onActivityResult, ADD_APP_SHORTCUT, package name is null"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2364
    .restart local v5       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .restart local v11       #removeListStr:Ljava/lang/String;
    .restart local v12       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :pswitch_1
    if-eqz v8, :cond_3

    .line 2367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v14, v8}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 2368
    .local v10, preloadIntent:Landroid/content/Intent;
    if-eqz v10, :cond_b

    .line 2369
    new-instance v5, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 2370
    .restart local v5       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v14, 0x1000

    invoke-virtual {v10, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 2371
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v5, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 2372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v14, v8}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 2373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v14, v8}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4000(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 2376
    :cond_7
    const-string v14, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2378
    :cond_8
    const/4 v14, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4100(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 2380
    :cond_9
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 2381
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v5}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 2382
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int v3, v14, v15

    .line 2389
    .local v3, insertIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gt v3, v14, :cond_a

    .line 2390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 2392
    :cond_a
    const-string v14, "[LandingPage]"

    const-string v15, "onActivityResult, Insert index > mLaunchItemList size"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2396
    .end local v3           #insertIndex:I
    :cond_b
    const-string v14, "[LandingPage]"

    const-string v15, "onActivityResult, ADD_APP_SHORTCUT, TYPE_PRELOAD, preloadIntent is null"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2401
    .end local v10           #preloadIntent:Landroid/content/Intent;
    :pswitch_2
    if-eqz p3, :cond_c

    .line 2402
    new-instance v5, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 2403
    .restart local v5       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v14, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 2404
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v5, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 2405
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 2406
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v5}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 2407
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 2408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2409
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2411
    :cond_c
    const-string v14, "[LandingPage]"

    const-string v15, "onActivityResult, ADD_APP_SHORTCUT, TYPE_AUTO_DETECT, intent is null"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2416
    :pswitch_3
    if-eqz p3, :cond_f

    .line 2417
    new-instance v5, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 2418
    .restart local v5       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v14, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 2419
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v5, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 2420
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 2421
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v5}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 2422
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 2423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
    const-string v14, "com.htc.fm"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2426
    const v14, 0x7f02004b

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4000(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int v3, v14, v15

    .line 2431
    .restart local v3       #insertIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gt v3, v14, :cond_d

    .line 2432
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 2434
    :cond_d
    const-string v14, "[LandingPage]"

    const-string v15, "FMRadio\'s insert index > mLaunchItemList size"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2438
    .end local v3           #insertIndex:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2441
    :cond_f
    const-string v14, "[LandingPage]"

    const-string v15, "onActivityResult, ADD_APP_SHORTCUT, TYPE_OTHER, intent is null"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2446
    :pswitch_4
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/htc/music/online/Util;->getAppInfoIncludeDisable(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2447
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_11

    .line 2448
    new-instance v5, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 2449
    .restart local v5       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v5, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 2450
    const/4 v14, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIsCustApp(Z)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$7200(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 2451
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 2452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mCustIconMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 2453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mCustIconMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v5, v14}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$4000(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 2455
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ApplicationInfo;)V

    .line 2456
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/music/LandingPageActivity;->addCustApp(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    goto/16 :goto_3

    .line 2459
    :cond_11
    if-eqz v8, :cond_3

    .line 2460
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2473
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v6           #itemType:I
    .end local v8           #pkgName:Ljava/lang/String;
    .end local v11           #removeListStr:Ljava/lang/String;
    .end local v12           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :sswitch_1
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 2474
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2476
    .local v13, where:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v7

    .line 2477
    .local v7, list:[I
    const-string v14, "playlist"

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2478
    .local v9, playlist:I
    int-to-long v14, v9

    move-object/from16 v0, p0

    invoke-static {v0, v7, v14, v15}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 2483
    .end local v7           #list:[I
    .end local v9           #playlist:I
    .end local v13           #where:Ljava/lang/String;
    :sswitch_2
    packed-switch p2, :pswitch_data_1

    .line 2490
    :goto_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/music/LandingPageActivity;->mbIsItemClicked:Z

    goto/16 :goto_0

    .line 2487
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->doAfterCheckDataFeeSuccess()V

    goto :goto_4

    .line 2321
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x17 -> :sswitch_1
    .end sparse-switch

    .line 2362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 2483
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 823
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 825
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 836
    :goto_0
    return-void

    .line 828
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    .line 829
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 830
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 831
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 832
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 833
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 835
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 551
    const-string v3, "[LandingPage]"

    const-string v4, "onCreate() +"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 553
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->setVolumeControlStream(I)V

    .line 557
    invoke-static {}, Lcom/htc/music/online/Util;->checkEnabledSinaTestFeature()V

    .line 561
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.music.recentlyplayedalbumchanged"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 563
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.music.asyncopencomplete"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.music.timeout"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 567
    .local v0, f:Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 568
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 571
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/htc/music/LandingPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 574
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 575
    .local v2, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 576
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 577
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 578
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 580
    const v3, 0x7f030039

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->setContentView(I)V

    .line 581
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 582
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 584
    new-instance v3, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;-><init>(Lcom/htc/music/LandingPageActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 593
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "LandingPageNonUIThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 594
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 595
    new-instance v3, Lcom/htc/music/LandingPageActivity$NonUIHandler;

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/LandingPageActivity$NonUIHandler;-><init>(Lcom/htc/music/LandingPageActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 597
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 600
    new-instance v3, Lcom/htc/music/LandingPageActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/music/LandingPageActivity$1;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 610
    new-instance v3, Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    .line 612
    const-string v3, "[LandingPage]"

    const-string v4, "onCreate() -"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 840
    packed-switch p1, :pswitch_data_0

    .line 924
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 843
    :pswitch_1
    const/4 v0, 0x0

    .line 844
    .local v0, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/CharSequence;

    .end local v0           #items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    const v4, 0x7f0701d3

    invoke-virtual {p0, v4}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 847
    .restart local v0       #items:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/LandingPageActivity$3;

    invoke-direct {v4, p0}, Lcom/htc/music/LandingPageActivity$3;-><init>(Lcom/htc/music/LandingPageActivity;)V

    invoke-virtual {v3, v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 903
    .local v2, longPressDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 911
    .end local v0           #items:[Ljava/lang/CharSequence;
    .end local v2           #longPressDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mShareBundle:Landroid/os/Bundle;

    invoke-static {v3, v4}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 915
    :pswitch_3
    new-instance v1, Lcom/htc/music/LandingPageActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/LandingPageActivity$4;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 921
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mClickedName:Ljava/lang/String;

    invoke-static {p0, v3, v4, v1}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 4
    .parameter "playlistName"

    .prologue
    .line 929
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 930
    .local v0, id:I
    iget v1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 932
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2175
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2182
    const v0, 0x7f0701cf

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2183
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    const v0, 0x7f070034

    invoke-interface {p1, v1, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2189
    :cond_0
    return v3
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 684
    const-string v2, "[LandingPage]"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 688
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    .line 692
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 693
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 697
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/LandingPageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_2

    .line 703
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 704
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 707
    :cond_2
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 709
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    :goto_1
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 714
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 720
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/music/LandingPageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 721
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    .line 722
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 727
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->clear()V

    .line 729
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mOnlineMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->clear()V

    .line 731
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 732
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 733
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 734
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 735
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 736
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    if-eqz v2, :cond_4

    .line 737
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v2}, Lcom/htc/music/ShortcutPageInfo;->clear()V

    .line 740
    :cond_4
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 741
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 743
    :cond_5
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustIntentMap:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    .line 744
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustIntentMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 746
    :cond_6
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustTypeMap:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    .line 747
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 749
    :cond_7
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustIconMap:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    .line 750
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mCustIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 753
    :cond_8
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_9

    .line 754
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 757
    :cond_9
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 758
    return-void

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "[LandingPage]"

    const-string v3, "[onDestroy] unregisterReceiver(mStatusListener)"

    invoke-static {v2, v3, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 710
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlbumCursor error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 2523
    packed-switch p1, :pswitch_data_0

    .line 2572
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v5

    :goto_1
    return v5

    .line 2525
    :pswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v6

    if-gtz v6, :cond_0

    .line 2526
    const/16 v6, 0x25a

    invoke-virtual {p0, v6}, Lcom/htc/music/LandingPageActivity;->showDialog(I)V

    goto :goto_1

    .line 2529
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2530
    .local v3, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2531
    const-string v6, "pickermode"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2532
    iget v6, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    .line 2533
    .local v0, addToPlaylistData:[I
    const-string v6, "AddToPlaylistData"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2534
    const/16 v6, 0x17

    invoke-virtual {p0, v3, v6}, Lcom/htc/music/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 2540
    .end local v0           #addToPlaylistData:[I
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_2
    :try_start_0
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-interface {v6, v7, v8}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2541
    :catch_0
    move-exception v1

    .line 2542
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "[LandingPage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADD_TO_QUEUE, NumberFormatException e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2543
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 2544
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "[LandingPage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2549
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_3
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/music/LandingPageActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2553
    :pswitch_4
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/music/LandingPageActivity;->shareOnlineMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2558
    :pswitch_5
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    const/16 v6, 0x1d

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2562
    :pswitch_6
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/music/LandingPageActivity;->searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2566
    :pswitch_7
    iget v5, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-virtual {p0, v5}, Lcom/htc/music/LandingPageActivity;->queryMediaInfo(I)I

    move-result v4

    .line 2567
    .local v4, songId:I
    new-instance v2, Lcom/htc/music/online/util/AsyncSongDetailGetter;

    invoke-direct {v2, p0}, Lcom/htc/music/online/util/AsyncSongDetailGetter;-><init>(Landroid/content/Context;)V

    .line 2568
    .local v2, getter:Lcom/htc/music/online/util/AsyncSongDetailGetter;
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    invoke-virtual {v2, v4, v5}, Lcom/htc/music/online/util/AsyncSongDetailGetter;->start(ILcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;)V

    goto/16 :goto_0

    .line 2523
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2286
    const-wide/16 v1, -0x2

    cmp-long v1, p4, v1

    if-nez v1, :cond_1

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2293
    :cond_1
    const/4 v1, 0x2

    if-lt p3, v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/LandingPageActivity$BaseItem;

    #getter for: Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5500(Lcom/htc/music/LandingPageActivity$BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2295
    invoke-static {p0}, Lcom/htc/music/online/Util;->checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/LandingPageActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2296
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_0

    .line 2297
    new-array v1, v3, [I

    long-to-int v2, p4

    aput v2, v1, v4

    const/4 v2, 0x0

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-static {p0, v1, v4, v2, v3}, Lcom/htc/music/util/MusicUtils;->playOnline(Landroid/content/Context;[IZLcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 2303
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2304
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2305
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2306
    const-string v1, "albumid"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2310
    const-string v1, "ShowActivityTitle"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2311
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2312
    const-string v1, "ForceDisableDropDown"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2313
    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2315
    const-string v1, "com.htc.music"

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 2205
    const/4 v2, 0x0

    .line 2206
    .local v2, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 2256
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    return v6

    .line 2213
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2214
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/AddAppShortcutActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2215
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 2216
    .local v5, pkgNameList:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 2217
    .local v0, clsNameList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 2218
    const/4 v6, 0x0

    aput-object v6, v0, v1

    .line 2217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2220
    :cond_0
    const/4 v1, 0x1

    :goto_2
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 2221
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 2222
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 2223
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 2220
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2225
    :cond_2
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 2226
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {p0, v6}, Lcom/htc/music/LandingPageActivity;->getPackageName(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 2227
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {p0, v6}, Lcom/htc/music/LandingPageActivity;->getClassName(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    goto :goto_3

    .line 2231
    :cond_3
    const-string v6, "currentpkg"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2232
    const-string v6, "currentcls"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2233
    const-string v6, "autoaddlist"

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/music/LandingPageActivity;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2235
    const-string v6, "customizationpkg"

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2236
    const-string v6, "customizationpkgstr"

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/music/LandingPageActivity;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2238
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Lcom/htc/music/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2242
    .end local v0           #clsNameList:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v5           #pkgNameList:[Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v6, :cond_4

    .line 2243
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v7, 0xea63

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2244
    .local v4, msg:Landroid/os/Message;
    const/4 v6, 0x2

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 2245
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2247
    .end local v4           #msg:Landroid/os/Message;
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->launchMediaServer()V

    goto/16 :goto_0

    .line 2251
    :sswitch_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2252
    .local v3, launchVmmIntent:Landroid/content/Intent;
    const-string v6, "StartNewActivity"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2253
    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2206
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 817
    const-string v0, "[LandingPage]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 819
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 936
    packed-switch p1, :pswitch_data_0

    .line 948
    :goto_0
    return-void

    .line 938
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 936
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 2195
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2196
    .local v1, item:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 2197
    .local v0, enable:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2198
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2200
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 2196
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 799
    const-string v0, "[LandingPage]"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 803
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->getLibraryIntent()Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 813
    :cond_0
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1718
    move v1, p2

    .line 1719
    .local v1, start:I
    add-int v0, p2, p3

    .line 1721
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 1722
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 1727
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1695
    const-string v0, "[LandingPage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    packed-switch p2, :pswitch_data_0

    .line 1713
    :cond_0
    :goto_0
    return-void

    .line 1698
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1703
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1708
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1696
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 762
    const-string v0, "[LandingPage]"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    .line 765
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 766
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 770
    const-string v0, "[LandingPage]"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    .line 772
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    .line 777
    :cond_0
    monitor-enter p0

    .line 778
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 779
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->onStop()V

    .line 787
    :goto_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 789
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 792
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->saveLaunchItemList()V

    .line 794
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 795
    return-void

    .line 779
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 783
    :cond_2
    const-string v0, "[LandingPage]"

    const-string v1, "[onStop] mSinaRequestHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryMediaInfo(I)I
    .locals 11
    .parameter "id"

    .prologue
    .line 3185
    const/4 v9, 0x0

    .line 3186
    .local v9, mAlbumId:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3190
    .local v2, mOnlineCursorCols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 3192
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3195
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 3196
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3197
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 3198
    .local v6, colCount:I
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 3199
    .local v10, position:I
    if-lez v6, :cond_0

    if-gez v10, :cond_2

    .line 3200
    :cond_0
    const-string v0, "[LandingPage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCurrent: cols count = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", position = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3201
    const/4 v0, -0x1

    .line 3208
    if-eqz v7, :cond_1

    .line 3209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3210
    const/4 v7, 0x0

    .line 3213
    .end local v6           #colCount:I
    .end local v10           #position:I
    :cond_1
    :goto_0
    return v0

    .line 3203
    .restart local v6       #colCount:I
    .restart local v10       #position:I
    :cond_2
    :try_start_1
    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 3208
    .end local v6           #colCount:I
    .end local v10           #position:I
    :cond_3
    if-eqz v7, :cond_4

    .line 3209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3210
    :goto_1
    const/4 v7, 0x0

    :cond_4
    move v0, v9

    .line 3213
    goto :goto_0

    .line 3205
    :catch_0
    move-exception v8

    .line 3206
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "[LandingPage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB error for:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3208
    if-eqz v7, :cond_4

    .line 3209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3208
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 3209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3210
    const/4 v7, 0x0

    .line 3208
    :cond_5
    throw v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 621
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mIsStartMutiProcessActivity:Z

    if-eqz v0, :cond_0

    .line 622
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 624
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->startActivity(Landroid/content/Intent;)V

    .line 625
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mIsStartMutiProcessActivity:Z

    if-eqz v0, :cond_1

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 627
    iput-boolean v1, p0, Lcom/htc/music/LandingPageActivity;->mIsStartMutiProcessActivity:Z

    .line 629
    :cond_1
    return-void
.end method
