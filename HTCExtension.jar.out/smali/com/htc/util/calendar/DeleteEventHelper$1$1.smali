.class Lcom/htc/util/calendar/DeleteEventHelper$1$1;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/calendar/DeleteEventHelper$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/util/calendar/DeleteEventHelper$1;


# direct methods
.method constructor <init>(Lcom/htc/util/calendar/DeleteEventHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/util/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/util/calendar/DeleteEventHelper$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/util/calendar/DeleteEventHelper$1;

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/util/calendar/DeleteEventHelper;

    #calls: Lcom/htc/util/calendar/DeleteEventHelper;->DeleteNormalEvent(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/util/calendar/DeleteEventHelper;->access$200(Lcom/htc/util/calendar/DeleteEventHelper;ZZ)V

    .line 187
    return-void
.end method
