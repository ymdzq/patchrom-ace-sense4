.class Lcom/htc/music/online/OnlinePropertyListActivity$1;
.super Landroid/widget/BaseAdapter;
.source "OnlinePropertyListActivity.java"


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
    .line 86
    iput-object p1, p0, Lcom/htc/music/online/OnlinePropertyListActivity$1;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/music/online/OnlinePropertyListActivity$1;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    #getter for: Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/music/online/OnlinePropertyListActivity;->access$100(Lcom/htc/music/online/OnlinePropertyListActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/htc/music/online/OnlinePropertyListActivity$1;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    #getter for: Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/music/online/OnlinePropertyListActivity;->access$100(Lcom/htc/music/online/OnlinePropertyListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 94
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 112
    iget-object v6, p0, Lcom/htc/music/online/OnlinePropertyListActivity$1;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    invoke-virtual {v6}, Lcom/htc/music/online/OnlinePropertyListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    :cond_0
    const v6, 0x7f080025

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem2LineText;

    move-object v1, v6

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 117
    .local v1, listItemText:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v6, p0, Lcom/htc/music/online/OnlinePropertyListActivity$1;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    #getter for: Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;
    invoke-static {v6}, Lcom/htc/music/online/OnlinePropertyListActivity;->access$100(Lcom/htc/music/online/OnlinePropertyListActivity;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 118
    iget-object v6, p0, Lcom/htc/music/online/OnlinePropertyListActivity$1;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    #getter for: Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;
    invoke-static {v6}, Lcom/htc/music/online/OnlinePropertyListActivity;->access$100(Lcom/htc/music/online/OnlinePropertyListActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;

    .line 119
    .local v0, holder:Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;
    iget-object v3, v0, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;->title:Ljava/lang/String;

    .line 120
    .local v3, title:Ljava/lang/String;
    iget-object v5, v0, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;->value:Ljava/lang/String;

    .line 123
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/htc/music/online/OnlinePropertyListActivity$1;->this$0:Lcom/htc/music/online/OnlinePropertyListActivity;

    #calls: Lcom/htc/music/online/OnlinePropertyListActivity;->isLocationItem(Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;)Z
    invoke-static {v6, v0}, Lcom/htc/music/online/OnlinePropertyListActivity;->access$200(Lcom/htc/music/online/OnlinePropertyListActivity;Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 127
    .local v4, urlTextView:Landroid/widget/TextView;
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 128
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    .local v2, sp:Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/URLSpan;

    invoke-direct {v6, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 130
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .end local v0           #holder:Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;
    .end local v2           #sp:Landroid/text/SpannableString;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #urlTextView:Landroid/widget/TextView;
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    return-object p2
.end method
