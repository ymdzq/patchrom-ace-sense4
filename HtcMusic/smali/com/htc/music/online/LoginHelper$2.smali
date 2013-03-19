.class Lcom/htc/music/online/LoginHelper$2;
.super Ljava/lang/Object;
.source "LoginHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/LoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/LoginHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/online/LoginHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/music/online/LoginHelper$2;->this$0:Lcom/htc/music/online/LoginHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper$2;->this$0:Lcom/htc/music/online/LoginHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/music/online/LoginHelper;->gotoLogin(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/htc/music/online/LoginHelper;->access$100(Lcom/htc/music/online/LoginHelper;Landroid/content/Context;)V

    .line 184
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper$2;->this$0:Lcom/htc/music/online/LoginHelper;

    #getter for: Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/music/online/LoginHelper;->access$200(Lcom/htc/music/online/LoginHelper;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/music/online/LoginHelper$2;->this$0:Lcom/htc/music/online/LoginHelper;

    #getter for: Lcom/htc/music/online/LoginHelper;->loginButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/music/online/LoginHelper;->access$200(Lcom/htc/music/online/LoginHelper;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "[LoginHelper]"

    const-string v1, "loginButton is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
