.class public Lcom/m0narx/tweaks/autobrightness_settings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "autobrightness_settings.java"


# instance fields
.field private final AB_MODE_LOWER:Ljava/lang/String;

.field private final AB_MODE_LOWEST:Ljava/lang/String;

.field private final AB_MODE_MANUAL:Ljava/lang/String;

.field private final AB_MODE_NORMAL:Ljava/lang/String;

.field private Cr:Landroid/content/ContentResolver;

.field private PROFILE_LOWER:Ljava/lang/String;

.field private PROFILE_LOWEST:Ljava/lang/String;

.field private PROFILE_NORMAL:Ljava/lang/String;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private final RES_DEFAULT:I

.field private final RES_SENSOR:I

.field private lightSensor:Landroid/hardware/Sensor;

.field private listener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorVals:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    const v0, 0x1070026

    iput v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->RES_DEFAULT:I

    const v0, 0x1070025

    iput v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->RES_SENSOR:I

    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_NORMAL:Ljava/lang/String;

    const-string v0, "36,36,36,70,97,122,150,178,207,255"

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_LOWER:Ljava/lang/String;

    const-string v0, "16,16,16,50,77,102,130,158,187,255"

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_LOWEST:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->AB_MODE_NORMAL:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->AB_MODE_LOWER:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->AB_MODE_LOWEST:Ljava/lang/String;

    const-string v0, "3"

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->AB_MODE_MANUAL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/autobrightness_settings;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/autobrightness_settings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_LOWER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/autobrightness_settings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_LOWEST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/autobrightness_settings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/autobrightness_settings;->refreshProfiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/autobrightness_settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/autobrightness_settings;->refreshSliders()V

    return-void
.end method

.method private getStringFromIntArrayRes(I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/m0narx/tweaks/autobrightness_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const-string v2, ""

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    return-object v2

    :cond_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private refreshProfiles(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "brightness_presets"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    const-string v2, "sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_autobrightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

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
    iget-object v2, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_LOWER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_LOWEST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    const-string v2, "sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSliders()V
    .locals 3

    iget-object v1, p0, Lcom/m0narx/tweaks/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_autobrightness"

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

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_NORMAL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/autobrightness_settings;->setSlidersByString(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/autobrightness_settings;->setSlidersByString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSlidersByString(Ljava/lang/String;)V
    .locals 4

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "level_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setProgress(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "level_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0116

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarText(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/autobrightness_settings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/autobrightness_settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v0, Lcom/m0narx/tweaks/autobrightness_settings$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/autobrightness_settings$1;-><init>(Lcom/m0narx/tweaks/autobrightness_settings;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/autobrightness_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/m0narx/tweaks/autobrightness_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->sensorVals:[I

    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "brightness_presets"

    const-string v2, ""

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0xa

    if-lt v6, v0, :cond_0

    const v0, 0x1070026

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/autobrightness_settings;->getStringFromIntArrayRes(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_NORMAL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/autobrightness_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/autobrightness_settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->lightSensor:Landroid/hardware/Sensor;

    new-instance v0, Lcom/m0narx/tweaks/autobrightness_settings$2;

    invoke-direct {v0, p0, v7}, Lcom/m0narx/tweaks/autobrightness_settings$2;-><init>(Lcom/m0narx/tweaks/autobrightness_settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->listener:Landroid/hardware/SensorEventListener;

    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/m0narx/tweaks/autobrightness_settings;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/m0narx/tweaks/autobrightness_settings;->lightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-direct {p0}, Lcom/m0narx/tweaks/autobrightness_settings;->refreshSliders()V

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/autobrightness_settings;->refreshProfiles(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->sensorVals:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "level_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/m0narx/tweaks/autobrightness_settings;->sensorVals:[I

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/m0narx/tweaks/autobrightness_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "level_"

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

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "level_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const v1, 0x7f0a015d

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/m0narx/tweaks/autobrightness_settings;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/m0narx/tweaks/autobrightness_settings;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/m0narx/tweaks/autobrightness_settings;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/m0narx/tweaks/autobrightness_settings;->lightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method
