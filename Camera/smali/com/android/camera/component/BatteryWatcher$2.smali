.class Lcom/android/camera/component/BatteryWatcher$2;
.super Ljava/lang/Object;
.source "BatteryWatcher.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BatteryWatcher;->initializeOverride()V
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
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BatteryWatcher;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BatteryWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BatteryWatcher$2;->this$0:Lcom/android/camera/component/BatteryWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher$2;->this$0:Lcom/android/camera/component/BatteryWatcher;

    #getter for: Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;
    invoke-static {v0}, Lcom/android/camera/component/BatteryWatcher;->access$200(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/WorkerThread;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/android/camera/WorkerThread;->sendMessage(I)Z

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher$2;->this$0:Lcom/android/camera/component/BatteryWatcher;

    #getter for: Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;
    invoke-static {v0}, Lcom/android/camera/component/BatteryWatcher;->access$200(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/WorkerThread;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/android/camera/WorkerThread;->sendMessage(I)Z

    return-void
.end method
