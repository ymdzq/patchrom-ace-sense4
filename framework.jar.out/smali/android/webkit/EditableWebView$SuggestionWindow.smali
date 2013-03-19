.class Landroid/webkit/EditableWebView$SuggestionWindow;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestionWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;,
        Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;
    }
.end annotation


# static fields
.field private static final ADD_TO_DICTIONARY:I = -0x1

.field private static final DELETE_TEXT:I = -0x2

.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5


# instance fields
.field mAfterDeleting:Z

.field mContentView:Landroid/view/ViewGroup;

.field mNumberOfSuggestions:I

.field mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field mSuggestionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;",
            ">;"
        }
    .end annotation
.end field

.field mSuggestionsAdapter:Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method public constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 4117
    iput-object p1, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4115
    iput-boolean v8, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mAfterDeleting:Z

    .line 4118
    new-instance v3, Landroid/widget/PopupWindow;

    #getter for: Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/EditableWebView;->access$7000(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1010373

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 4120
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4121
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 4123
    invoke-virtual {p1}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10806fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4124
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4125
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4126
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4127
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4128
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    .line 4132
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 4133
    .local v1, listView:Landroid/widget/ListView;
    new-instance v3, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;-><init>(Landroid/webkit/EditableWebView$SuggestionWindow;)V

    iput-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionsAdapter:Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;

    .line 4134
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionsAdapter:Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4135
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4136
    iput-object v1, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    .line 4138
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4140
    .local v2, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4141
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4142
    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/webkit/EditableWebView$SuggestionWindow$1;

    invoke-direct {v4, p0, p1}, Landroid/webkit/EditableWebView$SuggestionWindow$1;-><init>(Landroid/webkit/EditableWebView$SuggestionWindow;Landroid/webkit/EditableWebView;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 4155
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 4

    .prologue
    .line 4263
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 4268
    :goto_0
    return v2

    .line 4264
    :cond_1
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4265
    .local v0, popupBackground:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    .line 4266
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4267
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4268
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 4260
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 4159
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p3, v2, :cond_0

    .line 4188
    :goto_0
    return-void

    .line 4162
    :cond_0
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;

    .line 4163
    .local v1, item:Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;
    iget v2, v1, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestionIndex:I

    packed-switch v2, :pswitch_data_0

    .line 4180
    const-string v2, "KENLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REPLACE_STRING #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    iget-object v2, v1, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 4182
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget-object v3, v1, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/webkit/EditableWebView;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4187
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 4165
    :pswitch_0
    const-string v2, "KENLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD_TO_DICTIONARY #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mSpellCheckPengingWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4167
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "word"

    iget-object v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget-object v3, v3, Landroid/webkit/EditableWebView;->mSpellCheckPengingWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4168
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4169
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/EditableWebView;->access$1800(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x231

    iget-object v4, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget v4, v4, Landroid/webkit/EditableWebView;->mSCnode:I

    iget-object v5, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget-object v5, v5, Landroid/webkit/EditableWebView;->mSCindex:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 4174
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v2, "KENLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE_TEXT #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mSpellCheckPengingWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mAfterDeleting:Z

    .line 4176
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    const-string v3, ""

    invoke-virtual {v2, v3, v6}, Landroid/webkit/EditableWebView;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 4163
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 4191
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 4199
    :goto_0
    return-void

    .line 4193
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4195
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPositionX:I

    iget v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 4197
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPositionX:I

    iget v4, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public updateDimension()V
    .locals 10

    .prologue
    const/high16 v9, -0x8000

    .line 4231
    iget-object v8, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$7400(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4232
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 4234
    .local v1, horizontalMeasure:I
    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 4237
    .local v5, verticalMeasure:I
    const/4 v7, 0x0

    .line 4238
    .local v7, width:I
    const/4 v6, 0x0

    .line 4239
    .local v6, view:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v8, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mNumberOfSuggestions:I

    if-ge v2, v8, :cond_0

    .line 4240
    iget-object v8, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionsAdapter:Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;

    iget-object v9, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2, v6, v9}, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 4241
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v9, -0x2

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4242
    invoke-virtual {v6, v1, v5}, Landroid/view/View;->measure(II)V

    .line 4243
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4246
    :cond_0
    iget-object v8, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v9, 0x4000

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v9, v5}, Landroid/view/ViewGroup;->measure(II)V

    .line 4250
    iget-object v8, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4251
    .local v3, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 4252
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 4253
    .local v4, rect:Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4254
    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 4256
    .end local v4           #rect:Landroid/graphics/Rect;
    :cond_1
    iget-object v8, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4257
    return-void
.end method

.method public updatePosition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4226
    iput p1, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPositionX:I

    .line 4227
    iput p2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPositionY:I

    .line 4228
    return-void
.end method

.method public updateSuggestions(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4202
    .local p1, suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4203
    const/4 v2, 0x0

    iput v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mNumberOfSuggestions:I

    .line 4205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4206
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4207
    .local v1, suggestion:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    new-instance v3, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;

    invoke-direct {v3, p0, v1, v0}, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;-><init>(Landroid/webkit/EditableWebView$SuggestionWindow;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4208
    iget v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mNumberOfSuggestions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mNumberOfSuggestions:I

    .line 4209
    iget v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mNumberOfSuggestions:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 4213
    .end local v1           #suggestion:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    new-instance v3, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;

    iget-object v4, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/EditableWebView;->access$7200(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;-><init>(Landroid/webkit/EditableWebView$SuggestionWindow;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4215
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionList:Ljava/util/ArrayList;

    new-instance v3, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;

    iget-object v4, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/EditableWebView;->access$7300(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403ac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x2

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;-><init>(Landroid/webkit/EditableWebView$SuggestionWindow;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4217
    iget v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mNumberOfSuggestions:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mNumberOfSuggestions:I

    .line 4219
    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow;->mSuggestionsAdapter:Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionAdapter;->notifyDataSetChanged()V

    .line 4220
    return-void

    .line 4205
    .restart local v1       #suggestion:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
