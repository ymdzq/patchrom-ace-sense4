.class public Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
.super Ljava/lang/Object;
.source "SlideshowSetingManager.java"


# static fields
.field public static final EXTRA_KEY_SLIDESHOW_MODE:Ljava/lang/String; = "slideshow_setting_mode"

.field public static final FALLING_PHOTO_TABLE_PHOTO_INTERVAL_FAST:I = 0x9c4

.field public static final FALLING_PHOTO_TABLE_PHOTO_INTERVAL_MEDIUM:I = 0xdac

.field public static final FALLING_PHOTO_TABLE_PHOTO_INTERVAL_SLOW:I = 0xfa0

.field public static final FALLING_PHOTO_TABLE_SPEED_FAST:F = 1.3f

.field public static final FALLING_PHOTO_TABLE_SPEED_MEDIUM:F = 1.0f

.field public static final FALLING_PHOTO_TABLE_SPEED_SLOW:F = 0.8f

.field public static final KEY_ASK_MUSIC:Ljava/lang/String; = "slide_show_ask_music_setting"

.field public static final KEY_FOLDER:Ljava/lang/String; = "slide_show_folder_picker_setting"

.field public static final KEY_MUSIC_ENABLE:Ljava/lang/String; = "slide_show_music_enable_setting"

.field public static final KEY_MUSIC_PICKER:Ljava/lang/String; = "slide_show_music_picker_setting"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "slide_show_orientation_setting"

.field public static final KEY_REPEATG:Ljava/lang/String; = "slide_show_repeat_setting"

.field public static final KEY_SHUFFLE:Ljava/lang/String; = "slide_show_shuffle_setting"

.field public static final KEY_SPEED:Ljava/lang/String; = "slide_show_duration_setting"

.field public static final KEY_TRANSITION:Ljava/lang/String; = "slide_show_transition_setting"

.field public static final PHOTO_LOCK_SCREEN_PHOTO_INTERVAL_FAST:I = 0x1388

.field public static final PHOTO_LOCK_SCREEN_PHOTO_INTERVAL_MEDIUM:I = 0x1964

.field public static final PHOTO_LOCK_SCREEN_PHOTO_INTERVAL_SLOW:I = 0x1f40

.field public static final SETTING_MODE_ALBUM:Ljava/lang/String; = "album_mode"

.field public static final SETTING_MODE_DOCK:Ljava/lang/String; = "dock_mode"

.field public static final SETTING_MODE_UNKNOW:Ljava/lang/String; = "unknow_mode"

.field public static final SPEED_FAST:I = 0x3

.field public static final SPEED_MEDIUM:I = 0x5

.field public static final SPEED_SLOW:I = 0x8

#the value of this static final field might be set in the static constructor
.field public static final TRANSITION_DEFAULT:I = 0x0

.field public static final TRANSITION_FADE:I = 0x0

.field public static final TRANSITION_FALLING_PHOTO:I = 0x8

.field public static final TRANSITION_KENBUMS:I = 0x7

.field public static final TRANSITION_NONE:I = -0x2

.field public static final TRANSITION_NO_CHANGE:I = -0x3

.field public static final TRANSITION_PHOTO_LS:I = 0x6

.field public static final TRANSITION_ROTATE:I = 0x5

.field public static final TRANSITION_SLIDE:I = 0x1


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCurrentMode:Ljava/lang/String;

.field mIsInit:Z

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    sput v0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->TRANSITION_DEFAULT:I

    return-void

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SlideshowSetingManager"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mContext:Landroid/content/Context;

    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getCurModeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentMode()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getTransitionKeyValue4Profile(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, "None"

    goto :goto_0

    :pswitch_2
    const-string v0, "Fountain"

    goto :goto_0

    :pswitch_3
    const-string v0, "Cascade"

    goto :goto_0

    :pswitch_4
    const-string v0, "Fade"

    goto :goto_0

    :pswitch_5
    const-string v0, "Slide"

    goto :goto_0

    :pswitch_6
    const-string v0, "Rotate"

    goto :goto_0

    :pswitch_7
    const-string v0, "PanAndZoom"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method public initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v0, "album_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    const-string v0, "SlideshowSetingManager"

    const-string v1, "[HTCAlbum][SlideshowSettingManager][initSlideshowSetting]: Run Album Mode Setting."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    goto :goto_0

    :cond_2
    const-string v0, "dock_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "dock_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    const-string v0, "SlideshowSetingManager"

    const-string v1, "[HTCAlbum][SlideshowSettingManager][initSlideshowSetting]: Run Dock Mode Setting."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "unknow_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    const-string v0, "SlideshowSetingManager"

    const-string v1, "[HTCAlbum][SlideshowSettingManager][initSlideshowSetting]: Run unknow Mode Setting."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 4

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v2, 0x1

    goto :goto_0
.end method
