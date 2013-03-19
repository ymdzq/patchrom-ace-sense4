.class Lcom/htc/music/HtcMusic$9;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/htc/music/HtcMusic$9;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1388
    iget-object v0, p0, Lcom/htc/music/HtcMusic$9;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$1602(Lcom/htc/music/HtcMusic;Z)Z

    .line 1389
    iget-object v0, p0, Lcom/htc/music/HtcMusic$9;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/htc/music/HtcMusic$9;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$9;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->toggleShuffle()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1700(Lcom/htc/music/HtcMusic;)V

    .line 1393
    return-void
.end method
