.class Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView$SuggestionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$1:Landroid/webkit/EditableWebView$SuggestionWindow;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView$SuggestionWindow;)V
    .locals 2
    .parameter

    .prologue
    .line 4279
    iput-object p1, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4280
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/EditableWebView;->access$7500(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 4285
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->mNumberOfSuggestions:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 4290
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 4295
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 4300
    move-object/from16 v8, p2

    check-cast v8, Landroid/widget/TextView;

    .line 4302
    .local v8, textView:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 4303
    .local v2, fontStyle:I
    const/4 v3, 0x0

    .line 4304
    .local v3, id:I
    const/4 v4, 0x0

    .line 4305
    .local v4, leftpadding:I
    const/4 v6, 0x0

    .line 4306
    .local v6, rightpadding:I
    const/4 v9, 0x0

    .line 4307
    .local v9, toppadding:I
    const/4 v1, 0x0

    .line 4308
    .local v1, bottompadding:I
    const/4 v5, 0x0

    .line 4310
    .local v5, reset_padding:Z
    if-nez v8, :cond_0

    .line 4311
    iget-object v10, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x10900a5

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .end local v8           #textView:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 4314
    .restart local v8       #textView:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 4315
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 4316
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v9

    .line 4317
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 4318
    const/4 v5, 0x1

    .line 4321
    :cond_0
    iget-object v10, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v10, v10, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;

    .line 4322
    .local v7, suggestion:Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;
    iget-object v10, v7, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4324
    iget v10, v7, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestionIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 4325
    const v10, 0x1080345

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4328
    iget-object v10, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v10, v10, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v10}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "@com.htc:style/list_primary_m_bold"

    const-string/jumbo v12, "style"

    const-string v13, "com.htc"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4329
    if-eqz v2, :cond_1

    .line 4330
    iget-object v10, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v10, v10, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v10}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 4348
    :cond_1
    :goto_0
    iget-object v10, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v10, v10, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v10}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "@com.htc:drawable/common_list_item_background"

    const-string v12, "drawable"

    const-string v13, "com.htc"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 4350
    if-eqz v3, :cond_2

    .line 4351
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4353
    if-eqz v5, :cond_2

    .line 4354
    int-to-double v10, v9

    const-wide v12, 0x3ff6666666666666L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-double v11, v1

    const-wide v13, 0x3ff6666666666666L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    invoke-virtual {v8, v4, v10, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4357
    :cond_2
    return-object v8

    .line 4332
    :cond_3
    iget v10, v7, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestionIndex:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_4

    .line 4333
    const v10, 0x1080346

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4336
    iget-object v10, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v10, v10, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v10}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "@com.htc:style/list_primary_m_bold"

    const-string/jumbo v12, "style"

    const-string v13, "com.htc"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4337
    if-eqz v2, :cond_1

    .line 4338
    iget-object v10, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v10, v10, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v10}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 4341
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4343
    iget-object v10, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v10, v10, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v10}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "@com.htc:style/list_primary_m"

    const-string/jumbo v12, "style"

    const-string v13, "com.htc"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4344
    if-eqz v2, :cond_1

    .line 4345
    iget-object v10, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v10, v10, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v10}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
