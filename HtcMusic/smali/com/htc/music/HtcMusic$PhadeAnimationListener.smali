.class Lcom/htc/music/HtcMusic$PhadeAnimationListener;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhadeAnimationListener"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mPhaseIn:Z

.field final mView:Lcom/htc/sunny2/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/view/SView;Landroid/os/Handler;Z)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "phaseIn"

    .prologue
    .line 7098
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7099
    iput-object p1, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mView:Lcom/htc/sunny2/view/SView;

    .line 7100
    iput-object p2, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mHandler:Landroid/os/Handler;

    .line 7101
    iput-boolean p3, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mPhaseIn:Z

    .line 7102
    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 7113
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mPhaseIn:Z

    if-eqz v0, :cond_0

    .line 7114
    iget-object v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mView:Lcom/htc/sunny2/view/SView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setAlpha(I)V

    .line 7118
    :goto_0
    return-void

    .line 7116
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mView:Lcom/htc/sunny2/view/SView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setAlpha(I)V

    goto :goto_0
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 7106
    iget-object v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 7107
    iget-object v0, p0, Lcom/htc/music/HtcMusic$PhadeAnimationListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3a99

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7109
    :cond_0
    return-void
.end method
