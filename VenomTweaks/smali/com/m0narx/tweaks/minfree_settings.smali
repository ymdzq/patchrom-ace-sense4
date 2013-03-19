.class public Lcom/m0narx/tweaks/minfree_settings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "minfree_settings.java"


# static fields
.field public static mActivity:Landroid/app/Activity;


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private final MANUAL:Ljava/lang/String;

.field private final MT:Ljava/lang/String;

.field private final MTU:Ljava/lang/String;

.field private final MTX:Ljava/lang/String;

.field private final PAGE_SIZE:I

.field private PROFILE_MT:Ljava/lang/String;

.field private PROFILE_MTU:Ljava/lang/String;

.field private PROFILE_MTX:Ljava/lang/String;

.field private PROFILE_S:Ljava/lang/String;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private final STOCK:Ljava/lang/String;

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/minfree_settings;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    const-string v0, "6348,8089,9830,11878,13619,16793"

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_S:Ljava/lang/String;

    const-string v0, "2560,4096,6144,7680,8704,10240"

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MT:Ljava/lang/String;

    const-string v0, "1536,2048,3584,5120,8704,10240"

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MTX:Ljava/lang/String;

    const-string v0, "512,1024,1280,2048,3072,4096"

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MTU:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->STOCK:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->MT:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->MTX:Ljava/lang/String;

    const-string v0, "3"

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->MTU:Ljava/lang/String;

    const-string v0, "4"

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->MANUAL:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PAGE_SIZE:I

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/minfree_settings;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/minfree_settings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/minfree_settings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/minfree_settings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MTX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/minfree_settings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MTU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/minfree_settings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/minfree_settings;->refreshProfiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/minfree_settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/minfree_settings;->refreshSliders()V

    return-void
.end method

.method static synthetic access$7(Lcom/m0narx/tweaks/minfree_settings;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$8(Lcom/m0narx/tweaks/minfree_settings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/minfree_settings;->setMinfreeValues(Ljava/lang/String;)V

    return-void
.end method

.method private refreshProfiles(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "minfree_presets"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    const-string v2, "minfree_sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_minfree"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "minfree_sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MTX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MTU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    const-string v2, "minfree_sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSliders()V
    .locals 4

    iget-object v1, p0, Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_minfree"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/minfree_settings;->setSlidersByString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_minfree"

    iget-object v3, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/m0narx/tweaks/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/minfree_settings;->setMinfreeValues(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/minfree_settings;->setSlidersByString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMinfreeValues(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private setSlidersByString(Ljava/lang/String;)V
    .locals 8

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit16 v1, v3, 0x400

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "value_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    invoke-virtual {v3, v1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setProgress(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "value_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    iget-object v4, p0, Lcom/m0narx/tweaks/minfree_settings;->res:Landroid/content/res/Resources;

    const v5, 0x7f0a0150

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v1, 0x7f0a0147

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarText(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/minfree_settings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/minfree_settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/minfree_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->res:Landroid/content/res/Resources;

    new-instance v0, Lcom/m0narx/tweaks/minfree_settings$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/minfree_settings$1;-><init>(Lcom/m0narx/tweaks/minfree_settings;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarText(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    iget-object v0, p0, Lcom/m0narx/tweaks/minfree_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "minfree_presets"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x0

    :goto_0
    const/4 v0, 0x6

    if-lt v6, v0, :cond_0

    invoke-direct {p0}, Lcom/m0narx/tweaks/minfree_settings;->refreshSliders()V

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/minfree_settings;->refreshProfiles(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/minfree_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "value_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v6, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "seekbar"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
