.class Lcom/htc/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;
.super Ljava/lang/Object;
.source "HtcTvDisplayHelper.java"

# interfaces
.implements Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/medialinkhd/HtcTvDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;->this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/medialinkhd/HtcTvDisplayHelper;Lcom/htc/medialinkhd/HtcTvDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;-><init>(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onMirrorStatusChange(ZJ)V
    .locals 2
    .parameter "inMirror"
    .parameter "dongleIP"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;->this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    #getter for: Lcom/htc/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v1}, Lcom/htc/medialinkhd/HtcTvDisplayHelper;->access$300(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v0

    .line 325
    .local v0, listener:Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 328
    :cond_0
    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onTvOn()V

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onTvOff()V

    goto :goto_0
.end method
