.class Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;
.super Ljava/lang/Object;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView$SuggestionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestionItem"
.end annotation


# instance fields
.field mSuggestion:Ljava/lang/String;

.field mSuggestionIndex:I

.field final synthetic this$1:Landroid/webkit/EditableWebView$SuggestionWindow;


# direct methods
.method public constructor <init>(Landroid/webkit/EditableWebView$SuggestionWindow;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "suggestion"
    .parameter "suggestionIndex"

    .prologue
    .line 4273
    iput-object p1, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->this$1:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4274
    iput-object p2, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    .line 4275
    iput p3, p0, Landroid/webkit/EditableWebView$SuggestionWindow$SuggestionItem;->mSuggestionIndex:I

    .line 4276
    return-void
.end method
