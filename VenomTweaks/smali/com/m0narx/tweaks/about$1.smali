.class Lcom/m0narx/tweaks/about$1;
.super Ljava/lang/Object;
.source "about.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;


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

    iput-object p1, p0, Lcom/m0narx/tweaks/about$1;->this$0:Lcom/m0narx/tweaks/about;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6

    const-string v1, ""

    packed-switch p3, :pswitch_data_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://forum.xda-developers.com/member.php?u="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://forum.xda-developers.com/donatetome.php?u="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/about$1;->this$0:Lcom/m0narx/tweaks/about;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/about;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x0

    return v2

    :pswitch_0
    const-string v1, "1016148"

    goto :goto_0

    :pswitch_1
    const-string v1, "1930589"

    goto :goto_0

    :pswitch_2
    const-string v1, "2229548"

    goto :goto_0

    :pswitch_3
    const-string v1, "763428"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
