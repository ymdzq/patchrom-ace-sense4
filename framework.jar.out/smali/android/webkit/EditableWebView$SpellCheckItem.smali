.class Landroid/webkit/EditableWebView$SpellCheckItem;
.super Ljava/lang/Object;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpellCheckItem"
.end annotation


# instance fields
.field mEndIndex:I

.field mIsLooksLikeTypo:Z

.field mNode:I

.field mStartIndex:I

.field mWord:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method public constructor <init>(Landroid/webkit/EditableWebView;Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter "word"
    .parameter "node"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 199
    iput-object p1, p0, Landroid/webkit/EditableWebView$SpellCheckItem;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Landroid/webkit/EditableWebView$SpellCheckItem;->mWord:Ljava/lang/String;

    .line 201
    iput p3, p0, Landroid/webkit/EditableWebView$SpellCheckItem;->mNode:I

    .line 202
    iput p4, p0, Landroid/webkit/EditableWebView$SpellCheckItem;->mStartIndex:I

    .line 203
    iput p5, p0, Landroid/webkit/EditableWebView$SpellCheckItem;->mEndIndex:I

    .line 204
    return-void
.end method
