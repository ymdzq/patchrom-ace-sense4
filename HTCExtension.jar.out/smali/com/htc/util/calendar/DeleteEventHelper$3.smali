.class Lcom/htc/util/calendar/DeleteEventHelper$3;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/calendar/DeleteEventHelper;

.field final synthetic val$begin:J

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$enableUI:Z

.field final synthetic val$end:J

.field final synthetic val$synchExchange:Z

.field final synthetic val$updateNotification:Z

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/htc/util/calendar/DeleteEventHelper;JJLandroid/database/Cursor;IZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->this$0:Lcom/htc/util/calendar/DeleteEventHelper;

    iput-wide p2, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$begin:J

    iput-wide p4, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$end:J

    iput-object p6, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$cursor:Landroid/database/Cursor;

    iput p7, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$which:I

    iput-boolean p8, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$enableUI:Z

    iput-boolean p9, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$synchExchange:Z

    iput-boolean p10, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$updateNotification:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->this$0:Lcom/htc/util/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$begin:J

    iget-wide v3, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$end:J

    iget-object v5, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$cursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$which:I

    iget-boolean v7, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$enableUI:Z

    iget-boolean v8, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$synchExchange:Z

    iget-boolean v9, p0, Lcom/htc/util/calendar/DeleteEventHelper$3;->val$updateNotification:Z

    #calls: Lcom/htc/util/calendar/DeleteEventHelper;->doDelete(JJLandroid/database/Cursor;IZZZ)V
    invoke-static/range {v0 .. v9}, Lcom/htc/util/calendar/DeleteEventHelper;->access$300(Lcom/htc/util/calendar/DeleteEventHelper;JJLandroid/database/Cursor;IZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v10

    .line 571
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "DeleteEventHelper"

    const-string v1, "delete exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
