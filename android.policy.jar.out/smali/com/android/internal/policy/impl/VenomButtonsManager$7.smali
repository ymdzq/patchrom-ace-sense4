.class Lcom/android/internal/policy/impl/VenomButtonsManager$7;
.super Ljava/lang/Object;
.source "VenomButtonsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/VenomButtonsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$7;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$7;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    const-string v1, "home"

    #calls: Lcom/android/internal/policy/impl/VenomButtonsManager;->startAction(Ljava/lang/String;ZI)V
    invoke-static {v0, v1, v2, v2}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$2(Lcom/android/internal/policy/impl/VenomButtonsManager;Ljava/lang/String;ZI)V

    return-void
.end method
