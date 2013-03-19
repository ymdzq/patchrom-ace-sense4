.class Lcom/m0narx/tweaks/systemuiTheme$2;
.super Ljava/lang/Object;
.source "systemuiTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/systemuiTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/systemuiTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/systemuiTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/systemuiTheme$2;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme$2;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;II)V

    return-void
.end method
