.class Lcom/m0narx/tweaks/widgets/Dialogs$2;
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


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/m0narx/tweaks/widgets/Dialogs$2;->val$Action:I

    iput p2, p0, Lcom/m0narx/tweaks/widgets/Dialogs$2;->val$HeaderMessageRes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/m0narx/tweaks/widgets/Dialogs$2;->val$Action:I

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    iget v0, p0, Lcom/m0narx/tweaks/widgets/Dialogs$2;->val$HeaderMessageRes:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/m0narx/tweaks/widgets/Dialogs$2;->val$Action:I

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    :cond_0
    return-void
.end method
