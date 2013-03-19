.class abstract Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
.implements Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field protected mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field protected final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field mDlnaMode:I

.field private mDrmLockIconResId:I

.field protected mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field mNotNotify:Z

.field protected mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

.field mTitleIdx:I

.field private mUnknownAlbum:Ljava/lang/String;

.field private mUnknownArtist:Ljava/lang/String;

.field private mcurContent:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V
    .locals 10
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 3546
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 3486
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIsNowPlaying:Z

    .line 3488
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 3502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 3504
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3506
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 3510
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 3516
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3518
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraintIsValid:Z

    .line 3522
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mcurContent:I

    .line 3525
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    .line 3526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 3883
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    .line 3935
    new-instance v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;Lcom/htc/music/NowPlayingViewHelper$1;)V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 3547
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 3548
    invoke-virtual {p0, p4}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3549
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 3550
    const v1, 0x7f07004d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3551
    const v1, 0x7f07004e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 3556
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020058

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3558
    .local v9, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 3559
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 3560
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 3563
    iget-object v1, p2, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    .line 3565
    if-eqz p4, :cond_0

    .line 3566
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3568
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    .line 3571
    .local v5, height:I
    new-instance v1, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p0

    move v6, v5

    invoke-direct/range {v1 .. v8}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 3574
    const v1, 0x7f02005b

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    .line 3575
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 3657
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;

    .line 3659
    .local v25, vh:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->copyStringtoBuffer(Landroid/database/Cursor;Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;)V

    .line 3661
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v16

    .line 3662
    .local v16, line1:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 3665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3667
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v26

    if-nez v26, :cond_3

    .line 3668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3669
    .local v4, album:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v26, "<unknown>"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 3670
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3675
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    const-string v27, " - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3677
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3678
    .local v19, name:Ljava/lang/String;
    if-eqz v19, :cond_1

    const-string v26, "<unknown>"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 3679
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3683
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 3684
    .local v15, len:I
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v15, :cond_2

    .line 3685
    new-array v0, v15, [C

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 3687
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v15, v2, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3688
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v15}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v17

    .line 3689
    .local v17, line2:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 3692
    .end local v4           #album:Ljava/lang/String;
    .end local v15           #len:I
    .end local v17           #line2:Ljava/lang/String;
    .end local v19           #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v25

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 3693
    .local v13, indicator:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v13, :cond_5

    .line 3694
    const/4 v12, -0x1

    .line 3695
    .local v12, id:I
    sget-object v26, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v26, :cond_4

    .line 3698
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 3699
    sget-object v26, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v22

    .line 3700
    .local v22, shufflePos:I
    sget-object v26, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 3729
    .end local v22           #shufflePos:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    move/from16 v26, v0

    if-nez v26, :cond_e

    .line 3730
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v26

    move/from16 v0, v26

    if-ne v0, v12, :cond_d

    .line 3732
    const v26, 0x2080089

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3733
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3751
    .end local v12           #id:I
    :cond_5
    :goto_3
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3752
    .local v5, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3754
    .restart local v19       #name:Ljava/lang/String;
    const-string v26, "mime_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3756
    .local v18, minetype:Ljava/lang/String;
    if-eqz v19, :cond_6

    const-string v26, "<unknown>"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    :cond_6
    const/16 v24, 0x1

    .line 3758
    .local v24, unknown:Z
    :goto_4
    const-string v6, ""

    .line 3760
    .local v6, art:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumArtIndex:I

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 3766
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdIdx:I

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3767
    .local v7, artIndex:I
    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 3768
    if-nez v24, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_11

    .line 3770
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3779
    :goto_6
    const-string v26, "_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3780
    .local v20, path:Ljava/lang/String;
    if-eqz v20, :cond_12

    const-string v26, "content://drm/"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 3781
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 3782
    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    .line 3783
    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3784
    .local v14, indicatorBubble:Landroid/view/View;
    instance-of v0, v14, Landroid/widget/ImageView;

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 3785
    check-cast v14, Landroid/widget/ImageView;

    .end local v14           #indicatorBubble:Landroid/view/View;
    sget-object v26, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3836
    :cond_8
    :goto_7
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcRimImageButton;->getVisibility()I

    move-result v26

    if-nez v26, :cond_9

    .line 3837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3838
    .local v8, audioId:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v21

    .line 3840
    .local v21, position:I
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 3841
    .local v9, data:Landroid/os/Bundle;
    const-string v26, "audioid"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3842
    const-string v26, "position"

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3843
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 3844
    new-instance v26, Landroid/view/TouchDelegate;

    new-instance v27, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I
    invoke-static/range {v28 .. v28}, Lcom/htc/music/NowPlayingViewHelper;->access$2300(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v29, v0

    const v30, 0x7f0b009c

    invoke-static/range {v29 .. v30}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v29

    sub-int v28, v28, v29

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v30, v0

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I
    invoke-static/range {v30 .. v30}, Lcom/htc/music/NowPlayingViewHelper;->access$2300(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I
    invoke-static/range {v31 .. v31}, Lcom/htc/music/NowPlayingViewHelper;->access$2400(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v31

    invoke-direct/range {v27 .. v31}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 3853
    .end local v8           #audioId:I
    .end local v9           #data:Landroid/os/Bundle;
    .end local v21           #position:I
    :cond_9
    return-void

    .line 3672
    .end local v5           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v6           #art:Ljava/lang/String;
    .end local v7           #artIndex:I
    .end local v13           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v18           #minetype:Ljava/lang/String;
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/String;
    .end local v24           #unknown:Z
    .restart local v4       #album:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3681
    .restart local v19       #name:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3702
    .end local v4           #album:Ljava/lang/String;
    .end local v19           #name:Ljava/lang/String;
    .restart local v12       #id:I
    .restart local v13       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_c
    :try_start_2
    sget-object v26, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v12

    goto/16 :goto_2

    .line 3704
    :catch_0
    move-exception v11

    .line 3705
    .local v11, ex:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3735
    .end local v11           #ex:Landroid/os/RemoteException;
    :cond_d
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3738
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mcurContent:I

    move/from16 v26, v0

    if-ltz v26, :cond_5

    .line 3739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 3740
    .local v23, test:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mcurContent:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 3742
    const v26, 0x2080089

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3743
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3745
    :cond_f
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3756
    .end local v12           #id:I
    .end local v23           #test:I
    .restart local v5       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v18       #minetype:Ljava/lang/String;
    .restart local v19       #name:Ljava/lang/String;
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 3761
    .restart local v6       #art:Ljava/lang/String;
    .restart local v24       #unknown:Z
    :catch_1
    move-exception v10

    .line 3762
    .local v10, e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v10}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    .line 3763
    const-string v6, ""

    goto/16 :goto_5

    .line 3773
    .end local v10           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v7       #artIndex:I
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->requestImageDecode(Landroid/database/Cursor;Lcom/htc/widget/HtcListItemTileImage;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 3790
    .restart local v20       #path:Ljava/lang/String;
    :cond_12
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v26

    if-eqz v26, :cond_13

    if-eqz v18, :cond_13

    const-string v26, "audio/x-wma-drm"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 3791
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 3792
    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    .line 3793
    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3794
    .restart local v14       #indicatorBubble:Landroid/view/View;
    instance-of v0, v14, Landroid/widget/ImageView;

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 3795
    check-cast v14, Landroid/widget/ImageView;

    .end local v14           #indicatorBubble:Landroid/view/View;
    sget-object v26, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_7

    .line 3801
    :cond_13
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3867
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_2

    .line 3868
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3869
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3870
    :cond_0
    if-eqz p1, :cond_1

    .line 3871
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3876
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iput-object p1, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 3878
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3879
    invoke-virtual {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3881
    :cond_2
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "cursor"
    .parameter "notNotify"

    .prologue
    .line 3861
    iput-boolean p2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    .line 3862
    invoke-virtual {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3863
    return-void
.end method

.method protected abstract copyStringtoBuffer(Landroid/database/Cursor;Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;)V
.end method

.method protected getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 3588
    if-nez p1, :cond_1

    .line 3600
    :cond_0
    :goto_0
    return-void

    .line 3590
    :cond_1
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    .line 3591
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    .line 3592
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    .line 3593
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumArtIndex:I

    .line 3594
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    .line 3595
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdIdx:I

    .line 3597
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 3598
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 3922
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    .line 3928
    :cond_0
    :goto_0
    return v0

    .line 3923
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v2, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 3925
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v2, v2, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 3928
    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 3932
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3915
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 3917
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 3604
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3605
    .local v1, v:Landroid/view/View;
    const v3, 0x7f080064

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3612
    .local v0, iv:Landroid/widget/ImageView;
    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    .line 3613
    .local v2, vh:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    const v3, 0x7f080025

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 3614
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 3616
    const v3, 0x7f080024

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3618
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v3, :cond_0

    .line 3619
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3622
    :cond_0
    const v3, 0x7f080026

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 3623
    const v3, 0x7f080027

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 3627
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v4, "common_circle_outer"

    const v5, 0x208001f

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_circle_pressed"

    const v6, 0x2080020

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_circle_rest"

    const v7, 0x2080021

    invoke-static {p1, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 3631
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 3632
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020029

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 3633
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 3634
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v4, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;

    invoke-direct {v4, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3647
    new-instance v3, Landroid/database/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 3648
    const/16 v3, 0xc8

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 3650
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3651
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 3886
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    if-eqz v0, :cond_0

    .line 3887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    .line 3891
    :goto_0
    return-void

    .line 3890
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onContentChange()V
    .locals 0

    .prologue
    .line 3907
    invoke-super {p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->onContentChanged()V

    .line 3908
    return-void
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 3959
    if-nez p2, :cond_1

    .line 3996
    :cond_0
    :goto_0
    return-void

    .line 3960
    :cond_1
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, v9, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 3962
    .local v6, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 3963
    .local v3, childCount:I
    if-gtz v3, :cond_2

    .line 3964
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3968
    :cond_2
    const/4 v8, 0x0

    .line 3969
    .local v8, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    array-length v9, p5

    if-lez v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 3970
    const/4 v9, 0x0

    aget-object v8, p5, v9

    .end local v8           #path:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 3972
    .restart local v8       #path:Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/htc/music/util/MBitmap;

    invoke-direct {v2, p2, v8}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 3973
    .local v2, b:Lcom/htc/music/util/MBitmap;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v9, p1, v2, p3, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v0

    .line 3974
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 3978
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 3979
    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3984
    .local v7, ll:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 3985
    const v9, 0x7f080024

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 3986
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_4

    .line 3987
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3989
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 3990
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3978
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v5           #integer:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public varargs onOnlineImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    const/4 v9, 0x0

    .line 4000
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4001
    :cond_0
    const-string v8, "[NowPlayingViewHelper]"

    const-string v9, "bitmap == null or bitmap isRecycled() in NowPlayingViewHelper.onOnlineImageDecoded"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4040
    :cond_1
    :goto_0
    return-void

    .line 4004
    :cond_2
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v5, v8, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 4006
    .local v5, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 4007
    .local v2, childCount:I
    if-gtz v2, :cond_3

    .line 4008
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 4012
    :cond_3
    const/4 v7, 0x0

    .line 4013
    .local v7, path:Ljava/lang/String;
    if-eqz p5, :cond_4

    array-length v8, p5

    if-lez v8, :cond_4

    aget-object v8, p5, v9

    if-eqz v8, :cond_4

    aget-object v8, p5, v9

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 4014
    aget-object v7, p5, v9

    .end local v7           #path:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 4016
    .restart local v7       #path:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v8, v8, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v8, p2}, Lcom/htc/music/online/Util;->drawDefaultSourceIconToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 4017
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v8, v8, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-virtual {v8, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 4018
    .local v0, addToCache:Z
    if-eqz v0, :cond_1

    .line 4019
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 4020
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4025
    .local v6, ll:Landroid/view/View;
    if-eqz v6, :cond_5

    .line 4026
    const v8, 0x7f080024

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 4028
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_5

    .line 4029
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4031
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p1, :cond_5

    .line 4032
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 4033
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4019
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected abstract requestImageDecode(Landroid/database/Cursor;Lcom/htc/widget/HtcListItemTileImage;Ljava/lang/String;I)V
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 3895
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3896
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3898
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3903
    :goto_0
    return-object v0

    .line 3900
    :cond_2
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2, v1}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3901
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3902
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 3578
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 3579
    return-void
.end method
