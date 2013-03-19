.class Lcom/htc/fragment/widget/CarouselFragment$1;
.super Ljava/lang/Object;
.source "CarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/CarouselFragment;->enqueueSettingActionIfRequired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselFragment;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment$1;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselFragment$1;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    const/4 v6, 0x0

    #setter for: Lcom/htc/fragment/widget/CarouselFragment;->deferredSetting:Ljava/lang/Runnable;
    invoke-static {v5, v6}, Lcom/htc/fragment/widget/CarouselFragment;->access$102(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselFragment$1;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    #getter for: Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselFragment;->access$200(Lcom/htc/fragment/widget/CarouselFragment;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselFragment$1;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    #getter for: Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselFragment;->access$200(Lcom/htc/fragment/widget/CarouselFragment;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselFragment$1;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    #getter for: Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselFragment;->access$200(Lcom/htc/fragment/widget/CarouselFragment;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    move-object v2, v1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
