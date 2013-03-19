.class Lcom/m0narx/tweaks/widgets/Dialogs$1;
.super Ljava/lang/Object;
.source "Dialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Action:I

.field private final synthetic val$HeaderMessageRes:I

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Dialogs$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/m0narx/tweaks/widgets/Dialogs$1;->val$Action:I

    iput p3, p0, Lcom/m0narx/tweaks/widgets/Dialogs$1;->val$HeaderMessageRes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Dialogs$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/m0narx/tweaks/widgets/Dialogs$1;->val$Action:I

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Reboot;->perform(Landroid/content/Context;I)V

    iget v0, p0, Lcom/m0narx/tweaks/widgets/Dialogs$1;->val$Action:I

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->cancel(I)V

    iget v0, p0, Lcom/m0narx/tweaks/widgets/Dialogs$1;->val$HeaderMessageRes:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/m0narx/tweaks/widgets/Dialogs$1;->val$Action:I

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    :cond_0
    return-void
.end method
