.class abstract Lcom/htc/music/online/util/SnsExceptionManager$Displayer;
.super Ljava/lang/Object;
.source "SnsExceptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/util/SnsExceptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Displayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/util/SnsExceptionManager;


# direct methods
.method private constructor <init>(Lcom/htc/music/online/util/SnsExceptionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/music/online/util/SnsExceptionManager$Displayer;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/online/util/SnsExceptionManager;Lcom/htc/music/online/util/SnsExceptionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/music/online/util/SnsExceptionManager$Displayer;-><init>(Lcom/htc/music/online/util/SnsExceptionManager;)V

    return-void
.end method


# virtual methods
.method abstract dismiss()V
.end method

.method abstract show()V
.end method
