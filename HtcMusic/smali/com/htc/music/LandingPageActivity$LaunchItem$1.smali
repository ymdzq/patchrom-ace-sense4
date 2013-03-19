.class Lcom/htc/music/LandingPageActivity$LaunchItem$1;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity$LaunchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkCustomApp()V
    .locals 6

    .prologue
    .line 294
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v5, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v5, v5, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    #setter for: Lcom/htc/music/LandingPageActivity;->mClickedName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/music/LandingPageActivity;->access$202(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v5, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v5, v5, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    #setter for: Lcom/htc/music/LandingPageActivity;->mClickedPackageName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/music/LandingPageActivity;->access$302(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v5, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v5, v5, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/LandingPageActivity;->access$400(Lcom/htc/music/LandingPageActivity;)[Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/htc/music/LandingPageActivity;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/music/LandingPageActivity;->access$500(Lcom/htc/music/LandingPageActivity;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, custStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mCustomizationList:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$400(Lcom/htc/music/LandingPageActivity;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 301
    .local v1, isCustomizationApp:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 302
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v4}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 303
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 304
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 305
    .local v2, launchIntent:Landroid/content/Intent;
    if-nez v2, :cond_2

    .line 306
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v5, 0x3

    #calls: Lcom/htc/music/LandingPageActivity;->showNewDialog(I)V
    invoke-static {v4, v5}, Lcom/htc/music/LandingPageActivity;->access$600(Lcom/htc/music/LandingPageActivity;I)V

    .line 312
    .end local v2           #launchIntent:Landroid/content/Intent;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return-void

    .line 298
    .end local v1           #isCustomizationApp:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 308
    .restart local v1       #isCustomizationApp:Z
    .restart local v2       #launchIntent:Landroid/content/Intent;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iput-object v2, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method private checkDisabledApp()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x1

    .line 315
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 317
    .local v0, isApp:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 332
    :cond_1
    :goto_1
    return-void

    .line 315
    .end local v0           #isApp:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    .restart local v0       #isApp:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    #setter for: Lcom/htc/music/LandingPageActivity;->mClickedName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/LandingPageActivity;->access$202(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v4, v4, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    #setter for: Lcom/htc/music/LandingPageActivity;->mClickedPackageName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/LandingPageActivity;->access$302(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v3}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 324
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 325
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 326
    .local v1, launchIntent:Landroid/content/Intent;
    if-nez v1, :cond_4

    .line 327
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->showNewDialog(I)V
    invoke-static {v3, v5}, Lcom/htc/music/LandingPageActivity;->access$700(Lcom/htc/music/LandingPageActivity;I)V

    goto :goto_1

    .line 329
    :cond_4
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iput-object v1, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method private startIntentInternal()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget v0, v0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    packed-switch v0, :pswitch_data_0

    .line 345
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-virtual {v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->startIntent()V

    .line 346
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/LandingPageActivity;->mbIsItemClicked:Z
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$102(Lcom/htc/music/LandingPageActivity;Z)Z

    .line 349
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    #setter for: Lcom/htc/music/LandingPageActivity;->mClickedItem:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$802(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/LandingPageActivity$LaunchItem;)Lcom/htc/music/LandingPageActivity$LaunchItem;

    .line 341
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/music/online/Util;->doDataFeeCheck(Landroid/app/Activity;I)V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mbIsItemClicked:Z
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$100(Lcom/htc/music/LandingPageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/LandingPageActivity;->mbIsItemClicked:Z
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$102(Lcom/htc/music/LandingPageActivity;Z)Z

    .line 266
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->checkDisabledApp()V

    .line 267
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->startIntentInternal()V

    goto :goto_0
.end method
