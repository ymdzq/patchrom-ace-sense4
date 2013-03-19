.class public Lcom/htc/album/TabPluginCtrl/TabPluginItem;
.super Ljava/lang/Object;
.source "TabPluginItem.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TabPluginItem"

.field public static final PLUGIN_STATE_AVAILABLE:I = 0x1

.field public static final PLUGIN_STATE_NOT_AVAILABLE:I = 0x0

.field public static final PLUGIN_STATE_UNKNOWN:I = -0x1


# instance fields
.field private mState:I

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->mTag:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->mState:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->mState:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->mState:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->mTag:Ljava/lang/String;

    return-void
.end method
