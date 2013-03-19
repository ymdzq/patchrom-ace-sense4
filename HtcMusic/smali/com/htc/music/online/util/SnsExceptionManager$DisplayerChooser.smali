.class Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;
.super Ljava/lang/Object;
.source "SnsExceptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/util/SnsExceptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayerChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/util/SnsExceptionManager;


# direct methods
.method private constructor <init>(Lcom/htc/music/online/util/SnsExceptionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/online/util/SnsExceptionManager;Lcom/htc/music/online/util/SnsExceptionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;-><init>(Lcom/htc/music/online/util/SnsExceptionManager;)V

    return-void
.end method


# virtual methods
.method public getDisplayerInstance(Ljava/lang/Object;)Lcom/htc/music/online/util/SnsExceptionManager$Displayer;
    .locals 2
    .parameter "displayableObj"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, displayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;
    instance-of v1, p1, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;

    .end local v0           #displayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;
    iget-object v1, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    check-cast p1, Lcom/htc/widget/HtcAlertDialog;

    .end local p1
    invoke-direct {v0, v1, p1}, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;-><init>(Lcom/htc/music/online/util/SnsExceptionManager;Lcom/htc/widget/HtcAlertDialog;)V

    .line 167
    .restart local v0       #displayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;
    :cond_0
    return-object v0
.end method
