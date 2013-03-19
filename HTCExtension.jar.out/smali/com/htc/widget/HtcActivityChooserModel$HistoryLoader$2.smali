.class Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader$2;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader$2;->this$1:Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader$2;->this$1:Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$1400(Lcom/htc/widget/HtcActivityChooserModel;)V

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader$2;->this$1:Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->sortActivities()V
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$900(Lcom/htc/widget/HtcActivityChooserModel;)V

    return-void
.end method
