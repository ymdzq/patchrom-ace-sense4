.class Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;
.super Ljava/lang/Object;
.source "TrackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/TrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderWithDesc"
.end annotation


# instance fields
.field badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;

.field listItemAlbumArt:Lcom/htc/widget/QuickContactBadge;

.field listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

.field messageBody:Lcom/htc/widget/HtcListItemMessageBody;

.field final synthetic this$0:Lcom/htc/music/online/TrackListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/TrackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
