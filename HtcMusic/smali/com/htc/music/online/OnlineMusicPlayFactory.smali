.class public Lcom/htc/music/online/OnlineMusicPlayFactory;
.super Ljava/lang/Object;
.source "OnlineMusicPlayFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getOnlineMusicPlay(Landroid/content/Context;Z)Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;
    .locals 1
    .parameter "context"
    .parameter "isEnhancerExist"

    .prologue
    .line 18
    new-instance v0, Lcom/htc/music/online/SinaMusicPlayHelper;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/online/SinaMusicPlayHelper;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method
