.class Lcom/htc/music/NowPlayingViewHelper$6;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$6;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1329
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1331
    packed-switch p2, :pswitch_data_0

    .line 1339
    :goto_0
    return-void

    .line 1333
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$6;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$6;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$6;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v2, v2, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$6;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v3, v3, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$6;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->shareMusicFile()V
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$200(Lcom/htc/music/NowPlayingViewHelper;)V

    goto :goto_0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
