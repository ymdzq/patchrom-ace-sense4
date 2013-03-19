.class Lcom/android/camera/widget/SceneListView$1;
.super Ljava/lang/Object;
.source "SceneListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/SceneListView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SceneListView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SceneListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SceneListView$1;->this$0:Lcom/android/camera/widget/SceneListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$1;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->m_EffectList:Lcom/android/camera/effect/EffectList;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$000(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$1;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->m_EffectManager:Lcom/android/camera/effect/EffectManager;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$100(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$1;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->m_EffectManager:Lcom/android/camera/effect/EffectManager;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$100(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectManager;->setCurrentScene(Lcom/android/camera/effect/EffectBase;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$1;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$200(Lcom/android/camera/widget/SceneListView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->closingMenuItemClickedEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_1
    return-void
.end method
