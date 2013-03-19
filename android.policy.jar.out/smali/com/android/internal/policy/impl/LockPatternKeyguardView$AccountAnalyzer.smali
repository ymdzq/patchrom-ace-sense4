.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;)V
    .locals 1
    .parameter
    .parameter "accountManager"

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 852
    const-string v0, "com.google"

    invoke-virtual {p2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 853
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 845
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 858
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 879
    :cond_1
    :goto_0
    return-void

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    if-eqz v0, :cond_3

    .line 862
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    goto :goto_0

    .line 865
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$IPatternUnlockScreenCallback;

    if-eqz v0, :cond_4

    .line 866
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$IPatternUnlockScreenCallback;

    .line 867
    .local v6, view:Lcom/android/internal/policy/impl/LockPatternKeyguardView$IPatternUnlockScreenCallback;
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    invoke-interface {v6, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$IPatternUnlockScreenCallback;->setEnableFallback(Z)V

    goto :goto_0

    .line 869
    .end local v6           #view:Lcom/android/internal/policy/impl/LockPatternKeyguardView$IPatternUnlockScreenCallback;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/HtcIfIPatternUnlockScreenCallback;

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/HtcIfIPatternUnlockScreenCallback;

    .line 871
    .local v6, view:Lcom/android/internal/policy/impl/HtcIfIPatternUnlockScreenCallback;
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    invoke-interface {v6, v0}, Lcom/android/internal/policy/impl/HtcIfIPatternUnlockScreenCallback;->setEnableFallback(Z)V

    goto :goto_0

    .line 878
    .end local v6           #view:Lcom/android/internal/policy/impl/HtcIfIPatternUnlockScreenCallback;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 890
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 900
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 901
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    .line 903
    .end local v0           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v1

    .line 900
    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 901
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 895
    :catch_1
    move-exception v1

    .line 900
    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 901
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 897
    :catch_2
    move-exception v1

    .line 900
    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 901
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 900
    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 901
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    throw v1
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 883
    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 884
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    .line 885
    return-void
.end method
