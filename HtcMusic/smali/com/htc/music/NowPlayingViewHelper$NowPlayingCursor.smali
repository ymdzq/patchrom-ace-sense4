.class abstract Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field protected mCols:[Ljava/lang/String;

.field protected mContentObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurPos:I

.field protected mCurrentPlaylistCursor:Landroid/database/Cursor;

.field protected mCursorIdxs:[I

.field protected mDataSetObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mNowPlaying:[I

.field protected mService:Lcom/htc/music/IMediaPlaybackService;

.field protected mSize:I

.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2885
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 3191
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 3193
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 3195
    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 3197
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    .line 3199
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    .line 3201
    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    .line 3203
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 3205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    .line 3207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 2958
    const-string v1, "("

    .line 2959
    .local v1, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v0, v2, :cond_1

    .line 2960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2961
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2959
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2965
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2966
    const-string v2, "NowPlayingCursor: "

    invoke-static {v2, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    return-void
.end method

.method private moveQueueItem(II)V
    .locals 6
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 3104
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v3

    .line 3105
    .local v0, PlayListLen:I
    if-lt p1, v0, :cond_0

    .line 3106
    add-int/lit8 p1, v0, -0x1

    .line 3108
    :cond_0
    if-lt p2, v0, :cond_1

    .line 3109
    add-int/lit8 p2, v0, -0x1

    .line 3111
    :cond_1
    if-ge p1, p2, :cond_4

    .line 3112
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 3113
    .local v2, tmp:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 3114
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 3113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3116
    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    .line 3125
    .end local v1           #i:I
    .end local v2           #tmp:I
    :cond_3
    :goto_1
    return-void

    .line 3117
    :cond_4
    if-ge p2, p1, :cond_3

    .line 3118
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 3119
    .restart local v2       #tmp:I
    move v1, p1

    .restart local v1       #i:I
    :goto_2
    if-le v1, p2, :cond_5

    .line 3120
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 3119
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 3122
    :cond_5
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3044
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3045
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 3039
    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 3091
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3094
    :goto_0
    return v1

    .line 3092
    :catch_0
    move-exception v0

    .line 3093
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 3094
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .parameter "idx"

    .prologue
    .line 3081
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3084
    :goto_0
    return-object v1

    .line 3082
    :catch_0
    move-exception v0

    .line 3083
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 3084
    const-string v1, ""

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2906
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 3017
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 2998
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3001
    :goto_0
    return v1

    .line 2999
    :catch_0
    move-exception v0

    .line 3000
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 3001
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 3008
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3011
    :goto_0
    return-wide v1

    .line 3009
    :catch_0
    move-exception v0

    .line 3010
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 3011
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getMediaPlaybackService()Lcom/htc/music/IMediaPlaybackService;
    .locals 1

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method public getNowPlayingQueue()[I
    .locals 1

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    return-object v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 2988
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2991
    :goto_0
    return v1

    .line 2989
    :catch_0
    move-exception v0

    .line 2990
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2991
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    .line 2972
    if-gez p1, :cond_0

    .line 2973
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "column is 0 in NowPlayingViewHelper.getString"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    const-string v1, ""

    .line 2981
    :goto_0
    return-object v1

    .line 2978
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2979
    :catch_0
    move-exception v0

    .line 2980
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2981
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 3027
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method abstract makeNowPlayingCursor()V
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2953
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->moveQueueItem(II)V

    .line 2954
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z

    .line 2955
    return-void
.end method

.method public onMove(II)Z
    .locals 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v2, 0x1

    .line 2911
    if-ne p1, p2, :cond_0

    .line 2927
    :goto_0
    return v2

    .line 2914
    :cond_0
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    if-nez v3, :cond_2

    .line 2915
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2922
    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v3, p2

    .line 2923
    .local v1, newid:I
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 2924
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2925
    iput p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 3133
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3135
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 3136
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3144
    :goto_0
    return-void

    .line 3137
    :catch_0
    move-exception v0

    .line 3138
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3139
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3142
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerContentObserver: Illegal Argument."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 3163
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3165
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3166
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3174
    :goto_0
    return-void

    .line 3167
    :catch_0
    move-exception v0

    .line 3168
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3169
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3172
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 4
    .parameter "which"

    .prologue
    .line 2932
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 2933
    const/4 v1, 0x0

    .line 2944
    :goto_0
    return v1

    .line 2935
    :cond_0
    move v0, p1

    .line 2936
    .local v0, i:I
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 2937
    :goto_1
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 2938
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 2939
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2941
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2944
    .end local v0           #i:I
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 2942
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 5

    .prologue
    .line 3049
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3050
    .local v0, contentObserver:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/ContentObserver;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3052
    .local v1, dataSetObserver:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/DataSetObserver;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    .line 3053
    .local v3, o:Landroid/database/ContentObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 3055
    .end local v3           #o:Landroid/database/ContentObserver;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/DataSetObserver;

    .line 3056
    .local v3, o:Landroid/database/DataSetObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 3059
    .end local v3           #o:Landroid/database/DataSetObserver;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 3061
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    .line 3062
    .local v3, o:Landroid/database/ContentObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 3064
    .end local v3           #o:Landroid/database/ContentObserver;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/DataSetObserver;

    .line 3065
    .local v3, o:Landroid/database/DataSetObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3066
    if-eqz v3, :cond_3

    .line 3067
    invoke-virtual {v3}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_3

    .line 3071
    .end local v3           #o:Landroid/database/DataSetObserver;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3072
    const/4 v0, 0x0

    .line 3073
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3074
    const/4 v1, 0x0

    .line 3075
    const/4 v4, 0x1

    return v4
.end method

.method public setMediaPlaybackService(Lcom/htc/music/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 2898
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 2899
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 2900
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 3148
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3150
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3151
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3159
    :goto_0
    return-void

    .line 3152
    :catch_0
    move-exception v0

    .line 3153
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3154
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3157
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterContentObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 3178
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3180
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3181
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3189
    :goto_0
    return-void

    .line 3182
    :catch_0
    move-exception v0

    .line 3183
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3184
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3187
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
