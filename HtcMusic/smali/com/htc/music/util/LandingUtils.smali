.class public Lcom/htc/music/util/LandingUtils;
.super Ljava/lang/Object;
.source "LandingUtils.java"


# static fields
.field public static final PACKAGE_NAME_AMAZON:Ljava/lang/String; = "com.amazon.mp3"

.field public static final PACKAGE_NAME_BPM:Ljava/lang/String; = "com.htc.bpmrss"

.field public static final PACKAGE_NAME_DEEZER:Ljava/lang/String; = "deezer.android.app"

.field public static final PACKAGE_NAME_DOUBAN_FM:Ljava/lang/String; = "com.douban.radio"

.field public static final PACKAGE_NAME_FM_RADIO:Ljava/lang/String; = "com.htc.fm"

.field public static final PACKAGE_NAME_GOOGLE_MUSIC:Ljava/lang/String; = "com.google.android.music"

.field public static final PACKAGE_NAME_KKBOX:Ljava/lang/String; = "com.skysoft.kkbox.android"

.field public static final PACKAGE_NAME_KUWO:Ljava/lang/String; = "cn.kuwo.player"

.field public static final PACKAGE_NAME_LASTFM:Ljava/lang/String; = "fm.last.android"

.field public static final PACKAGE_NAME_MOG:Ljava/lang/String; = "com.mog.android"

.field public static final PACKAGE_NAME_PANDORA:Ljava/lang/String; = "com.pandora.android"

.field public static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.qqmusic"

.field public static final PACKAGE_NAME_RDIO:Ljava/lang/String; = "com.rdio.android.ui"

.field public static final PACKAGE_NAME_SEVENDIGITAL:Ljava/lang/String; = "uk.co.sevendigital.android"

.field public static final PACKAGE_NAME_SIMFY:Ljava/lang/String; = "de.simfy.androidapp"

.field public static final PACKAGE_NAME_SINA:Ljava/lang/String; = "cn.sina.music"

.field public static final PACKAGE_NAME_SLACKER:Ljava/lang/String; = "com.slacker.radio"

.field public static final PACKAGE_NAME_SOUNDHOUND:Ljava/lang/String; = "com.melodis.midomiMusicIdentifier"

.field public static final PACKAGE_NAME_SOUNDHOUND_FREEMIUM:Ljava/lang/String; = "com.melodis.midomiMusicIdentifier.freemium"

.field public static final PACKAGE_NAME_SPOTIFY:Ljava/lang/String; = "com.spotify.mobile.android.ui"

.field public static final PACKAGE_NAME_SPRINT:Ljava/lang/String; = "com.sprint.android.musicplus2033"

.field public static final PACKAGE_NAME_TUNEIN:Ljava/lang/String; = "tunein.player"

.field public static final PACKAGE_NAME_TUNEIN_PRO:Ljava/lang/String; = "radiotime.player"

.field public static final PACKAGE_NAME_VERIZON:Ljava/lang/String; = "com.htc.vmm"

.field public static final PACKAGE_NAME_VODAFONE:Ljava/lang/String; = "com.vodafone.android.app.music"

.field public static final PACKAGE_NAME_ZDIGITAL:Ljava/lang/String; = "au.com.zdigital.android"

.field private static final TAG:Ljava/lang/String; = "[LandingUtils]"

.field public static final TYPE_AUTO_DETECT:I = 0x2

.field public static final TYPE_COLLECTION:I = 0x5

.field public static final TYPE_CUSTOMIZATION:I = 0x6

.field public static final TYPE_LIBRARY:I = 0x0

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_PRELOAD:I = 0x1

