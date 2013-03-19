.class Lcom/htc/widget/HtcToggleButtonLight$1;
.super Ljava/lang/Object;
.source "HtcToggleButtonLight.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcToggleButtonLight;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcToggleButtonLight;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcToggleButtonLight$1;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$1;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    #calls: Lcom/htc/widget/HtcToggleButtonLight;->onOnAnimationCancel()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButtonLight;->access$200(Lcom/htc/widget/HtcToggleButtonLight;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$1;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    #calls: Lcom/htc/widget/HtcToggleButtonLight;->onOnAnimationEnd()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButtonLight;->access$100(Lcom/htc/widget/HtcToggleButtonLight;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$1;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    #calls: Lcom/htc/widget/HtcToggleButtonLight;->onOnAnimationStart()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButtonLight;->access$000(Lcom/htc/widget/HtcToggleButtonLight;)V

    return-void
.end method
