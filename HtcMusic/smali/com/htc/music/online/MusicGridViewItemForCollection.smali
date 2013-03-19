.class public Lcom/htc/music/online/MusicGridViewItemForCollection;
.super Lcom/htc/music/widget/gridview/MusicGridViewItem;
.source "MusicGridViewItemForCollection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicGridViewItem]"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 0
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "prototypeKey"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getInstance(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)Lcom/htc/music/widget/gridview/MusicGridViewItem;
    .locals 1
    .parameter "context"
    .parameter "sunnyContext"
    .parameter "param"

    .prologue
    .line 39
    new-instance v0, Lcom/htc/music/online/MusicGridViewItemForCollection;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/music/online/MusicGridViewItemForCollection;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    return-object v0
.end method

.method protected getInstance(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)Lcom/htc/music/widget/gridview/MusicGridViewItem;
    .locals 1
    .parameter "context"
    .parameter "sunnyContext"
    .parameter "param"
    .parameter "prototypeKey"

    .prologue
    .line 35
    new-instance v0, Lcom/htc/music/online/MusicGridViewItemForCollection;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/music/online/MusicGridViewItemForCollection;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    return-object v0
.end method

.method protected judgeOldTime()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method protected judgeTimeWithCurrent(I)Z
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
