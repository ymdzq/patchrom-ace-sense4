.class Lcom/m0narx/tweaks/widgets/Misc$2;
.super Ljava/lang/Object;
.source "Misc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$action:I

.field private final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Misc$2;->val$mContext:Landroid/content/Context;

    iput p2, p0, Lcom/m0narx/tweaks/widgets/Misc$2;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Misc$2;->val$mContext:Landroid/content/Context;

    iget v1, p0, Lcom/m0narx/tweaks/widgets/Misc$2;->val$action:I

    iget v2, p0, Lcom/m0narx/tweaks/widgets/Misc$2;->val$action:I

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->getHeaderMsg(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;II)V

    iget v0, p0, Lcom/m0narx/tweaks/widgets/Misc$2;->val$action:I

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    return-void
.end method
