.class Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$3;
.super Ljava/lang/Object;
.source "AbsCollectionBrowserActivityGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$3;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 323
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$3;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$3;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentAction:Lcom/htc/music/online/SinaActions;
    invoke-static {v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1900(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/SinaActions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->doAction(Lcom/htc/music/online/SinaActions;)V

    .line 325
    :cond_0
    return-void
.end method
