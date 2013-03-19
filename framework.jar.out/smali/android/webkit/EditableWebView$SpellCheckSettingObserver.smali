.class Landroid/webkit/EditableWebView$SpellCheckSettingObserver;
.super Landroid/database/ContentObserver;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpellCheckSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method public constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 1
    .parameter

    .prologue
    .line 4431
    iput-object p1, p0, Landroid/webkit/EditableWebView$SpellCheckSettingObserver;->this$0:Landroid/webkit/EditableWebView;

    .line 4432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4433
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 4437
    iget-object v1, p0, Landroid/webkit/EditableWebView$SpellCheckSettingObserver;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, v1, Landroid/webkit/EditableWebView;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    .line 4438
    .local v0, spellCheckerActivated:Z
    iget-object v1, p0, Landroid/webkit/EditableWebView$SpellCheckSettingObserver;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->isSessionActive()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4439
    iget-object v1, p0, Landroid/webkit/EditableWebView$SpellCheckSettingObserver;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->resetSession()V

    .line 4441
    :cond_0
    const-string v1, "KENLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpellCheckSettingObserver# enabled# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    return-void
.end method
