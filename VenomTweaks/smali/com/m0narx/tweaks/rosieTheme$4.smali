.class Lcom/m0narx/tweaks/rosieTheme$4;
.super Ljava/lang/Object;
.source "rosieTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/rosieTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/rosieTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/rosieTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/rosieTheme$4;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme$4;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/rosieTheme;->finish()V

    return-void
.end method