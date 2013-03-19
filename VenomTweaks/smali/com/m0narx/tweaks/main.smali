.class public Lcom/m0narx/tweaks/main;
.super Lcom/htc/widget/CarouselActivity;
.source "main.java"


# static fields
.field public static AppTitle:Ljava/lang/String; = null

.field public static final DONATION_APP_NAME:Ljava/lang/String; = "com.m0narx.ViperSPro"

.field public static final DONATION_DIALOG_ENABLED:Z = true

.field public static final DONATION_DIALOG_SECONDS:I = 0x5

.field public static mActionButton:Lcom/htc/widget/ActionBarItemView;

.field public static mActionText:Lcom/htc/widget/ActionBarText;

.field public static mActivity:Landroid/app/Activity;

.field public static showed:Z

.field public static versionName:Ljava/lang/String;


# instance fields
.field private donation:Lcom/htc/widget/HtcAlertDialog;

.field private handler:Landroid/os/Handler;

.field private timer:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/main;->versionName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/m0narx/tweaks/main;->showed:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/main;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "com.m0narx.tweaks.provider.Carousel"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/m0narx/tweaks/main$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/main$1;-><init>(Lcom/m0narx/tweaks/main;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->timer:Ljava/lang/Runnable;

    new-instance v0, Lcom/m0narx/tweaks/main$2;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/main$2;-><init>(Lcom/m0narx/tweaks/main;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->handler:Landroid/os/Handler;

    return-void
.end method

.method private SetupActionBar()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    move-object v1, v0

    check-cast v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    move-object v1, v0

    check-cast v1, Lcom/htc/widget/ActionBarExt;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    sget-object v1, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    sget-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    check-cast v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarContainer;->setRightDividerEnabled(Z)V

    move-object v1, v0

    check-cast v1, Lcom/htc/widget/ActionBarContainer;

    sget-object v2, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    new-instance v1, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    sget-object v1, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v2, 0x7f020020

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    sget-object v1, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    check-cast v0, Lcom/htc/widget/ActionBarContainer;

    sget-object v1, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/main;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/main;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f02001a

    const v11, 0x7f020019

    const v10, 0x7f020018

    const v9, 0x7f020017

    const v8, 0x7f020016

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/main;->setGId(I)V

    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/m0narx/tweaks/main;->mActivity:Landroid/app/Activity;

    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Runned on Sense "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_Sense_Version()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ro.product.version"

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    sget-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    sput-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    const-string v2, "Viper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->finish()V

    :cond_1
    invoke-direct {p0}, Lcom/m0narx/tweaks/main;->SetupActionBar()V

    const-string v1, "About"

    const v3, 0x7f0a001c

    const v4, 0x7f02001d

    const v5, 0x7f02001d

    const v6, 0x7f02001d

    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.m0narx.tweaks.about"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V


    const-string v1, "Buttons"

    const v3, 0x7f0a0022

    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.m0narx.tweaks.buttons"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    const-string v1, "Misc"

    const v3, 0x7f0a0021

    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.m0narx.tweaks.misc"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move v4, v12

    move v5, v12

    move v6, v12

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    const-string v1, "Advanced"

    const v3, 0x7f0a0024

    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.m0narx.tweaks.advanced"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move v4, v8

    move v5, v8

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/m0narx/tweaks/widgets/Reboot;->showDialog(Landroid/content/Context;)V

    return-void
.end method
