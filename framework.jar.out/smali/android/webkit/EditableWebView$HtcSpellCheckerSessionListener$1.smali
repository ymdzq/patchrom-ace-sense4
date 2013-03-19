.class Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener$1;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 4401
    iput-object p1, p0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener$1;->this$1:Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4404
    iget-object v0, p0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener$1;->this$1:Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 4405
    iget-object v0, p0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener$1;->this$1:Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    .line 4406
    return-void
.end method
