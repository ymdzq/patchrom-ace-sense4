.class public Landroid/media/SoundEffectHelper;
.super Ljava/lang/Object;
.source "SoundEffectHelper.java"


# static fields
.field private static final AS_NO_EFFECT:Ljava/lang/String; = "global_effect=none"

.field public static final EFFECT_BASS_BOOSTER:I = 0x321

.field public static final EFFECT_BEATS:I = 0x384

.field public static final EFFECT_BLUES:I = 0x324

.field public static final EFFECT_CLASSICAL:I = 0x325

.field public static final EFFECT_COUNTRY:I = 0x326

.field public static final EFFECT_CUSTOM:I = 0x334

.field public static final EFFECT_DANCE:I = 0x32f

.field public static final EFFECT_DOLBY:I = 0x3

.field public static final EFFECT_JAZZ:I = 0x327

.field public static final EFFECT_LATIN:I = 0x328

.field public static final EFFECT_LIVE:I = 0x32e

.field public static final EFFECT_NEWADGE:I = 0x329

.field public static final EFFECT_NONE:I = 0x320

.field public static final EFFECT_PIANO:I = 0x32a

.field public static final EFFECT_POP:I = 0x32b

.field public static final EFFECT_RNB:I = 0x32c

.field public static final EFFECT_ROCK:I = 0x32d

.field public static final EFFECT_SRS:I = 0x2

.field public static final EFFECT_SWEET:I = 0x331

.field public static final EFFECT_TREBLE:I = 0x322

.field public static final EFFECT_VOCAL:I = 0x323

.field public static final EFFECT_VOICE:I = 0x335

.field public static final EFFECT_WARMTH:I = 0x330

