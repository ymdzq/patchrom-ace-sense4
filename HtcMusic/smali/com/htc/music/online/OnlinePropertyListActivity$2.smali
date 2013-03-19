.class Lcom/htc/music/online/OnlinePropertyListActivity$2;
.super Ljava/lang/Object;
.source "OnlinePropertyListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/OnlinePropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/OnlinePropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/OnlinePropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/music/online/OnlinePropertyListActivity$2;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 140
    iget-object v3, p0, Lcom/htc/music/online/OnlinePropertyListActivity$2;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    #getter for: Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/music/online/OnlinePropertyListActivity;->access$100(Lcom/htc/music/online/OnlinePropertyListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;

    .line 141
    .local v0, holder:Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;
    iget-object v2, v0, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;->value:Ljava/lang/String;

    .line 142
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/online/OnlinePropertyListActivity$2;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    #calls: Lcom/htc/music/online/OnlinePropertyListActivity;->isLocationItem(Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;)Z
    invoke-static {v3, v0}, Lcom/htc/music/online/OnlinePropertyListActivity;->access$200(Lcom/htc/music/online/OnlinePropertyListActivity;Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/music/online/OnlinePropertyListActivity$2;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    invoke-virtual {v3, v1}, Lcom/htc/music/online/OnlinePropertyListActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
