.class Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;
.super Ljava/lang/Object;
.source "TrackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/TrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderWithoutDesc"
.end annotation


# instance fields
.field badgeNowPlayingWithoutDesc:Lcom/htc/widget/HtcListItemImageButton;

.field listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

.field listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/online/TrackListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/TrackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