.field public static EqualizerStylesFromDevice:[Ljava/lang/String; = null

.field public static final OTHER_HEADSET:I = 0x3f2

.field public static final OTHER_HEADSET_STR:Ljava/lang/String; = "others"

.field public static final PRO_BEATS_HEADSET:I = 0x3eb

.field public static final PRO_BEATS_HEADSET_STR:Ljava/lang/String; = "beats_pro"

.field public static final SET_HEADSET:Ljava/lang/String; = "global_headset_profile="

.field public static final SOLO_BEATS_HEADSET:I = 0x3e9

.field public static final SOLO_BEATS_HEADSET_STR:Ljava/lang/String; = "beats_solo"

.field public static final SOUNDEFFECT_STYLE_BEATS:Ljava/lang/String; = "Beats"

.field public static final SOUNDEFFECT_STYLE_CUSTOM:Ljava/lang/String; = "Custom"

.field public static final SOUNDEFFECT_STYLE_DOLBY:Ljava/lang/String; = "Dolby"

.field public static final SOUNDEFFECT_STYLE_EQ:Ljava/lang/String; = "Equalizer"

.field public static final SOUNDEFFECT_STYLE_ORIGINAL:Ljava/lang/String; = "Original"

.field public static final SOUNDEFFECT_STYLE_SRS:Ljava/lang/String; = "SRS"

.field public static final SOUNDEFFECT_STYLE_VOICE:Ljava/lang/String; = "Voice"

.field private static final SRS_PARAMETERS:Ljava/lang/String; = "srsfx_sidechain="

.field private static final SRS_PARAMETERS_EQ:Ljava/lang/String; = ",geq10"

.field private static final SRS_PARAMETERS_HTC51:Ljava/lang/String; = ",trumedia,/system/etc/soundimage/srsfx_trumedia_51.cfg"

.field private static final SRS_PARAMETERS_SRS:Ljava/lang/String; = ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

.field private static final SRS_PARAMETERS_VOICE:Ljava/lang/String; = ",trumedia,/system/etc/soundimage/srsfx_trumedia_voice.cfg"

.field public static final STUDIO_BEATS_HEADSET:I = 0x3ea

.field public static final STUDIO_BEATS_HEADSET_STR:Ljava/lang/String; = "beats_studio"

.field private static final TAG:Ljava/lang/String; = "m0narX_sound"

.field public static final UR_BEATS_HEADSET:I = 0x3e8

.field public static final UR_BEATS_HEADSET_STR:Ljava/lang/String; = "beats_urbeats"

.field private static mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mBeats:Landroid/media/audiofx/BassEnhance;

.field private static mCurrentSessionID:I

.field private static mCustom:Landroid/media/audiofx/Equalizer;

.field private static mDolby:Landroid/media/audiofx/BassBoost;

.field private static mEqualizer:Landroid/media/audiofx/Equalizer;

.field private static mSRS:Landroid/media/audiofx/BassBoost;

.field private static mVoice:Landroid/media/audiofx/BassBoost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    sput-object v0, Landroid/media/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroid/media/SoundEffectHelper;->refreshCustomEQ(Landroid/content/Context;)V

    return-void
.end method

.method public static disable()V
    .locals 1

    const-string v0, "SRS"

    invoke-static {v0}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v0, "Dolby"

    invoke-static {v0}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v0, "Voice"

    invoke-static {v0}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v0, "Equalizer"

    invoke-static {v0}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v0, "Beats"

    invoke-static {v0}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v0, "global_effect=none"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private static disable(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "SRS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    sget-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->release()V

    const/4 v1, 0x0

    sput-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "m0narX_sound"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disabled "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    const-string v1, "Beats"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/media/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/media/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassEnhance;->setEnabled(Z)I

    sget-object v1, Landroid/media/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v1}, Landroid/media/audiofx/BassEnhance;->release()V

    const/4 v1, 0x0

    sput-object v1, Landroid/media/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "Equalizer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_4

    sget-object v1, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    sget-object v1, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->release()V

    const/4 v1, 0x0

    sput-object v1, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "Dolby"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_5

    sget-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    sget-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->release()V

    const/4 v1, 0x0

    sput-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "Voice"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_6

    sget-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    sget-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->release()V

    const/4 v1, 0x0

    sput-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v1, "Custom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    sget-object v1, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->release()V

    const/4 v1, 0x0

    sput-object v1, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private static getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getIdFromString(Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "m0narX_sound"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requsted id for name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Original"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    :goto_0
    return v0

    :cond_0
    const-string v0, "Beats"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x384

    goto :goto_0

    :cond_1
    const-string v0, "SRS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "Dolby"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "Voice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x335

    goto :goto_0

    :cond_4
    const-string v0, "Bass Booster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x321

    goto :goto_0

    :cond_5
    const-string v0, "Treble Booster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x322

    goto :goto_0

    :cond_6
    const-string v0, "Vocal Booster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x323

    goto :goto_0

    :cond_7
    const-string v0, "Blues"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x324

    goto :goto_0

    :cond_8
    const-string v0, "Classical"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x325

    goto :goto_0

    :cond_9
    const-string v0, "Country"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x326

    goto :goto_0

    :cond_a
    const-string v0, "Jazz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x327

    goto :goto_0

    :cond_b
    const-string v0, "Latin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x328

    goto/16 :goto_0

    :cond_c
    const-string v0, "New Age"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x329

    goto/16 :goto_0

    :cond_d
    const-string v0, "Piano"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x32a

    goto/16 :goto_0

    :cond_e
    const-string v0, "Pop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x32b

    goto/16 :goto_0

    :cond_f
    const-string v0, "R&B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x32c

    goto/16 :goto_0

    :cond_10
    const-string v0, "Rock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x32d

    goto/16 :goto_0

    :cond_11
    const-string v0, "Live"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x32e

    goto/16 :goto_0

    :cond_12
    const-string v0, "Dance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x32f

    goto/16 :goto_0

    :cond_13
    const-string v0, "Warmth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x330

    goto/16 :goto_0

    :cond_14
    const-string v0, "Sweetener"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x331

    goto/16 :goto_0

    :cond_15
    const-string v0, "Custom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x334

    goto/16 :goto_0

    :cond_16
    const/16 v0, -0x64

    goto/16 :goto_0
.end method

.method public static getStringFromId(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "m0narX_sound"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requsted name for id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Original"

    goto :goto_0

    :sswitch_1
    const-string v0, "Beats"

    goto :goto_0

    :sswitch_2
    const-string v0, "SRS"

    goto :goto_0

    :sswitch_3
    const-string v0, "Dolby"

    goto :goto_0

    :sswitch_4
    const-string v0, "Voice"

    goto :goto_0

    :sswitch_5
    const-string v0, "Bass Booster"

    goto :goto_0

    :sswitch_6
    const-string v0, "Treble Booster"

    goto :goto_0

    :sswitch_7
    const-string v0, "Vocal Booster"

    goto :goto_0

    :sswitch_8
    const-string v0, "Blues"

    goto :goto_0

    :sswitch_9
    const-string v0, "Classical"

    goto :goto_0

    :sswitch_a
    const-string v0, "Country"

    goto :goto_0

    :sswitch_b
    const-string v0, "Jazz"

    goto :goto_0

    :sswitch_c
    const-string v0, "Latin"

    goto :goto_0

    :sswitch_d
    const-string v0, "New Age"

    goto :goto_0

    :sswitch_e
    const-string v0, "Piano"

    goto :goto_0

    :sswitch_f
    const-string v0, "Pop"

    goto :goto_0

    :sswitch_10
    const-string v0, "R&B"

    goto :goto_0

    :sswitch_11
    const-string v0, "Rock"

    goto :goto_0

    :sswitch_12
    const-string v0, "Live"

    goto :goto_0

    :sswitch_13
    const-string v0, "Dance"

    goto :goto_0

    :sswitch_14
    const-string v0, "Warmth"

    goto :goto_0

    :sswitch_15
    const-string v0, "Sweetener"

    goto :goto_0

    :sswitch_16
    const-string v0, "Custom"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x320 -> :sswitch_0
        0x321 -> :sswitch_5
        0x322 -> :sswitch_6
        0x323 -> :sswitch_7
        0x324 -> :sswitch_8
        0x325 -> :sswitch_9
        0x326 -> :sswitch_a
        0x327 -> :sswitch_b
        0x328 -> :sswitch_c
        0x329 -> :sswitch_d
        0x32a -> :sswitch_e
        0x32b -> :sswitch_f
        0x32c -> :sswitch_10
        0x32d -> :sswitch_11
        0x32e -> :sswitch_12
        0x32f -> :sswitch_13
        0x330 -> :sswitch_14
        0x331 -> :sswitch_15
        0x334 -> :sswitch_16
        0x335 -> :sswitch_4
        0x384 -> :sswitch_1
    .end sparse-switch
.end method

.method public static initEqualizerStyles(Landroid/content/Context;I)V
    .locals 5

    sget-object v3, Landroid/media/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "m0narX_sound"

    const-string v4, "EqualizerStylesFromDevice array is ready. No need to initial again."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/media/SoundEffectHelper;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "srsfx_sidechain="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",geq10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v1, Landroid/media/audiofx/Equalizer;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "srsfx_sidechain="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Landroid/media/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Landroid/media/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->release()V

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/media/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    int-to-short v4, v2

    invoke-virtual {v1, v4}, Landroid/media/audiofx/Equalizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static refreshCustomEQ(Landroid/content/Context;)V
    .locals 6

    sget-object v3, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Equalizer;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v3, "m0narX_sound"

    const-string/jumbo v4, "refreshing custom EQ"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tweaks_custom_eq"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "0,0,0,0,0,0,0,0,0,0"

    :cond_2
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const-string v1, "0,0,0,0,0,0,0,0,0,0"

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_3
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    sget-object v3, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    int-to-short v4, v0

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v3

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    int-to-short v4, v4

    if-eq v3, v4, :cond_4

    sget-object v3, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    int-to-short v4, v0

    aget-object v5, v2, v0

    invoke-static {v5}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static registerSettingsObserver(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tweaks_custom_eq"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/media/SoundEffectHelper$1;

    invoke-direct {v4, v0, p0}, Landroid/media/SoundEffectHelper$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    sget-object v5, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string/jumbo v5, "m0narX_sound"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setAudioEffect, setting: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", audioSessionID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v5, Landroid/media/SoundEffectHelper;->mCurrentSessionID:I

    if-lez v5, :cond_0

    sget v5, Landroid/media/SoundEffectHelper;->mCurrentSessionID:I

    if-eq v5, p2, :cond_1

    :cond_0
    invoke-static {}, Landroid/media/SoundEffectHelper;->disable()V

    sput p2, Landroid/media/SoundEffectHelper;->mCurrentSessionID:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    const-string v5, "Original"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/media/SoundEffectHelper;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v5, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    const-string v5, "Dolby"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0, p2, v1}, Landroid/media/SoundEffectHelper;->setDolbyEffect(Landroid/content/Context;ILjava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v5, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v5, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_2
    :try_start_3
    const-string v5, "SRS"

    invoke-static {v5}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v5, "Dolby"

    invoke-static {v5}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v5, "Voice"

    invoke-static {v5}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v5, "Beats"

    invoke-static {v5}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v5, "Custom"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "Equalizer"

    invoke-static {v5}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/SoundEffectHelper;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "srsfx_sidechain="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",geq10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v5, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    if-nez v5, :cond_4

    new-instance v5, Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    sput-object v5, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "srsfx_sidechain="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v5, Landroid/media/SoundEffectHelper;->mCustom:Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    invoke-static {p0}, Landroid/media/SoundEffectHelper;->refreshCustomEQ(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string/jumbo v5, "m0narX_sound"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setAudioEffect, mEqualizer.hasControl(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v7}, Landroid/media/audiofx/Equalizer;->hasControl()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", UnsupportedOperationException ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    :try_start_4
    const-string v5, "SRS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0, p2, v1}, Landroid/media/SoundEffectHelper;->setSRSEffect(Landroid/content/Context;ILjava/lang/Boolean;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    sget-object v6, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    :cond_6
    :try_start_5
    const-string v5, "Beats"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0, p2, v1}, Landroid/media/SoundEffectHelper;->setBeatsEffect(Landroid/content/Context;ILjava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "Voice"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p0, p2, v1}, Landroid/media/SoundEffectHelper;->setVoiceEffect(Landroid/content/Context;ILjava/lang/Boolean;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_8
    sget-object v5, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_2

    :cond_9
    :try_start_6
    const-string v5, "Custom"

    invoke-static {v5}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroid/media/SoundEffectHelper;->initEqualizerStyles(Landroid/content/Context;I)V

    const/4 v2, 0x0

    :goto_3
    sget-object v5, Landroid/media/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    sget-object v5, Landroid/media/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {p0}, Landroid/media/SoundEffectHelper;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "srsfx_sidechain="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",geq10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v5, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-nez v5, :cond_a

    new-instance v5, Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    sput-object v5, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "srsfx_sidechain="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v5, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v5}, Landroid/media/audiofx/Equalizer;->getCurrentPreset()S

    move-result v5

    if-eq v5, v2, :cond_c

    sget-object v5, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    int-to-short v6, v2

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    sget-object v5, Landroid/media/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    const-string/jumbo v5, "m0narX_sound"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Setting Equlazer to use preset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v5, "m0narX_sound"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setAudioEffect("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), the same Equalizer, no need to reset."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4
.end method

.method private static setBeatsEffect(Landroid/content/Context;ILjava/lang/Boolean;)V
    .locals 3

    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "SRS"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Dolby"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Voice"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Equalizer"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v1}, Landroid/media/audiofx/BassEnhance;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "m0narX_sound"

    const-string v2, "Enabling Beats"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/media/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/audiofx/BassEnhance;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/audiofx/BassEnhance;-><init>(II)V

    sput-object v1, Landroid/media/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    :cond_1
    sget-object v0, Landroid/media/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassEnhance;->setStrength(S)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassEnhance;->setEnabled(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    sget-object v2, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public static setBeatsHeadset(I)V
    .locals 4

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "m0narX_sound"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set headset to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "global_headset_profile=beats_urbeats"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_0
    return-void

    :pswitch_1
    const-string/jumbo v0, "others"

    goto :goto_0

    :pswitch_2
    const-string v0, "beats_pro"

    goto :goto_0

    :pswitch_3
    const-string v0, "beats_solo"

    goto :goto_0

    :pswitch_4
    const-string v0, "beats_studio"

    goto :goto_0

    :pswitch_5
    const-string v0, "beats_urbeats"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setDolbyEffect(Landroid/content/Context;ILjava/lang/Boolean;)V
    .locals 3

    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "SRS"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Voice"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Equalizer"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Beats"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "m0narX_sound"

    const-string v2, "Enabling Dolby"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/media/SoundEffectHelper;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "srsfx_sidechain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_51.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "srsfx_sidechain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_51.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mDolby:Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    sget-object v2, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private static setSRSEffect(Landroid/content/Context;ILjava/lang/Boolean;)V
    .locals 3

    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "Dolby"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Voice"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Equalizer"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Beats"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "m0narX_sound"

    const-string v2, "Enabling SRS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/media/SoundEffectHelper;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "srsfx_sidechain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "srsfx_sidechain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    sget-object v2, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private static setVoiceEffect(Landroid/content/Context;ILjava/lang/Boolean;)V
    .locals 3

    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "SRS"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Dolby"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Equalizer"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    const-string v1, "Beats"

    invoke-static {v1}, Landroid/media/SoundEffectHelper;->disable(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "m0narX_sound"

    const-string v2, "Enabling Voice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/media/SoundEffectHelper;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "srsfx_sidechain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_voice.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "srsfx_sidechain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trumedia,/system/etc/soundimage/srsfx_trumedia_voice.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    sget-object v1, Landroid/media/SoundEffectHelper;->mVoice:Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v1, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    sget-object v2, Landroid/media/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
