.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;
.super Ljava/lang/Object;
.source "DMCBaseScene.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripItemSelectedListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 3

    move v0, p2

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNothingSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0

    return-void
.end method
