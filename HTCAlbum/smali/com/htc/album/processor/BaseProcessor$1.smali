.class Lcom/htc/album/processor/BaseProcessor$1;
.super Ljava/lang/Object;
.source "BaseProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/processor/BaseProcessor;->setKeepScreenOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/processor/BaseProcessor;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$screenOn:Z


# direct methods
.method constructor <init>(Lcom/htc/album/processor/BaseProcessor;ZLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/processor/BaseProcessor$1;->this$0:Lcom/htc/album/processor/BaseProcessor;

    iput-boolean p2, p0, Lcom/htc/album/processor/BaseProcessor$1;->val$screenOn:Z

    iput-object p3, p0, Lcom/htc/album/processor/BaseProcessor$1;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v1, 0x80

    iget-boolean v0, p0, Lcom/htc/album/processor/BaseProcessor$1;->val$screenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/BaseProcessor$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/processor/BaseProcessor$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
