.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "itemInfo"
.end annotation


# instance fields
.field private mID:Ljava/lang/String;

.field private mPos:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pos"
    .parameter "ID"

    .prologue
    .line 2436
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2437
    iput p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->mPos:I

    .line 2438
    iput-object p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->mID:Ljava/lang/String;

    .line 2439
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getPostion()I
    .locals 1

    .prologue
    .line 2446
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->mPos:I

    return v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->mID:Ljava/lang/String;

    .line 2451
    return-void
.end method

.method public setPostion(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 2442
    iput p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->mPos:I

    .line 2443
    return-void
.end method
