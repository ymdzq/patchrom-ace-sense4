.class Lcom/android/camera/property/PreferenceBinder$2;
.super Ljava/lang/Object;
.source "PreferenceBinder.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/property/PreferenceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<TTPropertyValue;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/property/PreferenceBinder;


# direct methods
.method constructor <init>(Lcom/android/camera/property/PreferenceBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/property/PreferenceBinder$2;->this$0:Lcom/android/camera/property/PreferenceBinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTPropertyValue;>;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<TTPropertyValue;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder$2;->this$0:Lcom/android/camera/property/PreferenceBinder;

    #getter for: Lcom/android/camera/property/PreferenceBinder;->m_IsSynchronizing:Z
    invoke-static {v0}, Lcom/android/camera/property/PreferenceBinder;->access$000(Lcom/android/camera/property/PreferenceBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder$2;->this$0:Lcom/android/camera/property/PreferenceBinder;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    #calls: Lcom/android/camera/property/PreferenceBinder;->flushToPreference(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/camera/property/PreferenceBinder;->access$100(Lcom/android/camera/property/PreferenceBinder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
