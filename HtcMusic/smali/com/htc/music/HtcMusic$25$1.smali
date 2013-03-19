.class Lcom/htc/music/HtcMusic$25$1;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic$25;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$25;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$25;)V
    .locals 0
    .parameter

    .prologue
    .line 4549
    iput-object p1, p0, Lcom/htc/music/HtcMusic$25$1;->this$1:Lcom/htc/music/HtcMusic$25;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4552
    iget-object v0, p0, Lcom/htc/music/HtcMusic$25$1;->this$1:Lcom/htc/music/HtcMusic$25;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 4553
    return-void
.end method
