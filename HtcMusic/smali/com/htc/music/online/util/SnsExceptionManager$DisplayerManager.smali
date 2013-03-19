.class Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;
.super Ljava/lang/Object;
.source "SnsExceptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/util/SnsExceptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayerManager"
.end annotation


# instance fields
.field private mChooser:Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;

.field private mCurrentDisplaerType:I

.field private mDisplayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;

.field final synthetic this$0:Lcom/htc/music/online/util/SnsExceptionManager;


# direct methods
.method private constructor <init>(Lcom/htc/music/online/util/SnsExceptionManager;)V
    .locals 3
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;

    iget-object v1, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;-><init>(Lcom/htc/music/online/util/SnsExceptionManager;Lcom/htc/music/online/util/SnsExceptionManager$1;)V

    iput-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mChooser:Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/online/util/SnsExceptionManager;Lcom/htc/music/online/util/SnsExceptionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;-><init>(Lcom/htc/music/online/util/SnsExceptionManager;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mDisplayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mDisplayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager$Displayer;->dismiss()V

    .line 156
    :cond_0
    return-void
.end method

.method public show(Ljava/lang/Object;I)V
    .locals 2
    .parameter "displayableObj"
    .parameter "type"

    .prologue
    .line 138
    iget v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mCurrentDisplaerType:I

    if-eq v0, p2, :cond_1

    .line 139
    iput p2, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mCurrentDisplaerType:I

    .line 140
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mDisplayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mDisplayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager$Displayer;->dismiss()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mChooser:Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;

    invoke-virtual {v0, p1}, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerChooser;->getDisplayerInstance(Ljava/lang/Object;)Lcom/htc/music/online/util/SnsExceptionManager$Displayer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mDisplayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mDisplayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DisplayerManager;->mDisplayer:Lcom/htc/music/online/util/SnsExceptionManager$Displayer;

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager$Displayer;->show()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_2
    const-string v0, ""

    const-string v1, "No suitable displayer to show the error message"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
