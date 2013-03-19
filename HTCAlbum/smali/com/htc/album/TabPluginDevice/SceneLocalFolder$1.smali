.class Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldState:I

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;->oldState:I

    return-void
.end method


# virtual methods
.method public onLoadingStatusChange(I)V
    .locals 5

    const/16 v4, 0x5079

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;->oldState:I

    if-eq v3, p1, :cond_0

    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;->oldState:I

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v0, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
