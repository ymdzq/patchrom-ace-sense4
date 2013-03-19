.class public Lcom/htc/album/addons/slideshow/AlbumSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "AlbumSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;,
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;,
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;
    }
.end annotation


# static fields
.field public static final SLIDE_SHOW_ASK_MUSIC_KEY:Ljava/lang/String; = "slide_show_ask_music_setting"

.field public static final SLIDE_SHOW_FOLDER_PICKER_KEY:Ljava/lang/String; = "slide_show_folder_picker_setting"

.field public static final SLIDE_SHOW_MUSIC_DISPLAY_KEY:Ljava/lang/String; = "slide_show_music_display"

.field public static final SLIDE_SHOW_MUSIC_ENABLE_KEY:Ljava/lang/String; = "slide_show_music_enable_setting"

.field public static final SLIDE_SHOW_MUSIC_FILE_PATH_KEY:Ljava/lang/String; = "slide_show_music_file_path"

.field public static final SLIDE_SHOW_MUSIC_PICKER_KEY:Ljava/lang/String; = "slide_show_music_picker_setting"

.field public static final SLIDE_SHOW_ORIENTATION_KEY:Ljava/lang/String; = "slide_show_orientation_setting"

.field public static final SLIDE_SHOW_REPEAT_KEY:Ljava/lang/String; = "slide_show_repeat_setting"

.field public static final SLIDE_SHOW_SHUFFLE_KEY:Ljava/lang/String; = "slide_show_shuffle_setting"

.field public static final SLIDE_SHOW_SPEED_KEY:Ljava/lang/String; = "slide_show_duration_setting"

.field public static final SLIDE_SHOW_TRANS_KEY:Ljava/lang/String; = "slide_show_transition_setting"

.field private static final TAG:Ljava/lang/String; = "AlbumSettings"

.field private static final mFolderPickerRequestCode:I = 0xd673


# instance fields
.field private final SLIDESHOW_DURATION_OPTION_COUNTS:I

