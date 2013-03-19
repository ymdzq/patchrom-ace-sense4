.class Lcom/m0narx/tweaks/customizeRosieTheme$3;
.super Ljava/lang/Object;
.source "customizeRosieTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/customizeRosieTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/customizeRosieTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/customizeRosieTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$3;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$3;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/customizeRosieTheme;->finish()V

    return-void
.end method