.field public static final TYPE_RECOMMENDATION:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoAddList()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, autoAddList:[Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 222
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isChinaSku()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    new-array v0, v7, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "radiotime.player"

    aput-object v1, v0, v3

    const-string v1, "tunein.player"

    aput-object v1, v0, v4

    const-string v1, "cn.kuwo.player"

    aput-object v1, v0, v5

    const-string v1, "com.tencent.qqmusic"

    aput-object v1, v0, v6

    .line 288
    .restart local v0       #autoAddList:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 289
    const-string v1, "[LandingUtils]"

    const-string v2, "getAutoAddList, autoAddList = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    return-object v0

    .line 55
    :sswitch_0
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.htc.vmm"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 73
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto :goto_0

    .line 76
    :sswitch_1
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.vodafone.android.app.music"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 94
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 97
    :sswitch_2
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.htc.bpmrss"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 115
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 118
    :sswitch_3
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.sprint.android.musicplus2033"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 136
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 139
    :sswitch_4
    const/16 v1, 0xf

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 156
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    :sswitch_5
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 160
    const/16 v1, 0xf

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 181
    :sswitch_6
    const/16 v1, 0xe

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 199
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 202
    :sswitch_7
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 219
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 248
    :cond_2
    const-string v1, "ro.cid"

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/LandingUtils;->isOrangeFRSku(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 267
    :cond_3
    const/16 v1, 0xf

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_5
        0x66 -> :sswitch_7
        0x73 -> :sswitch_4
        0x94 -> :sswitch_3
        0x9b -> :sswitch_6
        0x9f -> :sswitch_2
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getCustomizationList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, customizationList:[Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 566
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isChinaSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 575
    :cond_0
    :sswitch_0
    if-nez v0, :cond_1

    .line 576
    const-string v1, "[LandingUtils]"

    const-string v2, "getCustomizationList, customizationList = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_1
    return-object v0

    .line 547
    nop

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_0
        0x73 -> :sswitch_0
        0x9b -> :sswitch_0
        0x9f -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getShortcutInfoList(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 23
    .parameter "context"
    .parameter "autoAddList"
    .parameter "autoCustList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    const-string v21, "LandingPage"

    const/16 v22, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 352
    .local v15, preferences:Landroid/content/SharedPreferences;
    const-string v21, "launchitemlist"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 353
    .local v12, launchItemListStr:Ljava/lang/String;
    const-string v21, "launchtypelist"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 354
    .local v13, launchTypeListStr:Ljava/lang/String;
    const-string v21, "launchclassnamelist"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 356
    .local v11, launchClassNameListStr:Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v17, shortcutInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/ShortcutInfo;>;"
    invoke-static {v12}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 358
    .local v14, pkgNameArray:[Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, clsNameArray:[Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 361
    .local v20, typeArray:[Ljava/lang/String;
    new-instance v18, Lcom/htc/music/ShortcutPageInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/ShortcutPageInfo;-><init>(Landroid/content/Context;)V

    .line 363
    .local v18, shortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;
    if-eqz v14, :cond_1

    .line 364
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_1

    .line 365
    new-instance v16, Lcom/htc/music/ShortcutInfo;

    invoke-direct/range {v16 .. v16}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 366
    .local v16, shortcutInfo:Lcom/htc/music/ShortcutInfo;
    aget-object v21, v14, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 367
    aget-object v21, v4, v8

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 368
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setClassName(Ljava/lang/String;)V

    .line 372
    :goto_1
    aget-object v21, v20, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 373
    aget-object v21, v14, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setIntent(Landroid/content/Intent;)V

    .line 374
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 370
    :cond_0
    aget-object v21, v4, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setClassName(Ljava/lang/String;)V

    goto :goto_1

    .line 380
    .end local v8           #i:I
    .end local v16           #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    :cond_1
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/htc/music/util/LandingUtils;->getUpdatedCustList(Landroid/content/SharedPreferences;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, custList:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 382
    .local v6, custCnt:I
    if-eqz v7, :cond_2

    .line 383
    array-length v6, v7

    .line 385
    :cond_2
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    if-ge v8, v6, :cond_6

    .line 386
    const/4 v9, 0x0

    .line 387
    .local v9, isExist:Z
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_3

    .line 388
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/ShortcutInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v21

    aget-object v22, v7, v8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 389
    const/4 v9, 0x1

    .line 393
    :cond_3
    if-nez v9, :cond_4

    .line 394
    new-instance v16, Lcom/htc/music/ShortcutInfo;

    invoke-direct/range {v16 .. v16}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 395
    .restart local v16       #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    aget-object v21, v7, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 396
    const/16 v21, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 397
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v16           #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 387
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 403
    .end local v9           #isExist:Z
    .end local v10           #j:I
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/htc/music/util/LandingUtils;->getUpdatedAddList(Landroid/content/SharedPreferences;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, addList:[Ljava/lang/String;
    array-length v5, v3

    .line 406
    .local v5, count:I
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_b

    .line 407
    const/4 v9, 0x0

    .line 408
    .restart local v9       #isExist:Z
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_7

    .line 409
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/ShortcutInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v21

    aget-object v22, v3, v8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 410
    const/4 v9, 0x1

    .line 414
    :cond_7
    if-nez v9, :cond_8

    .line 416
    aget-object v21, v3, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutPageInfo;->getPreloadAutoDetectType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 417
    .local v19, type:Ljava/lang/Integer;
    if-nez v19, :cond_a

    .line 406
    .end local v19           #type:Ljava/lang/Integer;
    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 408
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 421
    .restart local v19       #type:Ljava/lang/Integer;
    :cond_a
    new-instance v16, Lcom/htc/music/ShortcutInfo;

    invoke-direct/range {v16 .. v16}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 422
    .restart local v16       #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    aget-object v21, v3, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 426
    aget-object v21, v3, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutInfo;->setIntent(Landroid/content/Intent;)V

    .line 427
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 431
    .end local v9           #isExist:Z
    .end local v10           #j:I
    .end local v16           #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    .end local v19           #type:Ljava/lang/Integer;
    :cond_b
    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/ShortcutPageInfo;->clear()V

    .line 433
    return-object v17
.end method

.method public static getShortcutInfoListByContentValues(Landroid/content/Context;)[Landroid/content/ContentValues;
    .locals 8
    .parameter "context"

    .prologue
    .line 461
    const-string v4, "[LandingUtils]"

    const-string v5, "getShortcutInfoListByContentValues start"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->getAutoAddList()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/htc/music/util/LandingUtils;->getCustomizationList()[Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/LandingUtils;->getShortcutInfoList(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 465
    .local v2, shortcutInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/ShortcutInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Landroid/content/ContentValues;

    .line 467
    .local v0, contentValuesList:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 468
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v0, v1

    .line 469
    aget-object v5, v0, v1

    const-string v6, "pkgName"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v4}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    aget-object v5, v0, v1

    const-string v6, "clsName"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v4}, Lcom/htc/music/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v4}, Lcom/htc/music/ShortcutInfo;->getType()I

    move-result v3

    .line 474
    .local v3, type:I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 475
    aget-object v4, v0, v1

    const-string v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v4}, Lcom/htc/music/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 482
    aget-object v5, v0, v1

    const-string v6, "customizedIntentUri"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v4}, Lcom/htc/music/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    const-string v5, "com.htc.vmm"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v4}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 486
    aget-object v4, v0, v1

    const-string v5, "customizedAppName"

    const v6, 0x7f070003

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 477
    :cond_2
    aget-object v4, v0, v1

    const-string v5, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 490
    .end local v3           #type:I
    :cond_3
    const-string v4, "[LandingUtils]"

    const-string v5, "getShortcutInfoListByContentValues end"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-object v0
.end method

.method private static getUpdatedAddList(Landroid/content/SharedPreferences;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "preferences"
    .parameter "autoAddList"

    .prologue
    .line 519
    const-string v5, "removelist"

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, removeListStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, removeList:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/LandingUtils;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, autoAddStr:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 525
    array-length v1, v3

    .line 526
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 527
    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 528
    aget-object v5, v3, v2

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    invoke-static {v0}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getUpdatedCustList(Landroid/content/SharedPreferences;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "preferences"
    .parameter "custList"

    .prologue
    const/4 v5, 0x0

    .line 438
    if-nez p1, :cond_0

    .line 439
    const-string v6, "[LandingUtils]"

    const-string v7, "[getUpdatedCustList] mCustomizationList is null!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_0
    return-object v5

    .line 442
    :cond_0
    const-string v6, "removelist"

    invoke-interface {p0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, removeListStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, removeList:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/LandingUtils;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, custStr:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 448
    array-length v0, v3

    .line 449
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 450
    aget-object v5, v3, v2

    if-eqz v5, :cond_1

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 451
    aget-object v5, v3, v2

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 449
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 456
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_2
    invoke-static {v1}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static isChinaSku()Z
    .locals 3

    .prologue
    .line 313
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xda

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 318
    .local v0, isChinaSKU:Z
    :goto_0
    return v0

    .line 313
    .end local v0           #isChinaSKU:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMetroPCSSku()Z
    .locals 2

    .prologue
    .line 344
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrangeFRSku(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneCID"

    .prologue
    .line 334
    if-eqz p0, :cond_0

    .line 335
    const-string v0, "ORANG202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSprintSku()Z
    .locals 2

    .prologue
    .line 308
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTMOUSSku()Z
    .locals 2

    .prologue
    .line 330
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTelstraSku()Z
    .locals 2

    .prologue
    .line 304
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVerizonSku()Z
    .locals 2

    .prologue
    .line 296
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVodaFoneSku()Z
    .locals 2

    .prologue
    .line 300
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZdigital()Z
    .locals 2

    .prologue
    .line 323
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x38

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static strArrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strArray"

    .prologue
    .line 496
    if-nez p0, :cond_0

    .line 497
    const-string v3, "[LandingUtils]"

    const-string v4, "strArrayToStr, strArray is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 v3, 0x0

    .line 506
    :goto_0
    return-object v3

    .line 500
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 501
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 502
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 503
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 506
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static strToStrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 510
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    :cond_0
    const-string v1, "[LandingUtils]"

    const-string v2, "strToStrArray, str is null or empty"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    .line 515
    :goto_0
    return-object v0

    .line 514
    :cond_1
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, strArray:[Ljava/lang/String;
    goto :goto_0
.end method
