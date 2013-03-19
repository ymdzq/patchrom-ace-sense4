.class Lcom/htc/music/LandingPageActivity$LaunchItem;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchItem"
.end annotation


# instance fields
.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconId:I

.field mIsCustApp:Z

.field mIsInnerItem:Z

.field mIsSoundHound:Z

.field mItemType:I

.field mLaunchIntent:Landroid/content/Intent;

.field private mLaunchItemClickListener:Landroid/view/View$OnClickListener;

.field private mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

.field mName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 398
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$1;-><init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemClickListener:Landroid/view/View$OnClickListener;

    .line 353
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$2;-><init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 373
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem$3;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$3;-><init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 399
    iput v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIconId:I

    .line 400
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 401
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    .line 402
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    .line 403
    iput-boolean v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    .line 404
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    .line 405
    iput-boolean v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsSoundHound:Z

    .line 406
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    .line 408
    iput-boolean v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsCustApp:Z

    .line 410
    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->isCustApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setInnerItemEnable(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setIsCustApp(Z)V

    return-void
.end method

.method private getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getIconId()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIconId:I

    return v0
.end method

.method private getItemType()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    return v0
.end method

.method private getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private getOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private isCustApp()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsCustApp:Z

    return v0
.end method

.method private isInnerItem()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    return v0
.end method

.method private isSoundHound()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsSoundHound:Z

    return v0
.end method

.method private setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemClickListener:Landroid/view/View$OnClickListener;

    .line 446
    return-void
.end method

.method private setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 417
    iput p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIconId:I

    .line 418
    return-void
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 414
    return-void
.end method

.method private setInnerItemEnable(Z)V
    .locals 0
    .parameter "isInnerItem"

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    .line 470
    return-void
.end method

.method private setIsCustApp(Z)V
    .locals 0
    .parameter "isCustApp"

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsCustApp:Z

    .line 503
    return-void
.end method

.method private setItemType(I)V
    .locals 0
    .parameter "itemType"

    .prologue
    .line 477
    iput p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    .line 478
    return-void
.end method

.method private setLaunchIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "launchIntent"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    .line 438
    return-void
.end method

.method private setLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 454
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    .line 430
    return-void
.end method

.method private setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 462
    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    .line 494
    return-void
.end method

.method private setSoundHoundEnable(Z)V
    .locals 0
    .parameter "isSoundHound"

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsSoundHound:Z

    .line 486
    return-void
.end method


# virtual methods
.method public startIntent()V
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 246
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    #calls: Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/htc/music/LandingPageActivity;->access$000(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_1
    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/LandingPageActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, anfEx:Landroid/content/ActivityNotFoundException;
    const-string v1, "[LandingPage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
