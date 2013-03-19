.class Lcom/m0narx/tweaks/about$2;
.super Ljava/lang/Object;
.source "about.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/about;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/about;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/about;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/about$2;->this$0:Lcom/m0narx/tweaks/about;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IJ)Z
    .locals 4

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    :goto_0
    const/4 v2, 0x1

    return v2

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/about$2;->this$0:Lcom/m0narx/tweaks/about;

    const-class v3, Lcom/m0narx/tweaks/settings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/about$2;->this$0:Lcom/m0narx/tweaks/about;

    invoke-virtual {v2, v1}, Lcom/m0narx/tweaks/about;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->getDonationAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/about$2;->this$0:Lcom/m0narx/tweaks/about;

    invoke-virtual {v2, v0}, Lcom/m0narx/tweaks/about;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
