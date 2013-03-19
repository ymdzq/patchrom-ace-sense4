.class Landroid/webkit/EditableWebView$SuggestionWindow$1;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$SuggestionWindow;-><init>(Landroid/webkit/EditableWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

.field final synthetic val$this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView$SuggestionWindow;Landroid/webkit/EditableWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4142
    iput-object p1, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iput-object p2, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->val$this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4144
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v1, v1, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView;->access$7100(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebViewThemeable;->getHighlightColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/webkit/EditableWebView;->updateSelectionColors(IZ)V

    .line 4145
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-boolean v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->mAfterDeleting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4147
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/WebView;->shortTapOnWebView:Z

    .line 4148
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/EditableWebView;->access$1800(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v1, v1, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, v1, Landroid/webkit/EditableWebView;->mSCcaret:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v2, v2, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget-object v2, v2, Landroid/webkit/EditableWebView;->mSCcaret:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    .line 4150
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iput-boolean v3, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->mAfterDeleting:Z

    .line 4151
    iget-object v0, p0, Landroid/webkit/EditableWebView$SuggestionWindow$1;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 4152
    return-void
.end method
