.class Lcom/htc/music/online/TrackListActivity$TrackListAdapter$2;
.super Ljava/lang/Object;
.source "TrackListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->getViewWithoutDescription(Landroid/view/View;Lcom/htc/music/online/sinamusic/WrapperSong;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter$2;->this$1:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "clickedView"

    .prologue
    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 925
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 926
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter$2;->this$1:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mParentActivity:Lcom/htc/music/online/TrackListActivity;
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->access$400(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/online/TrackListActivity;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/htc/music/online/TrackListActivity;->showTrackOptions(IZ)V
    invoke-static {v1, v0, v2}, Lcom/htc/music/online/TrackListActivity;->access$500(Lcom/htc/music/online/TrackListActivity;IZ)V

    .line 928
    :cond_0
    return-void
.end method
