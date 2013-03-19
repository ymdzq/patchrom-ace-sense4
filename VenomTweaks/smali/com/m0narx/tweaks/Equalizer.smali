.class public Lcom/m0narx/tweaks/Equalizer;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;,
        Lcom/m0narx/tweaks/Equalizer$ViewHolder;
    }
.end annotation


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private CurLevels:[Ljava/lang/Integer;

.field private DEFAULT:Ljava/lang/String;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private abList:Lcom/htc/widget/ActionBarDropDown;

.field private mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    const-string v0, "0,0,0,0,0,0,0,0,0,0"

    iput-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->DEFAULT:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/Equalizer;)Lcom/htc/widget/ActionBarDropDown;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/Equalizer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/Equalizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->initCurrentValues()V

    return-void
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/Equalizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->setSlidersToCurrent()V

    return-void
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/Equalizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->reset()V

    return-void
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/Equalizer;)[Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/Equalizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->apply()V

    return-void
.end method

.method private apply()V
    .locals 4

    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_custom_eq"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fillEqs()V
    .locals 3

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a0195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5,4,4,1,0,2,2,3,5,6"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a0197

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0,3,3,5,6,0,0,0,0,0"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a0196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0,0,0,0,2,5,3,4,0,0"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a0198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0,0,0,0,0,0,0,6,3,0"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a0199

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2,2,0,3,2,2,4,4,3,4"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a019a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3,6,6,2,-2,1,3,3,3,4"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a019b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0,2,4,3,2,1,-1,0,0,1"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a019c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3,3,0,0,-1,-2,-1,1,4,4"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a019d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1,0,2,1,0,0,0,0,-1,-4"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a019e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-1,0,0,2,2,0,0,0,4,4"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a019f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6,3,4,3,-1,4,5,3,3,4"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a01a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3,3,0,0,-1,-2,-1,1,4,5"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a01a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0,4,4,0,0,0,0,0,0,0"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a01a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2,2,0,3,2,2,3,4,3,4"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a01a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-2,-1,0,2,4,4,2,0,-1,-2"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a01a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3,6,6,2,-2,1,3,3,3,4"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    const v1, 0x7f0a01a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3,6,9,2,-4,2,3,3,4,6"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private initCurrentValues()V
    .locals 7

    const/16 v6, 0xa

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_custom_eq"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "m0narX_tweaks"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loaded eq: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/Equalizer;->DEFAULT:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-eq v3, v6, :cond_1

    iget-object v1, p0, Lcom/m0narx/tweaks/Equalizer;->DEFAULT:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-array v3, v6, [Ljava/lang/Integer;

    iput-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v6, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_eq"

    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer;->DEFAULT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->initCurrentValues()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->setSlidersToCurrent()V

    return-void
.end method

.method private setActionHtcBar()V
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/Equalizer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    invoke-virtual {v1, v5}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    new-instance v3, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v3, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;

    new-instance v4, Lcom/m0narx/tweaks/Equalizer$1;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/Equalizer$1;-><init>(Lcom/m0narx/tweaks/Equalizer;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/widget/ActionBarContainer;->setRightDividerEnabled(Z)V

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    const v3, 0x20801c8

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    const v3, 0x2040335

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    new-instance v3, Lcom/m0narx/tweaks/Equalizer$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/Equalizer$2;-><init>(Lcom/m0narx/tweaks/Equalizer;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    return-void
.end method

.method private setSecondaryByCurrent()V
    .locals 4

    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;

    const v3, 0x7f0a01a6

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    :goto_2
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;

    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqName:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setSlidersToCurrent()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "level_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Equalizer;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setProgress(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "level_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Equalizer;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->setActionHtcBar()V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f0a0193

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    new-instance v0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;-><init>(Lcom/m0narx/tweaks/Equalizer;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->fillEqs()V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/m0narx/tweaks/Equalizer;->mDropDownAdapter:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/Equalizer;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/Equalizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->Cr:Landroid/content/ContentResolver;

    new-instance v0, Lcom/m0narx/tweaks/Equalizer$3;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/Equalizer$3;-><init>(Lcom/m0narx/tweaks/Equalizer;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/Equalizer;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0xa

    if-lt v6, v0, :cond_0

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->initCurrentValues()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->setSlidersToCurrent()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/Equalizer;->setSecondaryByCurrent()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/Equalizer;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "level_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "seekbar"

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
