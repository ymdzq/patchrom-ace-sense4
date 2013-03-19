.class Landroid/webkit/WebViewCore$1;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->setScreenOrientationLock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;

.field final synthetic val$containingActivity:Landroid/app/Activity;

.field final synthetic val$orientationValue:I


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Landroid/webkit/WebViewCore$1;->this$0:Landroid/webkit/WebViewCore;

    iput-object p2, p0, Landroid/webkit/WebViewCore$1;->val$containingActivity:Landroid/app/Activity;

    iput p3, p0, Landroid/webkit/WebViewCore$1;->val$orientationValue:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Landroid/webkit/WebViewCore$1;->val$containingActivity:Landroid/app/Activity;

    iget v1, p0, Landroid/webkit/WebViewCore$1;->val$orientationValue:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 416
    return-void
.end method
