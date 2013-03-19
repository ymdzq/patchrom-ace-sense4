.class Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 3937
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;Lcom/htc/music/NowPlayingViewHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3937
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 3940
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 3944
    .local v0, count:I
    :goto_0
    if-lez v0, :cond_1

    .line 3945
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->hideEmptyErrorView()V

    .line 3949
    :goto_1
    return-void

    .line 3940
    .end local v0           #count:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3947
    .restart local v0       #count:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    const v2, 0x7f070037

    invoke-virtual {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->showEmptyView(I)V

    goto :goto_1
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 3955
    return-void
.end method
