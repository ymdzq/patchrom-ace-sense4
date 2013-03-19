.class Lcom/m0narx/tweaks/widgets/themePicker$2;
.super Ljava/lang/Object;
.source "themePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/themePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/themePicker;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/themePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/themePicker$2;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$2;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/themePicker;->finish()V

    return-void
.end method
