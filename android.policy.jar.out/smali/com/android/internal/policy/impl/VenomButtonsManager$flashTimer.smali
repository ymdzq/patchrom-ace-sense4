.class public Lcom/android/internal/policy/impl/VenomButtonsManager$flashTimer;
.super Ljava/lang/Object;
.source "VenomButtonsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/VenomButtonsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "flashTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$flashTimer;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$flashTimer;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$flashTimer;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/VenomButtonsManager;->runTimer:Z

    #calls: Lcom/android/internal/policy/impl/VenomButtonsManager;->setFlashlightEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$3(Lcom/android/internal/policy/impl/VenomButtonsManager;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
