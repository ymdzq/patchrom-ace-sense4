.class public Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.super Lcom/htc/music/widget/fragment/MusicListFragment;
.source "TrackBrowserFragment.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$RecentPlayedPlaylistCursor;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;
    }
.end annotation


# static fields
.field private static final DIALOG_CREATE_PLAYLIST:I = 0x8

.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field private static final DIALOG_SHARETEXT:I = 0x5

.field private static final DIALOG_SHARETYPE:I = 0x4

.field private static final DIALOG_SHARE_DRM_FILE:I = 0x7

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0x6

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field private static final INVALIDATE_LISTVIEW:I = 0x1

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[TrackBrowserFragment]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final ADD_SONGS:I

.field private final CHANGE_ORDER:I

.field private final CLEAR_PLAYLIST:I

.field private final DELETE_SONGS:I

.field private final DIALOG_SET_AS_RINGTONE:I

.field private final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

.field private final EDIT_PLAYLIST:I

.field private final PLAY_ALL:I

.field private final Q_ALL:I

.field private final Q_SELECTED:I

.field private final REMOVE:I

.field private final RENAME_PLAYLIST:I

.field private final SAVE_AS_PLAYLIST:I

.field private final SEARCH:I

.field private final SELECT_ALL:I

.field private final SETTING:I

.field private final SET_RINGTONE:I

.field private final SHARE:I

.field private final SHARE_PLUGIN:I

.field private final UNSELECT_ALL:I

.field private final UPLOAD:I

.field mActivityMainTitle:Ljava/lang/String;

.field mActivitySecondaryTitle:Ljava/lang/String;

.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field private mButtonPanel:Lcom/htc/widget/HtcFooter;

.field private mCategory:S

.field private mComposer:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeletedOneRow:Z

.field private mDescription:Ljava/lang/String;

.field mDestroyed:Z

.field private mDlnaMode:I

.field private mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mDlnaServiceConn:Z

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mEditMode:Z

.field private mFilter:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field private mIsDrmList:Z

.field public mIsNowPlayinglist:Z

.field private mItemClicked:Z

.field private mLibraryButton:Landroid/widget/ImageButton;

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMsg:Ljava/lang/String;

.field private mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mNeedBindService:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPickerMode:I

.field mPlaybackServiceConnected:Z

