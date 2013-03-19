.class Lcom/android/camera/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PopupMenu;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/SelfTimerValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu$2;->this$0:Lcom/android/camera/widget/PopupMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/SelfTimerValue;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/SelfTimerValue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu$2;->this$0:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupMenu;->close()V

    return-void
.end method
