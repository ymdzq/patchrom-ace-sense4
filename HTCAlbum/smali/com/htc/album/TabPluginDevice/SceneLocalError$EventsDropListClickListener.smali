.class public Lcom/htc/album/TabPluginDevice/SceneLocalError$EventsDropListClickListener;
.super Ljava/lang/Object;
.source "SceneLocalError.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventsDropListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalError;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalError;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError$EventsDropListClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError$EventsDropListClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalError;

    invoke-virtual {v0, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onDropListItemClick(I)V

    return-void
.end method
