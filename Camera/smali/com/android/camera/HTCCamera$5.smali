.class Lcom/android/camera/HTCCamera$5;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedCallbackAdded(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<[F>;",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<[F>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2804(Lcom/android/camera/HTCCamera;)I

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->startAccelerometer()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2900(Lcom/android/camera/HTCCamera;)V

    :cond_0
    return-void
.end method

.method public onChangedCallbackRemoved(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<[F>;",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<[F>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2806(Lcom/android/camera/HTCCamera;)I

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopAccelerometer()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$3000(Lcom/android/camera/HTCCamera;)V

    :cond_0
    return-void
.end method
