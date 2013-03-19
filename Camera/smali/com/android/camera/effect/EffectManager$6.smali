.class Lcom/android/camera/effect/EffectManager$6;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectManager;->initializeOverride()V
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
        "Lcom/android/camera/OneValueEventArgs",
        "<",
        "Lcom/android/camera/effect/EffectBase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/effect/IScene;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;
    invoke-static {v0}, Lcom/android/camera/effect/EffectManager;->access$1400(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/effect/AutoScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_BackUpEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/android/camera/effect/EffectManager;->access$1500(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectManager;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/effect/IEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;
    invoke-static {v0}, Lcom/android/camera/effect/EffectManager;->access$1600(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_BackUpEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1, v0}, Lcom/android/camera/effect/EffectManager;->access$1502(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/android/camera/effect/EffectManager;->access$1000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/AutoScene;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/android/camera/effect/EffectManager;->access$1000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/android/camera/effect/EffectManager;->access$300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    #setter for: Lcom/android/camera/effect/EffectManager;->m_BackUpEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectManager;->access$1502(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/android/camera/effect/EffectManager;->access$300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    #setter for: Lcom/android/camera/effect/EffectManager;->m_BackUpEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectManager;->access$1502(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectManager$6;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
