.class public Lcom/m0narx/tweaks/customizeRosieTheme;
.super Landroid/app/Activity;
.source "customizeRosieTheme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;,
        Lcom/m0narx/tweaks/customizeRosieTheme$ViewHolder;,
        Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;,
        Lcom/m0narx/tweaks/customizeRosieTheme$iconHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field Cr:Landroid/content/ContentResolver;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private customIcons:Ljava/util/Properties;

.field private handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field private themeAssoc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private themeAssoc2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public themeDrawables:[Landroid/graphics/drawable/Drawable;

.field private themeIcons:[Ljava/lang/String;

.field private themeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/m0narx/tweaks/customizeRosieTheme$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/customizeRosieTheme$1;-><init>(Lcom/m0narx/tweaks/customizeRosieTheme;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/customizeRosieTheme;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/customizeRosieTheme;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/customizeRosieTheme;)Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->customIcons:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/customizeRosieTheme;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/customizeRosieTheme;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    return-object v0
.end method

.method private assocListInit()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_fm_activity_fmradiomain"

    const-string v2, "com_android_fm_radio_fmradio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_calendar_calendaractivitymain"

    const-string v2, "com_android_calendar_launchactivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_android_htccontacts_dialertabactivity"

    const-string v2, "com_android_contacts_dialtactsactivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_android_htccontacts_browselayercarouselactivity"

    const-string v2, "com_android_contacts_dialtactscontactsentryactivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_album_albummain_activitymaindroplist"

    const-string v2, "com_cooliris_media_gallery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_android_mail_multipleactivitiesmain"

    const-string v2, "com_android_email_activity_welcome"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_music_browserlayer_musicbrowsertabactivity"

    const-string v2, "com_google_android_apps_listen_homeactivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_pdfviewer_actpdfreader"

    const-string v2, "com_adobe_reader_adobereader"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_automotive_carousel_mainactivity"

    const-string v2, "com_android_cardock_cardockactivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_android_worldclock_worldclocktabcontrol"

    const-string v2, "com_android_deskclock_deskclock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_automotive_carousel_mainactivity"

    const-string v2, "com_android_cardock_cardockactivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_weather_weatheractivity"

    const-string v2, "com_miui_weather_activityweathercycle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "ccom_htc_soundrecorder_soundrecorderbg"

    const-string v2, "com_android_soundrecorder_soundrecorder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_quoord_tapatalkxdapre_activity_forum_forumnavigationactivity"

    const-string v2, "com_quoord_tapatalkxda_activity_forumnavigationactivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_google_android_youtube_app_honeycomb_shell$homeactivity"

    const-string v2, "com_google_android_youtube_homeactivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_melodis_midomimusicidentifier_freemiumcom_soundhound_android_appcommon_activity_soundhound"

    const-string v2, "com_melodis_midomimusicidentifier_view_soundhound"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    const-string v1, "com_htc_friendstream_socialmainactivity"

    const-string v2, "com_htc_friendstream_friendstream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc2:Ljava/util/Map;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc2:Ljava/util/Map;

    const-string v1, "com_htc_music_browserlayer_musicbrowsertabactivity"

    const-string v2, "com_android_music_musicbrowseractivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc2:Ljava/util/Map;

    const-string v1, "com_htc_weather_weatheractivity"

    const-string v2, "com_aws_android_typhoon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private iconFromTheme(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 11

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v3, v8

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "."

    const-string v10, "_"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v7, ""

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->customIcons:Ljava/util/Properties;

    invoke-virtual {v9, v6}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->customIcons:Ljava/util/Properties;

    invoke-virtual {v9, v6}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :cond_2
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    array-length v9, v9

    if-lt v2, v9, :cond_8

    :cond_3
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    array-length v8, v8

    if-lt v2, v8, :cond_a

    :cond_4
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc2:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc2:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    :goto_3
    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    array-length v8, v8

    if-lt v2, v8, :cond_c

    :cond_5
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v7, v6

    :cond_6
    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_7
    :goto_4
    if-nez v3, :cond_0

    const-string v8, "m0narX_tweaks"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Icon: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v8, "m0narX_tweaks"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Err getting icon for: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    :try_start_1
    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_9

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v9, v9, v2

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v7, v9, v2

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v3, v8

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_b

    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v8, v8, v2

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v7, v8, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_c
    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_d

    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v8, v8, v2

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v7, v8, v2

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_e
    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeAssoc:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "drawable"

    iget-object v10, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_4
.end method

.method private loadCustomIcons()V
    .locals 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->customIcons:Ljava/util/Properties;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->customIcons:Ljava/util/Properties;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/system/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private loadTheme()V
    .locals 8

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_rosie_theme"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->assocListInit()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->loadCustomIcons()V

    iget-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "m0narX_tweaks"

    const-string v6, "No theme choosed for rosie icons!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    iput-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "icon_pack"

    const-string v6, "array"

    iget-object v7, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    const-string v5, "m0narX_tweaks"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Trying to get icon pack from: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    iget-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v6, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v5, "m0narX_tweaks"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t load icon list from theme: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    iput-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v5, "m0narX_tweaks"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t load icon list from theme: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    iput-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->themeDrawables:[Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public GetActivityIcon(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/customizeRosieTheme;->iconFromTheme(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public GetAllIntents()[Ljava/lang/String;
    .locals 10

    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_0

    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v2

    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public LoadData()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v4, Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;-><init>(Lcom/m0narx/tweaks/customizeRosieTheme;Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;)V

    iput-object v4, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->mAdapter:Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->GetAllIntents()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->loadTheme()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    iget-object v4, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    aget-object v4, v0, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v2, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->mAdapter:Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;

    aget-object v5, v2, v9

    aget-object v6, v2, v8

    aget-object v7, v2, v10

    invoke-virtual {p0, v6, v7, v8}, Lcom/m0narx/tweaks/customizeRosieTheme;->GetActivityIcon(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->Cr:Landroid/content/ContentResolver;

    const v1, 0x7f0a013e

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/customizeRosieTheme;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/customizeRosieTheme;->setContentView(I)V

    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/customizeRosieTheme;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20800c1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/m0narx/tweaks/customizeRosieTheme$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/customizeRosieTheme$2;-><init>(Lcom/m0narx/tweaks/customizeRosieTheme;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/customizeRosieTheme;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20800a3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/m0narx/tweaks/customizeRosieTheme$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/customizeRosieTheme$3;-><init>(Lcom/m0narx/tweaks/customizeRosieTheme;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/customizeRosieTheme;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/m0narx/tweaks/customizeRosieTheme$4;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/customizeRosieTheme$4;-><init>(Lcom/m0narx/tweaks/customizeRosieTheme;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v2, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeRosieTheme;->LoadData()V

    return-void
.end method