.field private mPlaylistAudioId:[I

.field private mPlaylistContent:[I

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mQueueTitle:Lcom/htc/widget/HeaderBarText;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecentPlayedListener:Landroid/content/BroadcastReceiver;

.field private mRecentPlayedPlaylist:Z

.field private mRecommendButton:Landroid/widget/ImageButton;

.field private mRecommendListener:Landroid/view/View$OnClickListener;

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field private mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPlaylistId:Ljava/lang/String;

.field private mSelectedPlaylistName:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mShareText:Ljava/lang/String;

.field private mShowPlayerPanel:Z

.field private mSortOrder:Ljava/lang/String;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

.field private mcurDMR:Ljava/lang/String;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 248
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;-><init>()V

    .line 137
    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->Q_SELECTED:I

    .line 139
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->Q_ALL:I

    .line 141
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SAVE_AS_PLAYLIST:I

    .line 143
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->PLAY_ALL:I

    .line 145
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->CLEAR_PLAYLIST:I

    .line 147
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->REMOVE:I

    .line 149
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SEARCH:I

    .line 152
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->ADD_SONGS:I

    .line 154
    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DELETE_SONGS:I

    .line 156
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->CHANGE_ORDER:I

    .line 158
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->RENAME_PLAYLIST:I

    .line 160
    const/16 v0, 0x25

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SELECT_ALL:I

    .line 162
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->UNSELECT_ALL:I

    .line 164
    const/16 v0, 0x27

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DIALOG_SET_AS_RINGTONE:I

    .line 166
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 168
    const/16 v0, 0x29

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->EDIT_PLAYLIST:I

    .line 170
    const/16 v0, 0x2a

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SHARE_PLUGIN:I

    .line 172
    const/16 v0, 0x2b

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->UPLOAD:I

    .line 174
    const/16 v0, 0x2c

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SETTING:I

    .line 176
    const/16 v0, 0x2d

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SHARE:I

    .line 178
    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SET_RINGTONE:I

    .line 188
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z

    .line 190
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    .line 202
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 204
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapterSent:Z

    .line 220
    iput-short v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCategory:S

    .line 233
    iput v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    .line 235
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mcurDMR:Ljava/lang/String;

    .line 237
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaServiceConn:Z

    .line 239
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 241
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    .line 279
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    .line 540
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 594
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mConnection:Landroid/content/ServiceConnection;

    .line 627
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNotifyCallback:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;

    .line 724
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDestroyed:Z

    .line 881
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 904
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    .line 917
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 935
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    .line 1328
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 1337
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 1442
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    .line 1482
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$10;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 1493
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 2726
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$13;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$13;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 2742
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$14;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$14;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecommendListener:Landroid/view/View$OnClickListener;

    .line 4261
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShowPlayerPanel:Z

    .line 4264
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPrevButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNextButton:Landroid/widget/ImageButton;

    .line 4266
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPauseButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLibraryButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecommendButton:Landroid/widget/ImageButton;

    .line 4268
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    .line 4269
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    .line 4275
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mItemClicked:Z

    .line 4277
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 4278
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    .line 4279
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 4281
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    .line 4283
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    .line 4284
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->preSearchTime:J

    .line 4285
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$17;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$17;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    .line 4302
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    .line 4330
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    .line 4383
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShareText:Ljava/lang/String;

    .line 4396
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$18;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$18;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4
    .parameter "launchIntent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;-><init>()V

    .line 137
    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->Q_SELECTED:I

    .line 139
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->Q_ALL:I

    .line 141
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SAVE_AS_PLAYLIST:I

    .line 143
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->PLAY_ALL:I

    .line 145
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->CLEAR_PLAYLIST:I

    .line 147
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->REMOVE:I

    .line 149
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SEARCH:I

    .line 152
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->ADD_SONGS:I

    .line 154
    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DELETE_SONGS:I

    .line 156
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->CHANGE_ORDER:I

    .line 158
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->RENAME_PLAYLIST:I

    .line 160
    const/16 v0, 0x25

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SELECT_ALL:I

    .line 162
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->UNSELECT_ALL:I

    .line 164
    const/16 v0, 0x27

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DIALOG_SET_AS_RINGTONE:I

    .line 166
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 168
    const/16 v0, 0x29

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->EDIT_PLAYLIST:I

    .line 170
    const/16 v0, 0x2a

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SHARE_PLUGIN:I

    .line 172
    const/16 v0, 0x2b

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->UPLOAD:I

    .line 174
    const/16 v0, 0x2c

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SETTING:I

    .line 176
    const/16 v0, 0x2d

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SHARE:I

    .line 178
    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SET_RINGTONE:I

    .line 188
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z

    .line 190
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    .line 202
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 204
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapterSent:Z

    .line 220
    iput-short v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCategory:S

    .line 233
    iput v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    .line 235
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mcurDMR:Ljava/lang/String;

    .line 237
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaServiceConn:Z

    .line 239
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 241
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    .line 279
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    .line 540
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 594
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mConnection:Landroid/content/ServiceConnection;

    .line 627
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNotifyCallback:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;

    .line 724
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDestroyed:Z

    .line 881
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 904
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    .line 917
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 935
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    .line 1328
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 1337
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 1442
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    .line 1482
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$10;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 1493
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 2726
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$13;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$13;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 2742
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$14;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$14;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecommendListener:Landroid/view/View$OnClickListener;

    .line 4261
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShowPlayerPanel:Z

    .line 4264
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPrevButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNextButton:Landroid/widget/ImageButton;

    .line 4266
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPauseButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLibraryButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecommendButton:Landroid/widget/ImageButton;

    .line 4268
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    .line 4269
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    .line 4275
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mItemClicked:Z

    .line 4277
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 4278
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    .line 4279
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 4281
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    .line 4283
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    .line 4284
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->preSearchTime:J

    .line 4285
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$17;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$17;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    .line 4302
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    .line 4330
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    .line 4383
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShareText:Ljava/lang/String;

    .line 4396
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$18;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$18;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    .line 253
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIntent:Landroid/content/Intent;

    .line 254
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNotifyCallback:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateQueueTitle()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;IJZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showTrackOptions(IJZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onClickMusicStore()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mcurDMR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    return v0
.end method

.method private canShare()I
    .locals 1

    .prologue
    .line 2515
    const/4 v0, 0x0

    return v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 13
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1690
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 1691
    .local v8, status:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    .line 1692
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    .line 1744
    :goto_0
    return-void

    .line 1693
    :cond_0
    if-nez v8, :cond_5

    .line 1694
    const/4 v5, 0x0

    .line 1695
    .local v5, msg:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {v7, p1, v10}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v1

    .line 1696
    .local v1, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v1, :cond_2

    .line 1697
    const/4 v0, 0x0

    .line 1698
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-nez v10, :cond_1

    .line 1701
    new-instance v10, Lcom/htc/music/NpCategory;

    iget-short v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCategory:S

    invoke-direct {v10, v11}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    .line 1704
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    new-array v12, v12, [I

    invoke-static {v10, v11, p2, v0, v12}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 1706
    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMsg:Ljava/lang/String;

    .line 1707
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMsg:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 1708
    move v6, p2

    .line 1709
    .local v6, pos:I
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    goto :goto_0

    .line 1711
    .end local v6           #pos:I
    :cond_3
    const/4 v0, 0x0

    .line 1712
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-nez v10, :cond_4

    .line 1715
    new-instance v10, Lcom/htc/music/NpCategory;

    iget-short v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCategory:S

    invoke-direct {v10, v11}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    .line 1718
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    new-array v12, v12, [I

    invoke-static {v10, v11, p2, v0, v12}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto/16 :goto_0

    .line 1722
    .end local v0           #category:Lcom/htc/music/NpCategory;
    .end local v1           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v5           #msg:Ljava/lang/String;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1723
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-class v11, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1724
    const-string v10, "drmtargettomain"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1727
    const/4 v3, 0x0

    .line 1729
    .local v3, id_idx:I
    :try_start_0
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    if-nez v10, :cond_6

    .line 1730
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "audio_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1736
    :goto_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1737
    .local v9, trackId:Ljava/lang/String;
    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    :goto_2
    const/4 v10, -0x2

    invoke-virtual {p0, v4, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1733
    .end local v9           #trackId:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 1738
    :catch_0
    move-exception v2

    .line 1739
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_id"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1740
    .restart local v9       #trackId:Ljava/lang/String;
    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 4355
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    .line 4356
    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 2753
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 2754
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2755
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 2760
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setPauseButtonImage()V

    .line 2764
    :cond_0
    :goto_1
    return-void

    .line 2757
    :cond_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2762
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getActivityTitle()Ljava/lang/String;
    .locals 18

    .prologue
    .line 2787
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2788
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_1

    const/4 v12, 0x0

    .line 2930
    :cond_0
    :goto_0
    return-object v12

    .line 2789
    :cond_1
    const/4 v12, 0x0

    .line 2790
    .local v12, fancyName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v2, :cond_3

    .line 2791
    const v2, 0x7f07000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2927
    :cond_2
    :goto_1
    if-nez v12, :cond_0

    .line 2928
    const v2, 0x7f070027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 2792
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v2, v4, v16

    if-eqz v2, :cond_4

    .line 2794
    const v2, 0x7f070070

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 2795
    const-string v12, ""

    goto :goto_0

    .line 2796
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070027

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 2798
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    if-ne v2, v4, :cond_6

    .line 2799
    const v2, 0x7f070033

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 2800
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 2801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2802
    .local v7, albunId:J
    const-wide/16 v4, -0x1

    cmp-long v2, v7, v4

    if-nez v2, :cond_7

    .line 2803
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 2805
    :cond_7
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "album"

    aput-object v4, v3, v2

    .line 2808
    .local v3, cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2811
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 2812
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_8

    .line 2813
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2814
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2815
    const-string v2, "<unknown>"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2816
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2819
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2823
    .end local v3           #cols:[Ljava/lang/String;
    .end local v7           #albunId:J
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 2824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 2825
    .local v9, artistId:J
    const-wide/16 v4, -0x1

    cmp-long v2, v9, v4

    if-nez v2, :cond_a

    .line 2826
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2828
    :cond_a
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "artist"

    aput-object v4, v3, v2

    .line 2831
    .restart local v3       #cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2834
    .restart local v11       #cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 2835
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_b

    .line 2836
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2837
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2838
    const-string v2, "<unknown>"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2839
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2841
    :cond_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2845
    .end local v3           #cols:[Ljava/lang/String;
    .end local v9           #artistId:J
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v2, v4, :cond_e

    .line 2846
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    .line 2847
    const v2, 0x7f070020

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2852
    :cond_d
    const v2, 0x7f07001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2854
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 2855
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_12

    .line 2856
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v3, v2

    .line 2857
    .restart local v3       #cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2863
    .restart local v11       #cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_10

    .line 2864
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_f

    .line 2865
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2866
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    .line 2868
    :cond_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2869
    const/4 v11, 0x0

    .line 2872
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 2874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_11

    .line 2875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2876
    .local v15, iCount:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 2879
    .end local v15           #iCount:I
    :cond_11
    const-string v12, ""

    goto/16 :goto_0

    .line 2881
    .end local v3           #cols:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_12
    const v2, 0x7f070119

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    .line 2882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_13

    .line 2883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2884
    .restart local v15       #iCount:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 2886
    .end local v15           #iCount:I
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2889
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 2890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2891
    .local v13, genreId:J
    const-wide/16 v4, -0x1

    cmp-long v2, v13, v4

    if-nez v2, :cond_15

    .line 2892
    const v2, 0x7f070050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2894
    :cond_15
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v3, v2

    .line 2897
    .restart local v3       #cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2900
    .restart local v11       #cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 2901
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_16

    .line 2902
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2903
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2905
    :cond_16
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2909
    .end local v3           #cols:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #genreId:J
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 2910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const v2, 0x7f07004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    goto :goto_2

    .line 2922
    :cond_19
    const v2, 0x7f070027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 2924
    const-string v12, ""

    goto/16 :goto_0
.end method

.method private getListSizeTitle(I)Ljava/lang/String;
    .locals 4
    .parameter "iListSize"

    .prologue
    .line 4458
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4459
    .local v0, szTitle:Ljava/lang/String;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4460
    :cond_0
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4462
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "%1s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4463
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4467
    :goto_0
    return-object v1

    .line 4466
    :cond_2
    const-string v1, "[TrackBrowserFragment]"

    const-string v2, "getListSizeTitle(), Can\'t find String htc_all_tracks_title_counts or htc_all_tracks_title_one!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4467
    const-string v1, ""

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 30
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 2527
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 2528
    .local v4, activity:Landroid/app/Activity;
    if-nez v4, :cond_1

    const/16 v24, 0x0

    .line 2723
    .end local v4           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v24

    .line 2529
    .restart local v4       #activity:Landroid/app/Activity;
    :cond_1
    const/16 v24, 0x0

    .line 2530
    .local v24, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_6

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    .line 2531
    const-string v2, "title COLLATE NOCASE ASC"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    .line 2532
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 2533
    .local v29, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    const/4 v8, 0x0

    .line 2537
    .local v8, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2538
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 2539
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 2540
    const-string v2, " AND "

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2541
    const-string v2, "title LIKE ?"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2550
    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    .line 2553
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .line 2558
    .local v19, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v19, v2

    if-nez v2, :cond_8

    .line 2559
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    if-eqz p1, :cond_7

    .line 2562
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .end local v4           #activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    const/16 v24, 0x0

    .line 2717
    .end local v19           #genreId:J
    :cond_5
    :goto_2
    if-eqz v24, :cond_0

    if-eqz p1, :cond_0

    .line 2718
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->init(Landroid/database/Cursor;)V

    .line 2721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2530
    .end local v8           #keywords:[Ljava/lang/String;
    .end local v29           #where:Ljava/lang/StringBuilder;
    .restart local v4       #activity:Landroid/app/Activity;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2566
    .restart local v8       #keywords:[Ljava/lang/String;
    .restart local v19       #genreId:J
    .restart local v29       #where:Ljava/lang/StringBuilder;
    :cond_7
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    goto :goto_2

    .line 2570
    :cond_8
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    if-eqz p1, :cond_9

    .line 2572
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move-object v15, v8

    invoke-virtual/range {v9 .. v16}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2576
    :cond_9
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_2

    .line 2578
    .end local v19           #genreId:J
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v2, v3, :cond_f

    .line 2579
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    .line 2580
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_5

    .line 2581
    if-eqz p2, :cond_d

    .line 2582
    const/16 v22, 0x0

    .line 2584
    .local v22, nowplaying:[I
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v22

    .line 2585
    const-string v2, " AND _id IN ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_c

    .line 2587
    aget v2, v22, v21

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2588
    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v21

    if-ge v0, v2, :cond_b

    .line 2589
    const-string v2, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 2592
    :cond_c
    const-string v2, ")"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v24

    goto/16 :goto_2

    .line 2601
    .end local v21           #i:I
    .end local v22           #nowplaying:[I
    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v26

    .line 2602
    .local v26, status:Ljava/lang/String;
    const-string v2, "mounted"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2603
    new-instance v24, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    .end local v24           #ret:Landroid/database/Cursor;
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .restart local v24       #ret:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 2606
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 2610
    .end local v26           #status:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 2611
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_11

    .line 2613
    const-string v2, "play_order"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    .line 2615
    if-eqz p1, :cond_10

    .line 2616
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move-object v15, v8

    invoke-virtual/range {v9 .. v16}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    const/16 v24, 0x0

    .line 2633
    :goto_4
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCategory:S

    goto/16 :goto_2

    .line 2626
    :cond_10
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    goto :goto_4

    .line 2636
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    .line 2637
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_5

    .line 2638
    const/16 v23, 0x0

    .line 2640
    .local v23, recentPlayed:[I
    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v23

    .line 2641
    const-string v2, " AND _id IN ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_5
    move-object/from16 v0, v23

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_13

    .line 2643
    aget v2, v23, v21

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2644
    move-object/from16 v0, v23

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v21

    if-ge v0, v2, :cond_12

    .line 2645
    const-string v2, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    :cond_12
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 2648
    :cond_13
    const-string v2, ")"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2649
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 2652
    .local v27, tempCursor:Landroid/database/Cursor;
    if-eqz v27, :cond_15

    .line 2653
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v27

    .line 2654
    if-eqz v27, :cond_14

    .line 2655
    new-instance v25, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$RecentPlayedPlaylistCursor;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$RecentPlayedPlaylistCursor;-><init>(Landroid/database/Cursor;[ILcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;)V

    .end local v24           #ret:Landroid/database/Cursor;
    .local v25, ret:Landroid/database/Cursor;
    move-object/from16 v24, v25

    .end local v25           #ret:Landroid/database/Cursor;
    .restart local v24       #ret:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 2658
    :cond_14
    const-string v2, "[TrackBrowserFragment]"

    const-string v3, "Recently played cursor became null after joinAlbumArt."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 2663
    .end local v21           #i:I
    .end local v27           #tempCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v18

    .line 2664
    .local v18, ex:Landroid/os/RemoteException;
    const-string v2, "[TrackBrowserFragment]"

    const-string v3, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2661
    .end local v18           #ex:Landroid/os/RemoteException;
    .restart local v21       #i:I
    .restart local v27       #tempCursor:Landroid/database/Cursor;
    :cond_15
    :try_start_2
    const-string v2, "[TrackBrowserFragment]"

    const-string v3, "Recently played cursor is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 2670
    .end local v21           #i:I
    .end local v23           #recentPlayed:[I
    .end local v27           #tempCursor:Landroid/database/Cursor;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 2671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2672
    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    .line 2674
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 2675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 2678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2679
    .local v17, composer:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v28

    .line 2680
    .local v28, unknown:Z
    if-eqz v28, :cond_1a

    .line 2681
    const-string v2, " AND "

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2682
    invoke-static/range {v29 .. v29}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 2691
    .end local v17           #composer:Ljava/lang/String;
    .end local v28           #unknown:Z
    :cond_19
    :goto_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    if-ne v2, v3, :cond_1c

    .line 2696
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2697
    const-string v2, " AND (is_music>1 OR mime_type = \'audio/x-wma-drm\' )"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    :goto_7
    if-eqz p1, :cond_1d

    .line 2704
    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move-object v15, v8

    invoke-virtual/range {v9 .. v16}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 2685
    .restart local v17       #composer:Ljava/lang/String;
    .restart local v28       #unknown:Z
    :cond_1a
    const-string v2, "\'"

    const-string v3, "\'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND composer = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2699
    .end local v17           #composer:Ljava/lang/String;
    .end local v28           #unknown:Z
    :cond_1b
    const-string v2, " AND is_music>1"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 2701
    :cond_1c
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 2708
    :cond_1d
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_2

    .line 2597
    .restart local v22       #nowplaying:[I
    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method

.method private initialUI()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 437
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v0, :cond_c

    .line 438
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v12}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_1

    .line 442
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 443
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 454
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 455
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 458
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v0, :cond_d

    .line 459
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 461
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 462
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 463
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 478
    :cond_3
    :goto_1
    const/4 v11, 0x0

    .line 479
    .local v11, hideSelected:Z
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    if-eq v0, v12, :cond_4

    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    if-ne v0, v5, :cond_5

    .line 480
    :cond_4
    const/4 v11, 0x1

    .line 483
    :cond_5
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v2, :cond_f

    const v3, 0x7f030028

    :goto_2
    new-array v5, v8, [Ljava/lang/String;

    new-array v6, v8, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v2, :cond_6

    if-eqz v11, :cond_7

    :cond_6
    move v8, v12

    :cond_7
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 491
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    #setter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDlnaMode:I
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$002(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;I)I

    .line 493
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 495
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle()V

    .line 496
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 502
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_8

    .line 503
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HeaderBar;

    .line 504
    .local v10, header:Lcom/htc/widget/HeaderBar;
    if-eqz v10, :cond_8

    .line 505
    invoke-virtual {v10, v12}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 508
    .end local v10           #header:Lcom/htc/widget/HeaderBar;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initPlayerPanel()V

    .line 509
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initButtonsPanel()V

    .line 511
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 512
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    if-eqz v0, :cond_9

    .line 519
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.recentplayedchanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 522
    :cond_9
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    if-ne v12, v0, :cond_10

    .line 523
    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSearchHint(I)V

    .line 524
    iput-short v12, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCategory:S

    .line 528
    :goto_3
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    if-nez v0, :cond_a

    .line 529
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->enableSearch()V

    .line 530
    :cond_a
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_b

    .line 531
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 533
    :cond_b
    return-void

    .line 446
    .end local v9           #f:Landroid/content/IntentFilter;
    .end local v11           #hideSelected:Z
    :cond_c
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-nez v0, :cond_1

    .line 447
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    if-eqz v0, :cond_1

    .line 449
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v12}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    goto/16 :goto_0

    .line 467
    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 469
    :cond_e
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    goto/16 :goto_1

    .line 483
    .restart local v11       #hideSelected:Z
    :cond_f
    const v3, 0x7f030009

    goto/16 :goto_2

    .line 527
    .restart local v9       #f:Landroid/content/IntentFilter;
    :cond_10
    const v0, 0x7f0700ac

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSearchHint(I)V

    goto :goto_3
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 4189
    if-nez p1, :cond_0

    .line 4190
    const/4 v1, 0x0

    .line 4235
    :goto_0
    return-object v1

    .line 4192
    :cond_0
    instance-of v1, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v1, :cond_2

    :cond_1
    move-object v1, p1

    .line 4193
    goto :goto_0

    .line 4196
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4197
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 4199
    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4200
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 4201
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v1, "album != \'\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4202
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "album_art"

    aput-object v3, v2, v1

    .line 4206
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4208
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 4209
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4210
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4211
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4212
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 4217
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4218
    const/4 p1, 0x0

    .line 4219
    const/4 v1, 0x0

    goto :goto_0

    .line 4222
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4223
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4224
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4225
    new-instance v12, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4226
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 4227
    .local v9, albumIdx:I
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 4228
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4229
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4230
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4231
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 4234
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_6
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4235
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v1, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private moveItem(Z)V
    .locals 13
    .parameter "up"

    .prologue
    .line 1587
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1588
    .local v3, curcount:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    .line 1589
    .local v4, curpos:I
    if-eqz p1, :cond_0

    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    :cond_0
    if-nez p1, :cond_2

    add-int/lit8 v10, v3, -0x1

    if-lt v4, v10, :cond_2

    .line 1629
    :cond_1
    :goto_0
    return-void

    .line 1593
    :cond_2
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    instance-of v10, v10, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    if-eqz v10, :cond_5

    .line 1594
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    .line 1595
    .local v1, c:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;
    if-eqz p1, :cond_3

    add-int/lit8 v10, v4, -0x1

    :goto_1
    invoke-virtual {v1, v4, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->moveItem(II)V

    .line 1596
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->notifyDataSetChanged()V

    .line 1597
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1598
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z

    .line 1599
    if-eqz p1, :cond_4

    .line 1600
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 1595
    :cond_3
    add-int/lit8 v10, v4, 0x1

    goto :goto_1

    .line 1602
    :cond_4
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 1605
    .end local v1           #c:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;
    :cond_5
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "play_order"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1607
    .local v2, colidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1608
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1609
    .local v5, currentplayidx:I
    const-string v10, "external"

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 1610
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1611
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_id=?"

    .line 1612
    .local v8, where:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    .line 1613
    .local v9, wherearg:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1614
    .local v6, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_6

    .line 1615
    const-string v10, "play_order"

    add-int/lit8 v11, v5, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1616
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1617
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1618
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1625
    :goto_2
    const-string v10, "play_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1626
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1627
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1620
    :cond_6
    const-string v10, "play_order"

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1622
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1623
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private onClickMusicStore()V
    .locals 9

    .prologue
    .line 4403
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4404
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 4455
    :goto_0
    return-void

    .line 4406
    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4408
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "vfmusic://"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4410
    :catch_0
    move-exception v1

    .line 4411
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "[TrackBrowserFragment]"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4413
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4414
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 4416
    .local v3, locale:Ljava/util/Locale;
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v7, 0xb

    if-eq v6, v7, :cond_2

    sget-object v6, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4418
    :cond_2
    const-string v4, "http://m.musicstore.orange.fr"

    .line 4424
    .local v4, strLink:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4426
    :catch_1
    move-exception v1

    .line 4427
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v6, "[TrackBrowserFragment]"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4419
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #strLink:Ljava/lang/String;
    :cond_3
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v7, 0x9

    if-ne v6, v7, :cond_4

    .line 4420
    const-string v4, "http://mobile.orange.ch/MusicStore"

    .restart local v4       #strLink:Ljava/lang/String;
    goto :goto_1

    .line 4422
    .end local v4           #strLink:Ljava/lang/String;
    :cond_4
    const-string v4, "http://m.musicstore.orange.co.uk"

    .restart local v4       #strLink:Ljava/lang/String;
    goto :goto_1

    .line 4429
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #strLink:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4430
    const-string v5, "http://waprd.telstra.com/redirect?target=music-g"

    .line 4432
    .local v5, strURL:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 4434
    :catch_2
    move-exception v1

    .line 4435
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v6, "[TrackBrowserFragment]"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4437
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v5           #strURL:Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/CustomizeSetting;->isAmazonStoreCase(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4438
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4440
    .local v2, intent:Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 4441
    :catch_3
    move-exception v1

    .line 4442
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v6, "[TrackBrowserFragment]"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4443
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->forceReloadAmazonSetting()V

    goto/16 :goto_0

    .line 4445
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4446
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVerizonMODIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4448
    .restart local v2       #intent:Landroid/content/Intent;
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 4449
    :catch_4
    move-exception v1

    .line 4450
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v6, "[TrackBrowserFragment]"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4453
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    const-string v6, "[TrackBrowserFragment]"

    const-string v7, "there is no music store available, but image button is visible."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onCreate_Local(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 362
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 363
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCountTemplate:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 367
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    .line 377
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 411
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 412
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setContentView(I)V

    .line 434
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_1

    .line 422
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setContentView(I)V

    goto :goto_0

    .line 423
    :cond_1
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    if-nez v0, :cond_2

    .line 424
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setContentView(I)V

    goto :goto_0

    .line 426
    :cond_2
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setContentView(I)V

    goto :goto_0
.end method

.method private onDestroy_Local()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 757
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 759
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 761
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 763
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 766
    const/4 v1, 0x1

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v1, v2, :cond_3

    .line 767
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 779
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 780
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 783
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 784
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 789
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 790
    iput-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 796
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    .line 797
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 799
    :cond_2
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onDestroy()V

    .line 800
    return-void

    .line 769
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 771
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 1762
    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1768
    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPosition:I

    .line 1769
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 1770
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mItemClicked:Z

    .line 1771
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    goto :goto_0

    .line 1773
    :cond_2
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-nez v1, :cond_0

    .line 1778
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1779
    .local v7, path:Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v1, "content://drm/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1780
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 1823
    :goto_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidate()V

    goto :goto_0

    .line 1793
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-nez v1, :cond_4

    .line 1794
    new-instance v0, Lcom/htc/music/NpCategory;

    iget-short v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    .local v0, category:Lcom/htc/music/NpCategory;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    new-array v3, v8, [I

    invoke-static {v1, v2, p3, v0, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    .line 1800
    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    new-array v4, v8, [I

    invoke-static {v1, v2, p3, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1
.end method

.method private onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1834
    const/4 v0, 0x0

    .line 1835
    .local v0, result:Z
    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1838
    const/4 v1, 0x1

    invoke-direct {p0, p3, p4, p5, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showTrackOptions(IJZ)Z

    move-result v0

    .line 1841
    :cond_0
    return v0
.end method

.method private onPause_Local()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 860
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 865
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 866
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 868
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 870
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 874
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onPause()V

    .line 875
    return-void
.end method

.method private onResume_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 824
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onResume()V

    .line 826
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 828
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 842
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showSpinner(Z)V

    .line 845
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setPauseButtonImage()V

    .line 846
    return-void
.end method

.method private onResume_Plugin()V
    .locals 0

    .prologue
    .line 849
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onResume()V

    .line 851
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setPauseButtonImage()V

    .line 852
    return-void
.end method

.method private onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 4163
    packed-switch p2, :pswitch_data_0

    .line 4186
    :cond_0
    :goto_0
    return-void

    .line 4165
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 4166
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 4167
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isFragmentResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4168
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 4172
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 4173
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequery(Z)V

    .line 4174
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isFragmentResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4175
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 4179
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 4180
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 4181
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4182
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 4163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 546
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    if-nez v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 584
    :goto_0
    return-void

    .line 552
    :cond_0
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 553
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-nez v0, :cond_3

    .line 555
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v3, :cond_1

    const v3, 0x7f030028

    :goto_1
    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v9, :cond_2

    :goto_2
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 563
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 565
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle()V

    .line 566
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 555
    :cond_1
    const v3, 0x7f030009

    goto :goto_1

    :cond_2
    move v8, v2

    goto :goto_2

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    .line 575
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 576
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 579
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle()V

    .line 580
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method private removeItem()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 1547
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1548
    .local v1, curcount:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v2

    .line 1549
    .local v2, curpos:I
    if-eqz v1, :cond_0

    if-gez v2, :cond_1

    .line 1584
    .end local v2           #curpos:I
    :cond_0
    :goto_0
    return-void

    .line 1553
    .restart local v2       #curpos:I
    :cond_1
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v8, v7, :cond_3

    .line 1559
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v7

    if-eq v2, v7, :cond_2

    .line 1560
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 1565
    .local v6, v:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1566
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1567
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    check-cast v7, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    invoke-virtual {v7, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->removeItem(I)Z

    .line 1568
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1569
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    .line 1572
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1573
    .local v0, colidx:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1574
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1575
    .local v3, id:J
    const-string v7, "external"

    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 1576
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1577
    add-int/lit8 v1, v1, -0x1

    .line 1578
    if-nez v1, :cond_4

    .line 1579
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1581
    :cond_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-ge v2, v1, :cond_5

    .end local v2           #curpos:I
    :goto_2
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .restart local v2       #curpos:I
    :cond_5
    move v2, v1

    goto :goto_2

    .line 1562
    .end local v0           #colidx:I
    .end local v3           #id:J
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private removePlaylistItem(I)V
    .locals 10
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1449
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1451
    .local v5, v:Landroid/view/View;
    :try_start_0
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v6

    if-eq p1, v6, :cond_0

    .line 1452
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :cond_0
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1459
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1460
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    instance-of v6, v6, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    if-eqz v6, :cond_1

    .line 1461
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    invoke-virtual {v6, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->removeItem(I)Z

    .line 1469
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1470
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1471
    return-void

    .line 1454
    :catch_0
    move-exception v1

    .line 1456
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z

    goto :goto_0

    .line 1463
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1464
    .local v0, colidx:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1465
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1466
    .local v2, id:J
    const-string v6, "external"

    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1467
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removePlaylistItem([I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1474
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    if-eqz v0, :cond_0

    .line 1480
    :cond_0
    return-void
.end method

.method private setNPtitle()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1269
    const v3, 0x7f0800ab

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    iput-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    .line 1270
    const v3, 0x7f0800ac

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 1271
    .local v1, playerButton:Lcom/htc/widget/HeaderBarImage;
    const v3, 0x7f0800aa

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 1272
    .local v0, libraryButton:Lcom/htc/widget/HeaderBarImage;
    const v3, 0x7f0800ae

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    .line 1275
    .local v2, storeButton:Lcom/htc/widget/HeaderBarImage;
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz v3, :cond_0

    .line 1276
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 1277
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 1278
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 1281
    :cond_0
    if-eqz v1, :cond_1

    .line 1282
    invoke-virtual {v1, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1283
    const v3, 0x7f07011c

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1284
    const v3, 0x7f02002c

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1285
    new-instance v3, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1294
    :cond_1
    if-eqz v0, :cond_2

    .line 1295
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1297
    const v3, 0x2080078

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1298
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1299
    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 1302
    :cond_2
    if-eqz v2, :cond_3

    .line 1303
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1304
    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1305
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreStringResId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1306
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreImageResId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1307
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1314
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateQueueTitle()V

    .line 1315
    return-void

    .line 1310
    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 2768
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 2784
    :goto_0
    return-void

    .line 2771
    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2775
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x20800b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2782
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2779
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x20800bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setTitle()V
    .locals 22

    .prologue
    .line 1119
    const/16 v16, 0x0

    .line 1120
    .local v16, fancyName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 1122
    .local v19, numresults:I
    :goto_0
    if-lez v19, :cond_3

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1125
    .local v18, idx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "artist_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1140
    .local v5, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "album"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1144
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_1

    .line 1145
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v19

    if-eq v2, v0, :cond_0

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1149
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    .line 1151
    :cond_1
    if-eqz v16, :cond_2

    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1152
    :cond_2
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1261
    .end local v5           #where:Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v18           #idx:I
    .end local v19           #numresults:I
    :cond_3
    :goto_1
    if-eqz v16, :cond_16

    .line 1262
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1266
    :goto_2
    return-void

    .line 1121
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1155
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1157
    .local v12, artistId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_6

    .line 1158
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 1160
    :cond_6
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "artist"

    aput-object v3, v8, v2

    .line 1163
    .local v8, cols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1166
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 1167
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1168
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1169
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1170
    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1171
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1173
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1177
    .end local v8           #cols:[Ljava/lang/String;
    .end local v12           #artistId:J
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v2, v3, :cond_b

    .line 1178
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 1179
    const v2, 0x7f070020

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_1

    .line 1180
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v2, :cond_a

    .line 1181
    const v2, 0x7f07000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_1

    .line 1183
    :cond_a
    const v2, 0x7f07001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1187
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setNPtitle()V

    goto/16 :goto_1

    .line 1189
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 1190
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_10

    .line 1191
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1193
    .restart local v8       #cols:[Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 1195
    .local v20, playlistId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 1196
    .local v17, id:Ljava/lang/Long;
    if-eqz v17, :cond_c

    .line 1197
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    .line 1204
    .end local v17           #id:Ljava/lang/Long;
    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1207
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_e

    .line 1208
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1209
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1210
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1213
    :cond_d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1214
    const/4 v14, 0x0

    .line 1217
    :cond_e
    if-eqz v16, :cond_f

    .line 1218
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistName:Ljava/lang/String;

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1220
    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1200
    .end local v14           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 1201
    .local v15, ex:Ljava/lang/Exception;
    const-string v2, "[TrackBrowserFragment]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(null != mSelectedPlaylistId), ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1224
    .end local v15           #ex:Ljava/lang/Exception;
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_f
    const-string v2, "[TrackBrowserFragment]"

    const-string v3, "setTitle(), fancyName is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1227
    .end local v8           #cols:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v20           #playlistId:J
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setMainTitle(Ljava/lang/String;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSecondaryTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1231
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 1232
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1235
    .restart local v8       #cols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1238
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 1239
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_12

    .line 1240
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1241
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1244
    :cond_12
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1247
    .end local v8           #cols:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    if-ne v2, v3, :cond_14

    .line 1248
    const v2, 0x7f070033

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 1249
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_15

    .line 1251
    const v2, 0x7f070070

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1252
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1256
    :cond_15
    const v2, 0x7f070027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1257
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1264
    :cond_16
    const v2, 0x7f070027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(I)V

    goto/16 :goto_2
.end method

.method private shareMusicFile()V
    .locals 7

    .prologue
    .line 4359
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4361
    .local v3, path:Ljava/lang/String;
    iget-wide v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedId:J

    long-to-int v0, v4

    .line 4362
    .local v0, audioId:I
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 4364
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 4377
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4378
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4380
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 4367
    :pswitch_0
    const-string v4, "[TrackBrowserFragment]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normal file case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    goto :goto_0

    .line 4372
    :pswitch_1
    const-string v4, "[TrackBrowserFragment]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SD DRM case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4373
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    goto :goto_0

    .line 4364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 4386
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShareText:Ljava/lang/String;

    .line 4387
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4388
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShareText:Ljava/lang/String;

    .line 4391
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    .line 4392
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    if-eqz v0, :cond_0

    .line 2520
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->sendEmptyMessage(I)Z

    .line 2522
    :cond_0
    return-void
.end method

.method private showTrackOptions(IJZ)Z
    .locals 8
    .parameter "position"
    .parameter "id"
    .parameter "bLongClick"

    .prologue
    .line 1845
    iput p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPosition:I

    .line 1847
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1849
    const/4 v2, 0x0

    .line 1851
    .local v2, id_idx:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    if-nez v5, :cond_0

    .line 1852
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "audio_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1858
    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "album"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCurrentAlbumName:Ljava/lang/String;

    .line 1864
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "artist"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 1866
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "title"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCurrentTrackName:Ljava/lang/String;

    .line 1874
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v5, :cond_1

    .line 1875
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f07006b

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1882
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v5, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 2004
    .local v3, ids:[I
    :goto_2
    const/4 v5, 0x1

    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :goto_3
    return v5

    .line 1855
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto/16 :goto_0

    .line 1859
    :catch_0
    move-exception v1

    .line 1860
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    iput-wide p2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedId:J

    goto :goto_1

    .line 1889
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    if-eqz v5, :cond_2

    .line 1891
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1897
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_2

    .line 1904
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 1905
    .local v0, dlnaMode:I
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1906
    if-nez v0, :cond_4

    .line 1908
    if-eqz p4, :cond_3

    .line 1909
    const/4 v5, 0x0

    goto :goto_3

    .line 1911
    :cond_3
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07000b

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1922
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x6

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 1935
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_4
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07000b

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1945
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x6

    new-array v3, v5, [I

    fill-array-data v3, :array_3

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 1958
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_5
    if-nez v0, :cond_7

    .line 1960
    if-eqz p4, :cond_6

    .line 1961
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1963
    :cond_6
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07005a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1972
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x6

    new-array v3, v5, [I

    fill-array-data v3, :array_4

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 1983
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_7
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1992
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 1882
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 1897
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 1922
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 1945
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 1972
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1992
    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 811
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateQueueTitle()V
    .locals 0

    .prologue
    .line 1319
    return-void
.end method


# virtual methods
.method canRewind()Z
    .locals 1

    .prologue
    .line 4239
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 4240
    const/4 v0, 0x0

    .line 4243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1526
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1529
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1543
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1531
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->moveItem(Z)V

    goto :goto_0

    .line 1534
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->moveItem(Z)V

    goto :goto_0

    .line 1537
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->removeItem()V

    goto :goto_0

    .line 1529
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method getCheckedItemCount()I
    .locals 4

    .prologue
    .line 1632
    const/4 v0, 0x0

    .line 1634
    .local v0, count:I
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v3, :cond_1

    .line 1635
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1645
    :cond_0
    return v0

    .line 1636
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_0

    .line 1637
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1638
    .local v2, items:Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_0

    .line 1639
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1640
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1641
    add-int/lit8 v0, v0, 0x1

    .line 1639
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1749
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1750
    const-string v0, "MM-dd-yyyy"

    .line 1751
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HH:mm:ss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1752
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getPickerMode()J
    .locals 2

    .prologue
    .line 4123
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 14
    .parameter "newCursor"

    .prologue
    .line 964
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-nez v10, :cond_1

    .line 965
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 966
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eq v10, p1, :cond_0

    .line 975
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v10, :cond_2

    .line 976
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 978
    :cond_2
    instance-of v10, p1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    if-nez v10, :cond_3

    instance-of v10, p1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$RecentPlayedPlaylistCursor;

    if-eqz v10, :cond_4

    .line 980
    :cond_3
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v10, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 986
    :goto_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-nez v10, :cond_5

    .line 988
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDatabaseError()V

    .line 989
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 982
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    .line 983
    .local v2, c:Landroid/database/Cursor;
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v10, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 996
    .end local v2           #c:Landroid/database/Cursor;
    :cond_5
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_7

    .line 997
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    if-nez v10, :cond_6

    .line 998
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivityTitle()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 1001
    :cond_6
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    .line 1002
    const v10, 0x7f070037

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showEmptyView(I)V

    .line 1004
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-nez v10, :cond_0

    goto :goto_0

    .line 1012
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->hideEmptyErrorView()V

    .line 1014
    const v10, 0x102000a

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_10

    .line 1015
    const v10, 0x7f03003c

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setContentView(I)V

    .line 1016
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 1017
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v10

    const-wide/16 v12, 0x2

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v10

    const-wide/16 v12, 0x3

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v10

    const-wide/16 v12, 0x4

    cmp-long v10, v10, v12

    if-nez v10, :cond_9

    .line 1019
    :cond_8
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 1022
    :cond_9
    iget-boolean v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v10, :cond_f

    .line 1023
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v10, v10, Lcom/htc/widget/HtcReorderListView;

    if-eqz v10, :cond_a

    .line 1024
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v10, Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 1025
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v10, Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 1026
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v10, Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 1028
    :cond_a
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 1033
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initPlayerPanel()V

    .line 1034
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initButtonsPanel()V

    .line 1039
    :goto_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivityTitle()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 1043
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    if-eqz v10, :cond_11

    .line 1044
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    .line 1056
    :cond_b
    :goto_4
    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v10, v11, :cond_13

    .line 1058
    const/4 v3, 0x0

    .line 1059
    .local v3, cur:I
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    .line 1060
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v9

    .line 1061
    .local v9, shufflePos:I
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v9}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v3

    .line 1065
    .end local v9           #shufflePos:I
    :goto_5
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSelection(I)V

    .line 1066
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.htc.music.metachanged"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    .end local v3           #cur:I
    :goto_6
    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eq v10, v11, :cond_c

    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 1086
    :cond_c
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v10, :cond_0

    .line 1087
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    .line 1088
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1091
    .local v8, keyidx:I
    const/4 v7, -0x1

    .line 1092
    .local v7, keyAudioIdidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "audio_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1094
    const/4 v10, -0x1

    if-le v7, v10, :cond_d

    .line 1095
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    .line 1098
    :cond_d
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1099
    const/4 v4, 0x0

    .line 1100
    .local v4, i:I
    const/4 v1, -0x1

    .line 1101
    .local v1, audioId:I
    :goto_7
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1102
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1103
    .local v5, id:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    aput v5, v10, v4

    .line 1104
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    if-eqz v10, :cond_e

    .line 1105
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1106
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    aput v1, v10, v4

    .line 1109
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 1110
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    .line 1030
    .end local v1           #audioId:I
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v7           #keyAudioIdidx:I
    .end local v8           #keyidx:I
    :cond_f
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 1031
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto/16 :goto_2

    .line 1036
    :cond_10
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    goto/16 :goto_3

    .line 1046
    :cond_11
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    if-nez v10, :cond_b

    .line 1047
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setMainTitle(Ljava/lang/String;)V

    .line 1048
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSecondaryTitle(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1063
    .restart local v3       #cur:I
    :cond_12
    :try_start_1
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto/16 :goto_5

    .line 1070
    .end local v3           #cur:I
    :cond_13
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "artistid"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1071
    .local v6, key:Ljava/lang/String;
    if-eqz v6, :cond_14

    .line 1072
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "artist_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1073
    .restart local v8       #keyidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1074
    :goto_8
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_14

    .line 1075
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, artist:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1077
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSelection(I)V

    .line 1083
    .end local v0           #artist:Ljava/lang/String;
    .end local v8           #keyidx:I
    :cond_14
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.htc.music.metachanged"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1080
    .restart local v0       #artist:Ljava/lang/String;
    .restart local v8       #keyidx:I
    :cond_15
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_8

    .line 1067
    .end local v0           #artist:Ljava/lang/String;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #keyidx:I
    .restart local v3       #cur:I
    :catch_0
    move-exception v10

    goto/16 :goto_6
.end method

.method initButtonsPanel()V
    .locals 6

    .prologue
    .line 4071
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 4076
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 4077
    .local v3, parent:Landroid/app/Activity;
    if-eqz v3, :cond_4

    .line 4078
    instance-of v4, v3, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    if-eqz v4, :cond_3

    move-object v4, v3

    .line 4079
    check-cast v4, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->enableFooterButtonPanel(Z)Lcom/htc/widget/HtcFooter;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    .line 4093
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const v5, 0x7f08001e

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 4094
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040145

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 4095
    const v4, 0x20800a7

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 4096
    new-instance v4, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$15;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$15;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4103
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const v5, 0x7f08001d

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 4104
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040152

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 4105
    const v4, 0x20800a3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 4106
    new-instance v4, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$16;

    invoke-direct {v4, p0, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$16;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4119
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v3           #parent:Landroid/app/Activity;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    .line 4120
    return-void

    .line 4081
    .restart local v3       #parent:Landroid/app/Activity;
    :cond_3
    const-string v4, "[TrackBrowserFragment]"

    const-string v5, "try to init panel with parent exist, but parent is not AddPlaylistTabActivity!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4084
    :cond_4
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-nez v4, :cond_1

    .line 4086
    const v4, 0x7f08004e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 4087
    .local v2, btnViewStub:Landroid/view/ViewStub;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 4088
    const v4, 0x7f08004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcFooter;

    iput-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    goto :goto_0

    .line 4113
    .end local v2           #btnViewStub:Landroid/view/ViewStub;
    .end local v3           #parent:Landroid/app/Activity;
    :cond_5
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-eqz v4, :cond_2

    .line 4115
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_1
.end method

.method initPlayerPanel()V
    .locals 0

    .prologue
    .line 3969
    return-void
.end method

.method isEditMode()Z
    .locals 1

    .prologue
    .line 4127
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    return v0
.end method

.method isPickerMode()Z
    .locals 4

    .prologue
    .line 4131
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 32
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2282
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 2283
    .local v5, activity:Landroid/app/Activity;
    if-nez v5, :cond_1

    .line 2511
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2285
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2443
    :sswitch_1
    invoke-static/range {p2 .. p2}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyStatus(I)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPosition:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v5, v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 2287
    :sswitch_2
    if-nez p2, :cond_2

    .line 2288
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2290
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 2297
    :sswitch_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 2298
    .local v24, uri:Landroid/net/Uri;
    if-eqz v24, :cond_0

    .line 2299
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v15, v0, [I

    .line 2300
    .local v15, list:[I
    const/16 v26, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v27

    aput v27, v15, v26

    .line 2301
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 2302
    .local v17, playlist:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v5, v15, v0, v1}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2307
    .end local v15           #list:[I
    .end local v17           #playlist:I
    .end local v24           #uri:Landroid/net/Uri;
    :sswitch_4
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v15

    .line 2309
    .restart local v15       #list:[I
    const-string v26, "playlist"

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2310
    .restart local v17       #playlist:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v5, v15, v0, v1}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 2318
    .end local v15           #list:[I
    .end local v17           #playlist:I
    :sswitch_5
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 2319
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 2320
    .local v16, name:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 2321
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 2322
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 2328
    .end local v16           #name:Ljava/lang/String;
    :sswitch_6
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 2329
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 2337
    .restart local v16       #name:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 2341
    .end local v16           #name:Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 2342
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    .line 2349
    const-string v26, "[TrackBrowserFragment]"

    const-string v27, "Bad! I don\'t want to see this!"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    const-string v27, "_id"

    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 2354
    .local v14, keyidx:I
    const/4 v13, -0x1

    .line 2356
    .local v13, keyAudioIdidx:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    const-string v27, "audio_id"

    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 2360
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2361
    const/4 v6, -0x1

    .line 2362
    .local v6, audioId:I
    const/4 v10, 0x0

    .line 2363
    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v26

    if-nez v26, :cond_0

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2365
    .local v12, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    move-object/from16 v26, v0

    aput v12, v26, v10

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    if-lez v13, :cond_4

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    move-object/from16 v26, v0

    aput v6, v26, v10

    .line 2370
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 2371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 2358
    .end local v6           #audioId:I
    .end local v10           #i:I
    .end local v12           #id:I
    :catch_0
    move-exception v9

    .local v9, ex:Ljava/lang/Exception;
    const/4 v13, -0x1

    goto :goto_1

    .line 2377
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v13           #keyAudioIdidx:I
    .end local v14           #keyidx:I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 2378
    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 2380
    .local v18, resolver:Landroid/content/ContentResolver;
    const-string v26, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-static/range {v26 .. v28}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "playlist_id="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    move/from16 v3, v29

    invoke-static {v5, v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    goto/16 :goto_0

    .line 2400
    .end local v18           #resolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v26

    goto/16 :goto_0

    .line 2386
    :cond_6
    const-string v26, "[TrackBrowserFragment]"

    const-string v27, "using old logic!! this could need a lot of time"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    new-instance v25, Landroid/content/ContentValues;

    const/16 v26, 0x1

    invoke-direct/range {v25 .. v26}, Landroid/content/ContentValues;-><init>(I)V

    .line 2388
    .local v25, values:Landroid/content/ContentValues;
    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 2389
    .restart local v18       #resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_0

    .line 2390
    const-string v26, "play_order"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2392
    const-string v26, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-static/range {v26 .. v28}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v26

    const-string v27, "_id=?"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    move-object/from16 v30, v0

    aget v30, v30, v10

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2389
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2407
    .end local v10           #i:I
    .end local v18           #resolver:Landroid/content/ContentResolver;
    .end local v25           #values:Landroid/content/ContentValues;
    :sswitch_8
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 2408
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v15, v0, [I

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedId:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    aput v27, v15, v26

    .line 2411
    .restart local v15       #list:[I
    const-string v26, "playlist"

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2412
    .restart local v17       #playlist:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v5, v15, v0, v1}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 2418
    .end local v15           #list:[I
    .end local v17           #playlist:I
    :sswitch_9
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 2419
    const-string v26, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 2420
    .local v20, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v20 .. v20}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v15

    .line 2421
    .restart local v15       #list:[I
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2, v15}, Lcom/htc/music/util/MusicUtils;->deletePlaylistTrack(Landroid/content/Context;J[I)V

    .line 2422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 2429
    .end local v15           #list:[I
    .end local v20           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_a
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lcom/htc/music/util/MusicUtils;->getTabActivityResult(Landroid/content/Context;I)I

    move-result p2

    .line 2430
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 2431
    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v20

    .line 2432
    .restart local v20       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v20 .. v20}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v15

    .line 2433
    .restart local v15       #list:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-static {v5, v15, v0, v1}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 2434
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->init(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 2450
    .end local v15           #list:[I
    .end local v20           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 2451
    const-string v26, "[TrackBrowserFragment]"

    const-string v27, "receive set contact ringtone activity result"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    move-object/from16 v19, p3

    .line 2453
    .local v19, resultIntent:Landroid/content/Intent;
    new-instance v21, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$12;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/content/Intent;)V

    .line 2464
    .local v21, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v23, Ljava/lang/Thread;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2465
    .local v23, thread:Ljava/lang/Thread;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2469
    .end local v19           #resultIntent:Landroid/content/Intent;
    .end local v21           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v23           #thread:Ljava/lang/Thread;
    :sswitch_c
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 2470
    const-string v26, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 2471
    .restart local v20       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_0

    .line 2474
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2475
    .local v11, iCount:I
    new-array v8, v11, [Ljava/lang/String;

    .line 2476
    .local v8, dataPathArray:[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-ge v10, v11, :cond_8

    .line 2477
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    invoke-static {v5, v0}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v7

    .line 2478
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 2479
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2480
    const-string v26, "_data"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v8, v10

    .line 2481
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2476
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2485
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_8
    new-instance v22, Ljava/lang/String;

    const-string v26, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2487
    .local v22, szAction:Ljava/lang/String;
    :try_start_2
    new-instance v26, Landroid/content/Intent;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "upload"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2488
    :catch_2
    move-exception v9

    .line 2490
    .local v9, ex:Ljava/lang/SecurityException;
    const-string v26, "[TrackBrowserFragment]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "We do not have permission to start the service :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2285
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_8
        0x4 -> :sswitch_3
        0xb -> :sswitch_2
        0x13 -> :sswitch_b
        0x1c -> :sswitch_4
        0x21 -> :sswitch_a
        0x22 -> :sswitch_9
        0x23 -> :sswitch_7
        0x24 -> :sswitch_6
        0x29 -> :sswitch_5
        0x2b -> :sswitch_c
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method onCancelClick()V
    .locals 6

    .prologue
    .line 4061
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 4062
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 4063
    .local v1, items:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4064
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 4063
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4066
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    .line 4068
    .end local v0           #i:I
    .end local v1           #items:Landroid/util/SparseBooleanArray;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 358
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "albumid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 318
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "artistid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    .line 319
    const-string v2, "isnowplayinglist"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    .line 320
    const-string v2, "playlist"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    .line 321
    const-string v2, "isrecentplayedplaylist"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    .line 322
    const-string v2, "genreid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    .line 323
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    .line 326
    :cond_0
    const-string v2, "isshowplayerpanel"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShowPlayerPanel:Z

    .line 327
    const-string v2, "composer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    .line 328
    const-string v2, "isdrmlist"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    .line 329
    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDescription:Ljava/lang/String;

    .line 330
    const-string v2, "pickermode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    .line 331
    const-string v2, "playlisturi"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistUri:Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    .line 334
    iget v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mcurDMR:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 337
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 338
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaServiceConn:Z

    .line 341
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onCreate_Local(Landroid/os/Bundle;)V

    .line 343
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 344
    .local v1, rootContext:Landroid/app/Activity;
    new-instance v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    invoke-direct {v2, p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    .line 346
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/16 v8, 0x1d

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2030
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/fragment/MusicListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2031
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v0, :cond_2

    .line 2033
    :cond_0
    const/16 v0, 0x25

    const v1, 0x204014f

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2035
    const/16 v0, 0x26

    const v1, 0x2040150

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2063
    :cond_1
    :goto_0
    return-void

    .line 2036
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 2039
    const v0, 0x7f070009

    invoke-interface {p1, v5, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2040
    const v0, 0x7f07000a

    invoke-interface {p1, v5, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2041
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2042
    const/16 v0, 0x2b

    const v1, 0x7f07000b

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2044
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2046
    const/16 v0, 0x2c

    const v1, 0x2040218

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 2048
    :cond_4
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eq v6, v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_5
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-nez v0, :cond_1

    .line 2051
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v6, v0, :cond_6

    .line 2052
    const/16 v0, 0x23

    const v1, 0x7f07000c

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2053
    const/16 v0, 0x1c

    const v1, 0x7f070059

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2054
    const/16 v0, 0x2c

    const v1, 0x2040218

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 2055
    :cond_6
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    if-nez v0, :cond_1

    .line 2056
    const v0, 0x7f070009

    invoke-interface {p1, v5, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2057
    const v0, 0x7f07000a

    invoke-interface {p1, v5, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2060
    const/16 v0, 0x29

    const v1, 0x7f0700a0

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 350
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/fragment/MusicListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initialUI()V

    .line 352
    return-object v0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 728
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDestroyed:Z

    .line 730
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onDestroy_Local()V

    .line 732
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNotifyCallback:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaServiceConn:Z

    if-ne v1, v4, :cond_1

    .line 741
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 742
    iput-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 743
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaServiceConn:Z

    .line 746
    :cond_1
    iput-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    .line 748
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    if-eqz v1, :cond_2

    .line 749
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    invoke-virtual {v1, v5}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 752
    :cond_2
    const-string v1, "[TrackBrowserFragment]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1757
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 1758
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1830
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v13, 0x1

    .line 2135
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2136
    .local v7, activity:Landroid/app/Activity;
    if-nez v7, :cond_0

    .line 2276
    :goto_0
    return v1

    .line 2140
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2276
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 2142
    :sswitch_0
    const/4 v0, 0x0

    .line 2143
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2144
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #category:Lcom/htc/music/NpCategory;
    iget-short v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    move v1, v13

    .line 2148
    goto :goto_0

    .line 2153
    .end local v0           #category:Lcom/htc/music/NpCategory;
    :sswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 2154
    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    if-ne v1, v3, :cond_2

    .line 2155
    const-string v1, "DLNA"

    const/4 v2, 0x7

    invoke-virtual {v7, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2157
    .local v11, pref:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shuffle"

    invoke-interface {v1, v2, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2160
    .end local v11           #pref:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v0, 0x0

    .line 2161
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 2162
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #category:Lcom/htc/music/NpCategory;
    iget-short v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7, v1, v0}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_4
    move v1, v13

    .line 2166
    goto :goto_0

    .line 2169
    :sswitch_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 2171
    .local v9, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v9, v7, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2172
    const-string v1, "pickermode"

    invoke-virtual {v9, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2173
    const/16 v1, 0x1c

    invoke-virtual {p0, v9, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v13

    .line 2174
    goto :goto_0

    .line 2178
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearQueue()V

    move v1, v13

    .line 2179
    goto :goto_0

    .line 2182
    :sswitch_4
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 2183
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v1, "playlisturi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/audio/playlists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2185
    const-class v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v9, v7, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2187
    const/16 v1, 0x21

    invoke-virtual {p0, v9, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v13

    .line 2188
    goto/16 :goto_0

    .line 2191
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 2192
    .restart local v9       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v9, v7, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2193
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2194
    const-string v1, "pickermode"

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2195
    const/16 v1, 0x22

    invoke-virtual {p0, v9, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v13

    .line 2196
    goto/16 :goto_0

    .line 2199
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2200
    .restart local v9       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2201
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2202
    const-string v1, "isnowplayinglist"

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2204
    const/16 v1, 0x23

    invoke-virtual {p0, v9, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v13

    .line 2206
    goto/16 :goto_0

    .line 2209
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_7
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 2210
    .restart local v9       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v9, v7, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2211
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2212
    const-string v1, "playlistname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2213
    :cond_5
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2214
    const/16 v1, 0x29

    invoke-virtual {p0, v9, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v13

    .line 2215
    goto/16 :goto_0

    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_8
    move v1, v13

    .line 2222
    goto/16 :goto_0

    .line 2225
    :sswitch_9
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v1, :cond_7

    .line 2226
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 2227
    .local v12, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v12, :cond_6

    .line 2228
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2231
    :cond_6
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    invoke-virtual {v1, v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->sendEmptyMessage(I)Z

    move v1, v13

    .line 2232
    goto/16 :goto_0

    .line 2235
    .end local v8           #i:I
    .end local v12           #size:I
    :cond_7
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_8

    .line 2236
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, v8, v13}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 2235
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2239
    :cond_8
    iput-boolean v13, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mItemClicked:Z

    .line 2240
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    move v1, v13

    .line 2242
    goto/16 :goto_0

    .line 2245
    .end local v8           #i:I
    :sswitch_a
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v2, :cond_9

    .line 2246
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2247
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    invoke-virtual {v1, v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->sendEmptyMessage(I)Z

    move v1, v13

    .line 2248
    goto/16 :goto_0

    .line 2251
    :cond_9
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    .line 2252
    .local v10, items:Landroid/util/SparseBooleanArray;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v8, v2, :cond_a

    .line 2253
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 2252
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2255
    :cond_a
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    move v1, v13

    .line 2256
    goto/16 :goto_0

    .line 2259
    .end local v8           #i:I
    .end local v10           #items:Landroid/util/SparseBooleanArray;
    :sswitch_b
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 2260
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v1, "albumid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2261
    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2262
    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2263
    const-string v1, "pickermode"

    const/4 v2, 0x4

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2264
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v9, v7, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2265
    const/16 v1, 0x2b

    invoke-virtual {p0, v9, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v13

    .line 2266
    goto/16 :goto_0

    .line 2270
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_c
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2271
    .restart local v9       #intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v9, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v13

    .line 2272
    goto/16 :goto_0

    .line 2140
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_0
        0x1e -> :sswitch_3
        0x21 -> :sswitch_4
        0x22 -> :sswitch_5
        0x23 -> :sswitch_6
        0x24 -> :sswitch_8
        0x25 -> :sswitch_9
        0x26 -> :sswitch_a
        0x29 -> :sswitch_7
        0x2b -> :sswitch_b
        0x2c -> :sswitch_c
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onPause_Local()V

    .line 857
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11
    .parameter "menu"

    .prologue
    .line 2068
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2069
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-nez v7, :cond_2

    .line 2070
    const/16 v7, 0x23

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2071
    .local v3, item:Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 2072
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2074
    :cond_0
    const/16 v7, 0x1c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2075
    if-eqz v3, :cond_1

    .line 2076
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2131
    :cond_1
    :goto_0
    return-void

    .line 2083
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_2
    const/4 v6, 0x0

    .line 2084
    .local v6, num_tracks:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_3

    .line 2085
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2088
    :cond_3
    const/4 v7, 0x1

    if-eq v6, v7, :cond_d

    const/4 v4, 0x1

    .line 2089
    .local v4, not_one_song:Z
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_e

    if-lez v6, :cond_e

    const/4 v2, 0x1

    .line 2092
    .local v2, enabled:Z
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v7, :cond_6

    .line 2094
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getCheckedItemCount()I

    move-result v0

    .line 2095
    .local v0, checkedCount:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-nez v7, :cond_f

    const/4 v1, 0x0

    .line 2096
    .local v1, count:I
    :goto_3
    const/16 v7, 0x25

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2097
    .restart local v3       #item:Landroid/view/MenuItem;
    if-eqz v3, :cond_5

    .line 2098
    if-eqz v2, :cond_10

    if-eq v1, v0, :cond_10

    const/4 v7, 0x1

    :goto_4
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2099
    :cond_5
    const/16 v7, 0x26

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2100
    if-eqz v3, :cond_6

    .line 2101
    if-eqz v2, :cond_11

    if-lez v0, :cond_11

    const/4 v7, 0x1

    :goto_5
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2104
    .end local v0           #checkedCount:I
    .end local v1           #count:I
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_6
    const/16 v7, 0x9

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2105
    .restart local v3       #item:Landroid/view/MenuItem;
    if-eqz v3, :cond_7

    .line 2106
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2107
    :cond_7
    const/16 v7, 0x1d

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2108
    if-eqz v3, :cond_8

    .line 2109
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2110
    :cond_8
    const/16 v7, 0x1c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2111
    if-eqz v3, :cond_9

    .line 2112
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2113
    :cond_9
    const/16 v7, 0x23

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2114
    if-eqz v3, :cond_a

    .line 2115
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v7, v8, :cond_12

    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    instance-of v7, v7, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    if-nez v7, :cond_12

    const/4 v7, 0x1

    :goto_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2116
    .local v5, nowplayingSearch:Ljava/lang/Boolean;
    if-eqz v2, :cond_13

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_13

    if-eqz v4, :cond_13

    const/4 v7, 0x1

    :goto_7
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2118
    .end local v5           #nowplayingSearch:Ljava/lang/Boolean;
    :cond_a
    const/16 v7, 0x22

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2119
    if-eqz v3, :cond_b

    .line 2120
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2121
    :cond_b
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2122
    const/16 v7, 0x2b

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2123
    if-eqz v3, :cond_c

    .line 2124
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2126
    :cond_c
    const/16 v7, 0x2c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2127
    if-eqz v3, :cond_1

    .line 2128
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2088
    .end local v2           #enabled:Z
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v4           #not_one_song:Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2089
    .restart local v4       #not_one_song:Z
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2095
    .restart local v0       #checkedCount:I
    .restart local v2       #enabled:Z
    :cond_f
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto/16 :goto_3

    .line 2098
    .restart local v1       #count:I
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2101
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 2115
    .end local v0           #checkedCount:I
    .end local v1           #count:I
    :cond_12
    const/4 v7, 0x0

    goto :goto_6

    .line 2116
    .restart local v5       #nowplayingSearch:Ljava/lang/Boolean;
    :cond_13
    const/4 v7, 0x0

    goto :goto_7
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onResume_Local()V

    .line 820
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle()V

    .line 821
    return-void
.end method

.method public onSaveClick()V
    .locals 19

    .prologue
    .line 3972
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3973
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 4057
    :goto_0
    return-void

    .line 3975
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    if-eqz v15, :cond_8

    .line 3977
    const/4 v9, 0x0

    .line 3978
    .local v9, nowPlayingArray:[I
    const/4 v3, 0x0

    .line 3980
    .local v3, deleteArray:[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    instance-of v15, v15, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    if-eqz v15, :cond_4

    .line 3981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    check-cast v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    .line 3982
    .local v2, c:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v15}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 3985
    :try_start_0
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->getNowPlayingQueue()[I

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/IMediaPlaybackService;->syncNowPlayingQueue([I)V

    .line 3987
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 3988
    .local v14, totalCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 3989
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v16, 0x0

    add-int/lit8 v17, v14, -0x1

    invoke-interface/range {v15 .. v17}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    .line 4002
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-eqz v15, :cond_2

    .line 4006
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 4010
    :cond_2
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v9

    .line 4012
    if-eqz v9, :cond_3

    array-length v15, v9

    if-nez v15, :cond_4

    .line 4013
    :cond_3
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 4014
    .local v7, intent:Landroid/content/Intent;
    const-class v15, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v7, v1, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4015
    const/high16 v15, 0x2400

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4016
    const-string v15, "KeepHistory"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4017
    const-string v15, "RemoveStoreHistory"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4018
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4029
    .end local v2           #c:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v14           #totalCount:I
    :cond_4
    :goto_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 4030
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v15, "NOW_PLAYING_LIST"

    invoke-virtual {v7, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4031
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setResult(ILandroid/content/Intent;)V

    .line 4056
    .end local v3           #deleteArray:[I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #nowPlayingArray:[I
    :cond_5
    :goto_3
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3990
    .restart local v2       #c:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;
    .restart local v3       #deleteArray:[I
    .restart local v9       #nowPlayingArray:[I
    .restart local v14       #totalCount:I
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 3991
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 3992
    .local v12, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v13

    .line 3994
    .local v13, temp:[Ljava/lang/Object;
    array-length v15, v13

    new-array v3, v15, [I

    .line 3995
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    array-length v15, v13

    if-ge v4, v15, :cond_7

    .line 3996
    aget-object v15, v13, v4

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v3, v4

    .line 3997
    const-string v15, "[TrackBrowserFragment]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "delete position = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget v17, v3, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3995
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4000
    :cond_7
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15, v3}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4023
    .end local v4           #i:I
    .end local v12           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v13           #temp:[Ljava/lang/Object;
    .end local v14           #totalCount:I
    :catch_0
    move-exception v15

    goto :goto_2

    .line 4033
    .end local v2           #c:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;
    .end local v3           #deleteArray:[I
    .end local v9           #nowPlayingArray:[I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_5

    .line 4034
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4035
    .local v11, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v15}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v8

    .line 4036
    .local v8, items:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v16, "_id"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 4037
    .local v6, idx:I
    const/4 v5, 0x0

    .line 4038
    .local v5, id:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    if-ge v4, v15, :cond_a

    .line 4039
    invoke-virtual {v8, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 4040
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {v8, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4041
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    long-to-int v5, v15

    .line 4042
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4038
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4046
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 4047
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v15, "playlisturi"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4048
    .local v10, playlisturi:Ljava/lang/String;
    if-nez v10, :cond_b

    .line 4049
    const-string v15, "selectedlist"

    invoke-virtual {v7, v15, v11}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4054
    :goto_6
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_3

    .line 4051
    :cond_b
    const/4 v15, -0x1

    invoke-static {v1, v15}, Lcom/htc/music/util/MusicUtils;->setTabActivityResult(Landroid/content/Context;I)V

    .line 4052
    invoke-static {v1, v11}, Lcom/htc/music/util/MusicUtils;->setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 946
    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 947
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v0, "isnowplayinglist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 950
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v0, "isrecentplayedplaylist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 952
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 954
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v0, "isdrmlist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 956
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v0, "pickermode"

    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 958
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v0, "isshowplayerpanel"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShowPlayerPanel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 960
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 961
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 4150
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V

    .line 4151
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 4144
    const-string v0, "[TrackBrowserFragment]"

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

    .line 4145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V

    .line 4146
    return-void
.end method

.method public onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 4154
    move v1, p2

    .line 4155
    .local v1, start:I
    add-int v0, p2, p3

    .line 4156
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4157
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 4159
    :cond_0
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 4136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->preSearchTime:J

    .line 4137
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    .line 4138
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4141
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 537
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 590
    const-string v0, "[TrackBrowserFragment]"

    const-string v1, "receive service disconnected!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 592
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 258
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onStart()V

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v4, v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    :goto_0
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    .line 276
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 277
    return-void

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onStop()V

    .line 284
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-ne v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 300
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    .line 303
    return-void

    .line 290
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateButtonCounter()V
    .locals 10

    .prologue
    const v9, 0x7f08001e

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1649
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1652
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getCheckedItemCount()I

    move-result v1

    .line 1654
    .local v1, count:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCountTemplate:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1655
    .local v2, text:Ljava/lang/String;
    iget v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1657
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1658
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07006a

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1661
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1658
    goto :goto_1

    .line 1665
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1666
    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1669
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1666
    goto :goto_2

    .line 1676
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f07006b

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1677
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1678
    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 1679
    if-lez v1, :cond_3

    :goto_3
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    move v3, v4

    goto :goto_3

    .line 1655
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
