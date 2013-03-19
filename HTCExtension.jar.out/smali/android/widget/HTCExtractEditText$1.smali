.class Landroid/widget/HTCExtractEditText$1;
.super Ljava/lang/Object;
.source "HtcEditText.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HTCExtractEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HTCExtractEditText;


# direct methods
.method constructor <init>(Landroid/widget/HTCExtractEditText;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HTCExtractEditText$1;->this$0:Landroid/widget/HTCExtractEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$1;->this$0:Landroid/widget/HTCExtractEditText;

    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText;->onDownAnimationCancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$1;->this$0:Landroid/widget/HTCExtractEditText;

    #calls: Landroid/widget/HTCExtractEditText;->onDownAnimationEnd()V
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$100(Landroid/widget/HTCExtractEditText;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$1;->this$0:Landroid/widget/HTCExtractEditText;

    #calls: Landroid/widget/HTCExtractEditText;->onDownAnimationStart()V
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$000(Landroid/widget/HTCExtractEditText;)V

    return-void
.end method
