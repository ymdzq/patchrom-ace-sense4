.class public final Lcom/android/camera/property/PropertyUtility;
.super Ljava/lang/Object;
.source "PropertyUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangedCallbackAsync(Lcom/android/camera/property/Property;Landroid/os/Handler;Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Landroid/os/Handler;",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, "property"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "propertyThreadHandler"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/camera/property/PropertyUtility$1;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/property/PropertyUtility$1;-><init>(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    goto :goto_0
.end method

.method public static removeChangedCallbackAsync(Lcom/android/camera/property/Property;Landroid/os/Handler;Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Landroid/os/Handler;",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, "property"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "propertyThreadHandler"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/camera/property/PropertyUtility$2;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/property/PropertyUtility$2;-><init>(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    goto :goto_0
.end method
