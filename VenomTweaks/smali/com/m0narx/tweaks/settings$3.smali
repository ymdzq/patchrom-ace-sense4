.class Lcom/m0narx/tweaks/settings$3;
.super Ljava/lang/Object;
.source "settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/settings;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/settings$3;->this$0:Lcom/m0narx/tweaks/settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/m0narx/tweaks/settings$3;->this$0:Lcom/m0narx/tweaks/settings;

    const/4 v1, 0x1

    const/4 v2, -0x1

    #calls: Lcom/m0narx/tweaks/settings;->SaveProfile(ZI)V
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/settings;->access$4(Lcom/m0narx/tweaks/settings;ZI)V

    return-void
.end method