.field private final SLIDESHOW_DURATION_OPTION_ENTRY_IDS:[I

.field private final SLIDESHOW_DURATION_OPTION_VALUES:[Ljava/lang/String;

.field private final SLIDESHOW_ORIENTATION_DEFAULT_VALUE:Ljava/lang/String;

.field private final SLIDESHOW_ORIENTATION_OPTION_COUNTS:I

.field private final SLIDESHOW_ORIENTATION_OPTION_ENTRY_IDS:[I

.field private final SLIDESHOW_ORIENTATION_OPTION_VALUES:[Ljava/lang/String;

.field private final SLIDESHOW_SPEED_DEFAULT_VALUE:Ljava/lang/String;

.field private final SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

.field private final SLIDESHOW_TRANSITION_OPTION_COUNTS:I

.field private final SLIDESHOW_TRANSITION_OPTION_ENTRY_IDS:[I

.field private final SLIDESHOW_TRANSITION_OPTION_INCLUDE_TABLE:[Z

.field private final SLIDESHOW_TRANSITION_OPTION_VALUES:[Ljava/lang/String;

.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mCurrentMode:Ljava/lang/String;

.field private mFolderPicker:Lcom/htc/preference/HtcPreference;

.field private mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mMusicPickerPre:Lcom/htc/preference/HtcPreference;

.field private mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field private mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

.field private mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

.field private mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSlideshowShufflePref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_ENTRY_IDS:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v0, v1

    const-string v3, "1"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_VALUES:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_ENTRY_IDS:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_COUNTS:I

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_ENTRY_IDS:[I

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "3"

    aput-object v3, v0, v1

    const-string v3, "5"

    aput-object v3, v0, v2

    const-string v3, "8"

    aput-object v3, v0, v5

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_VALUES:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_ENTRY_IDS:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_COUNTS:I

    new-array v0, v7, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_ENTRY_IDS:[I

    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "-2"

    aput-object v3, v0, v1

    const-string v3, "6"

    aput-object v3, v0, v2

    const-string v3, "8"

    aput-object v3, v0, v5

    const-string v3, "0"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "1"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "7"

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_VALUES:[Ljava/lang/String;

    new-array v3, v7, [Z

    aput-boolean v2, v3, v1

    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v2

    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_1

    :goto_1
    aput-boolean v1, v3, v5

    aput-boolean v2, v3, v6

    const/4 v0, 0x4

    aput-boolean v2, v3, v0

    const/4 v0, 0x5

    aput-boolean v2, v3, v0

    const/4 v0, 0x6

    aput-boolean v2, v3, v0

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_INCLUDE_TABLE:[Z

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_ENTRY_IDS:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_COUNTS:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_DEFAULT_VALUE:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_2

    const-string v0, "7"

    :goto_2
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    const-string v0, "3"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_SPEED_DEFAULT_VALUE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const-string v0, "6"

    goto :goto_2

    :array_0
    .array-data 0x4
        0x33t 0x0t 0xat 0x7ft
        0x34t 0x0t 0xat 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x2ft 0x0t 0xat 0x7ft
        0x30t 0x0t 0xat 0x7ft
        0x31t 0x0t 0xat 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x27t 0x0t 0xat 0x7ft
        0x28t 0x0t 0xat 0x7ft
        0x29t 0x0t 0xat 0x7ft
        0x2at 0x0t 0xat 0x7ft
        0x2bt 0x0t 0xat 0x7ft
        0x2ct 0x0t 0xat 0x7ft
        0x2dt 0x0t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method public static getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14

    if-nez p1, :cond_1

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: Query Cursor start !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    move-object v12, v13

    :cond_2
    const/4 v13, 0x0

    const-string v0, "album"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v0, "title"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object v11, v13

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: Query Cursor end !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_5

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: cursor.getString NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: cursor.getString Exception !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableDropList()V
    .locals 0

    return-void
.end method

.method public getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_1

    :cond_3
    aget-object v2, v0, v4

    goto :goto_0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 3

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const v2, 0x7f0a00a9

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    new-instance v2, Lcom/htc/album/addons/slideshow/AlbumSettings$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/AlbumSettings$1;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v6, -0x1

    if-ne v6, p2, :cond_2

    const v5, 0x18605

    if-ne p1, v5, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_picker_setting"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-ne v6, p2, :cond_0

    const v5, 0xd673

    if-ne p1, v5, :cond_0

    const-string v5, "folder_type"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_folder_picker_setting"

    invoke-virtual {v5, v6, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->requestWindowFeature(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-super/range {p0 .. p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "slideshow_setting_mode"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    new-instance v20, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct/range {v20 .. v20}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "album_mode"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    const v20, 0x7f050001

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->addPreferencesFromResource(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_repeat_setting"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    check-cast v20, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_shuffle_setting"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    check-cast v20, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowShufflePref:Lcom/htc/preference/HtcCheckBoxPreference;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_orientation_setting"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    check-cast v20, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_COUNTS:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v6, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_VALUES:[Ljava/lang/String;

    const/4 v8, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_ENTRY_IDS:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "dock_mode"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    const v20, 0x7f050002

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->finish()V

    const-string v20, "AlbumSettings"

    const-string v21, "[HTCAlbum][AlbumSetting][onCreate]: unknow mode !"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_transition_setting"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    check-cast v20, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_COUNTS:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_INCLUDE_TABLE:[Z

    array-length v12, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_a

    aget-boolean v4, v3, v9

    if-nez v4, :cond_9

    add-int/lit8 v19, v19, -0x1

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    const-string v20, "AlbumSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][AlbumSetting][onCreate]validEntryCount = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v19

    new-array v6, v0, [Ljava/lang/String;

    move/from16 v0, v19

    new-array v7, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v8, v0, :cond_c

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_INCLUDE_TABLE:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v11

    if-nez v20, :cond_b

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_ENTRY_IDS:[I

    move-object/from16 v21, v0

    aget v21, v21, v11

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_VALUES:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    aput-object v20, v7, v8

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_duration_setting"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    check-cast v20, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_COUNTS:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v6, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_VALUES:[Ljava/lang/String;

    const/4 v8, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v8, v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_ENTRY_IDS:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const-string v21, "3"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_music_enable_setting"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    check-cast v20, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_music_picker_setting"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_folder_picker_setting"

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_7
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateOrientationPref(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_8
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateRepeatPref(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_9
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updatePlaybackSpeedPref(I)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_music_picker_setting"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    const/4 v10, 0x1

    :goto_a
    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_music_enable_setting"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_17

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v20, v0

    const-string v21, "slide_show_folder_picker_setting"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_9

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_17
    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    const v21, 0x7f0a0020

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_b
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "AlbumSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateOrientationPref(I)V

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateRepeatPref(I)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updatePlaybackSpeedPref(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateOrientationPref(I)V
    .locals 2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updatePlaybackSpeedPref(I)V
    .locals 3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v1, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updateRepeatPref(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
