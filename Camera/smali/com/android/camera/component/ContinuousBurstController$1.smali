.class Lcom/android/camera/component/ContinuousBurstController$1;
.super Ljava/lang/Object;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ContinuousBurstController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/AutoFocusEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController$1;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$1;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCaptureNeeded:Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$500(Lcom/android/camera/component/ContinuousBurstController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$1;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$600(Lcom/android/camera/component/ContinuousBurstController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$1;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController$1;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_PendingTakePictureIndex:I
    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstController;->access$700(Lcom/android/camera/component/ContinuousBurstController;)I

    move-result v1

    #calls: Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->access$800(Lcom/android/camera/component/ContinuousBurstController;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$1;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$900(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "autoFocusFinished - Cannot take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$1;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->access$602(Lcom/android/camera/component/ContinuousBurstController;Z)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/AutoFocusEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ContinuousBurstController$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method
