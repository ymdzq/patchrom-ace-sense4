.class Lcom/htc/widget/HtcActivityChooserModel$1;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActivityChooserModel;

.field final synthetic val$chosenName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcActivityChooserModel;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcActivityChooserModel$1;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    iput-object p2, p0, Lcom/htc/widget/HtcActivityChooserModel$1;->val$chosenName:Landroid/content/ComponentName;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel$1;->val$chosenName:Landroid/content/ComponentName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel$1;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->addHisoricalRecord(Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;)Z
    invoke-static {v1, v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$200(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;)Z

    return-void
.end method
