.class public Lcom/m0narx/tweaks/cpu_settings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "cpu_settings.java"


# static fields
.field private static final CURRENT_GOVERNOR:[Ljava/lang/String; = null

.field private static final IO_SCHEDULER:Ljava/lang/String; = "/sys/block/mmcblk0/queue/scheduler"

.field private static final MAX_FREQ:[Ljava/lang/String; = null

.field private static final MAX_UV:I = 0x64

.field private static final MIN_FREQ:[Ljava/lang/String; = null

.field private static final OFF:Ljava/lang/String; = "0"

.field private static final ON:Ljava/lang/String; = "1"

.field private static final READ_AHEAD:[Ljava/lang/String; = null

.field private static final SCROFF_MAX_FREQ:[Ljava/lang/String; = null

.field private static final UV_FACTOR:I = 0x3e8

.field private static final VOLTAGE_TABLE:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"


# instance fields
.field private final AVAILABLE_GOVERNORS:Ljava/lang/String;

.field private final AVALIABLE_FREQ:Ljava/lang/String;

.field private FREQ:Ljava/lang/String;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private final UV_INCREMENT:I

.field private avaliableFreqs:[Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbh:Lcom/m0narx/tweaks/provider/DB;

.field private global_uv:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

.field private final increment_readahead:I

.field private listPrefGovernor:Lcom/htc/preference/HtcListPreference;

.field private listPrefIOSheduller:Lcom/htc/preference/HtcListPreference;

.field private mContext:Landroid/content/Context;

.field private max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

.field private min_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

.field private originalVDD:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scroff_max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

.field private strGovEntries:[Ljava/lang/String;

.field private strShedEntries:[Ljava/lang/String;

.field private voltage_slider_max:I

.field private voltagesList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/system/cpu/cpu1/cpufreq/scaling_governor"

    aput-object v1, v0, v3

    sput-object v0, Lcom/m0narx/tweaks/cpu_settings;->CURRENT_GOVERNOR:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq"

    aput-object v1, v0, v3

    sput-object v0, Lcom/m0narx/tweaks/cpu_settings;->MAX_FREQ:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq"

    aput-object v1, v0, v3

    sput-object v0, Lcom/m0narx/tweaks/cpu_settings;->MIN_FREQ:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/screen_off_max_freq"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/system/cpu/cpu1/cpufreq/screen_off_max_freq"

    aput-object v1, v0, v3

    sput-object v0, Lcom/m0narx/tweaks/cpu_settings;->SCROFF_MAX_FREQ:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/block/mmcblk0/bdi/read_ahead_kb"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/virtual/bdi/179:0/read_ahead_kb"

    aput-object v1, v0, v3

    sput-object v0, Lcom/m0narx/tweaks/cpu_settings;->READ_AHEAD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->AVAILABLE_GOVERNORS:Ljava/lang/String;

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->AVALIABLE_FREQ:Ljava/lang/String;

    const/16 v0, 0x19

    iput v0, p0, Lcom/m0narx/tweaks/cpu_settings;->UV_INCREMENT:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/m0narx/tweaks/cpu_settings;->voltage_slider_max:I

    const-string v0, "Frequency: "

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->FREQ:Ljava/lang/String;

    const/16 v0, 0x100

    iput v0, p0, Lcom/m0narx/tweaks/cpu_settings;->increment_readahead:I

    iput-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    iput-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private CheckButtonState()V
    .locals 2

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    new-instance v1, Lcom/m0narx/tweaks/cpu_settings$1;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/cpu_settings$1;-><init>(Lcom/m0narx/tweaks/cpu_settings;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/cpu_settings;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->originalVDD:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/cpu_settings;->saveUVSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/m0narx/tweaks/cpu_settings;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/cpu_settings;->setSeparateVDD(ZZ)V

    return-void
.end method

.method static synthetic access$11(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/cpu_settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m0narx/tweaks/cpu_settings;->READ_AHEAD:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->strGovEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m0narx/tweaks/cpu_settings;->CURRENT_GOVERNOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->strShedEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m0narx/tweaks/cpu_settings;->MIN_FREQ:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m0narx/tweaks/cpu_settings;->MAX_FREQ:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m0narx/tweaks/cpu_settings;->SCROFF_MAX_FREQ:[Ljava/lang/String;

    return-object v0
.end method

.method public static applyAllSettings(Landroid/content/Context;)V
    .locals 21

    new-instance v7, Lcom/m0narx/tweaks/provider/DB;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/m0narx/tweaks/provider/DB;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->getVoltageLevels()Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v19, "SELECT freq, orig_uv, uv FROM vdd;"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_2

    :cond_0
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-nez v19, :cond_0

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v19, "SELECT key, value FROM cpu;"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-nez v19, :cond_3

    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v19

    if-nez v19, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v19, "apply_on_boot"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    const-string v19, "global_uv"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    const-string v19, "UPDATE cpu SET value=\'0\' WHERE key=\'global_uv\';"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    return-void

    :cond_6
    const-string v3, ""

    const-string v19, "min_freq"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const/4 v9, 0x0

    :goto_1
    sget-object v19, Lcom/m0narx/tweaks/cpu_settings;->MIN_FREQ:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_15

    :cond_7
    const-string v19, "max_freq"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const/4 v9, 0x0

    :goto_2
    sget-object v19, Lcom/m0narx/tweaks/cpu_settings;->MAX_FREQ:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_17

    :cond_8
    const-string v19, "scroff_max_freq"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const/4 v9, 0x0

    :goto_3
    sget-object v19, Lcom/m0narx/tweaks/cpu_settings;->SCROFF_MAX_FREQ:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_19

    :cond_9
    const-string v19, "governor"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const/4 v9, 0x0

    :goto_4
    sget-object v19, Lcom/m0narx/tweaks/cpu_settings;->CURRENT_GOVERNOR:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_1b

    :cond_a
    const-string v19, "io_sheduller"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "echo "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v19, "io_sheduller"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/sys/block/mmcblk0/queue/scheduler"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    const-string v19, "readahead"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const-string v19, "readahead"

    const-string v20, "2048"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/4 v9, 0x0

    :goto_5
    sget-object v19, Lcom/m0narx/tweaks/cpu_settings;->READ_AHEAD:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_1d

    new-instance v19, Ljava/io/File;

    const-string v20, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_13

    const-string v19, "separate_uv"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    const-string v19, "global_uv"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    const-string v19, "global_uv"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v15, v0, 0x3e8

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const/4 v12, 0x1

    const-string v19, "SELECT freq, orig_uv FROM vdd;"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_11

    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v11, v0, 0x3e8

    add-int v20, v11, v15

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/4 v12, 0x0

    :cond_e
    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    const v20, 0x186a0

    add-int v20, v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_f

    const/4 v12, 0x0

    :cond_f
    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    const v20, -0x186a0

    add-int v20, v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    const/4 v12, 0x0

    :cond_10
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-nez v19, :cond_d

    if-eqz v5, :cond_11

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v19

    if-nez v19, :cond_11

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v12, :cond_13

    if-lez v15, :cond_12

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "+"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_12
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "echo "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_13
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14

    const v19, 0x7f0a0194

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    :cond_14
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :cond_15
    new-instance v19, Ljava/io/File;

    sget-object v20, Lcom/m0narx/tweaks/cpu_settings;->MIN_FREQ:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_16

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "echo "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v19, "min_freq"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/m0narx/tweaks/cpu_settings;->MIN_FREQ:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_17
    new-instance v19, Ljava/io/File;

    sget-object v20, Lcom/m0narx/tweaks/cpu_settings;->MAX_FREQ:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "echo "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v19, "max_freq"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/m0narx/tweaks/cpu_settings;->MAX_FREQ:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_19
    new-instance v19, Ljava/io/File;

    sget-object v20, Lcom/m0narx/tweaks/cpu_settings;->SCROFF_MAX_FREQ:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1a

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "echo "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v19, "scroff_max_freq"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/m0narx/tweaks/cpu_settings;->SCROFF_MAX_FREQ:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_1b
    new-instance v19, Ljava/io/File;

    sget-object v20, Lcom/m0narx/tweaks/cpu_settings;->CURRENT_GOVERNOR:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1c

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "echo "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v19, "governor"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/m0narx/tweaks/cpu_settings;->CURRENT_GOVERNOR:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_1d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "echo "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v19, "readahead"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/m0narx/tweaks/cpu_settings;->READ_AHEAD:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_1e
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "echo \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\" > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6
.end method

.method private getCurrentFreqIdx(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/cpu_settings;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getOriginalVoltageLevels()Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/m0narx/tweaks/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v5, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT freq, orig_uv FROM vdd;"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    iget-object v6, p0, Lcom/m0narx/tweaks/cpu_settings;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "DELETE FROM vdd;"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/cpu_settings;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return-object v4

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/m0narx/tweaks/cpu_settings;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "INSERT INTO vdd(freq, orig_uv,uv) VALUES(\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\');"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT value FROM cpu WHERE key=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1
.end method

.method private static getVoltageLevels()Ljava/util/LinkedHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const-string v3, ""

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_1
    return-object v5

    :cond_1
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v6, v4

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "mhz"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v1, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x200

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private resetGlobalUV()V
    .locals 6

    const-string v4, "global_uv"

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->global_uv:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setProgress(I)V

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->global_uv:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    const-string v5, "0 mV"

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "echo \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private resetSeparateUV()V
    .locals 5

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "freq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " mV"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu_settings;->voltagesList:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "freq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setProgress(I)V

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/m0narx/tweaks/cpu_settings;->saveUVSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE cpu SET value=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' WHERE key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private saveUVSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE vdd SET uv=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' WHERE freq=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/m0narx/tweaks/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private setApplyOnBoot()V
    .locals 3

    const-string v1, "apply_on_boot"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, "apply_on_boot"

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/cpu_settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private setAvaliableFreqs()V
    .locals 3

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/cpu_settings;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->min_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setMax(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setMax(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->scroff_max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setMax(I)V

    return-void
.end method

.method private setBufferSize()V
    .locals 4

    const-string v2, "buffer_size"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    sget-object v2, Lcom/m0narx/tweaks/cpu_settings;->READ_AHEAD:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v1, "2048"

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x100

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setProgress(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCurrentFreqSummary()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->min_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    sget-object v2, Lcom/m0narx/tweaks/cpu_settings;->MIN_FREQ:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setProgress(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    sget-object v2, Lcom/m0narx/tweaks/cpu_settings;->MAX_FREQ:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setProgress(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->scroff_max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    sget-object v2, Lcom/m0narx/tweaks/cpu_settings;->SCROFF_MAX_FREQ:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setProgress(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    sget-object v2, Lcom/m0narx/tweaks/cpu_settings;->MIN_FREQ:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->min_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    sget-object v2, Lcom/m0narx/tweaks/cpu_settings;->MAX_FREQ:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;

    sget-object v2, Lcom/m0narx/tweaks/cpu_settings;->SCROFF_MAX_FREQ:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings;->scroff_max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCurrentGovernor()V
    .locals 4

    sget-object v2, Lcom/m0narx/tweaks/cpu_settings;->CURRENT_GOVERNOR:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->strGovEntries:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefGovernor:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefGovernor:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->strGovEntries:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefGovernor:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setCurrentIOSheduller()V
    .locals 4

    const-string v2, "/sys/block/mmcblk0/queue/scheduler"

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefIOSheduller:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefIOSheduller:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    aget-object v2, v1, v0

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefIOSheduller:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setGlobalUV()V
    .locals 7

    const-string v4, "global_uv"

    invoke-direct {p0, v4}, Lcom/m0narx/tweaks/cpu_settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    if-lez v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v1, 0x4

    div-int/lit8 v0, v3, 0x19

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->global_uv:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " mV"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->global_uv:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    add-int v5, v1, v0

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setProgress(I)V

    return-void
.end method

.method private setGovenorEntries()V
    .locals 5

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-direct {p0, v3}, Lcom/m0narx/tweaks/cpu_settings;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/cpu_settings;->strGovEntries:[Ljava/lang/String;

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefGovernor:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->strGovEntries:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/m0narx/tweaks/cpu_settings;->strGovEntries:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefGovernor:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private setIOShedullerEntries()V
    .locals 6

    const-string v4, "/sys/block/mmcblk0/queue/scheduler"

    invoke-direct {p0, v4}, Lcom/m0narx/tweaks/cpu_settings;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "["

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "]"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->strShedEntries:[Ljava/lang/String;

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefIOSheduller:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/m0narx/tweaks/cpu_settings;->strShedEntries:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const-string v2, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->strShedEntries:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu_settings;->listPrefIOSheduller:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private setSeparateVDD(ZZ)V
    .locals 4

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu_settings;->global_uv:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu_settings;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p2, :cond_2

    :goto_2
    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "freq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu_settings;->resetGlobalUV()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu_settings;->resetSeparateUV()V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040005

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu_settings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->FREQ:Ljava/lang/String;

    new-instance v1, Lcom/m0narx/tweaks/provider/DB;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/m0narx/tweaks/provider/DB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->CheckButtonState()V

    new-instance v1, Lcom/m0narx/tweaks/cpu_settings$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/m0narx/tweaks/cpu_settings$2;-><init>(Lcom/m0narx/tweaks/cpu_settings;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "cpu_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v16

    check-cast v16, Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "pref_cpu_gov"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->listPrefGovernor:Lcom/htc/preference/HtcListPreference;

    const-string v1, "pref_cpu_shed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->listPrefIOSheduller:Lcom/htc/preference/HtcListPreference;

    const-string v1, "min_freq"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->min_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    const-string v1, "max_freq"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    const-string v1, "scroff_max_freq"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->scroff_max_freq:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    const-string v1, "global_uv"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->global_uv:Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->setGovenorEntries()V

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->setIOShedullerEntries()V

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->setAvaliableFreqs()V

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->getVoltageLevels()Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->getOriginalVoltageLevels()Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->originalVDD:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "pref_cpu_gov"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "pref_cpu_shed"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v6, "min_freq"

    const-string v7, ""

    const-string v8, "seekbarCPU"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v6, "max_freq"

    const-string v7, ""

    const-string v8, "seekbarCPU"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v6, "scroff_max_freq"

    const-string v7, ""

    const-string v8, "seekbarCPU"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "apply_on_boot"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v6, "global_uv"

    const-string v7, ""

    const-string v8, "seekbarCPU"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "separate_uv"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v6, "buffer_size"

    const-string v7, ""

    const-string v8, "seekbarCPU"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->setCurrentGovernor()V

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->setCurrentIOSheduller()V

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->setCurrentFreqSummary()V

    const-string v1, "separate_uv"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/cpu_settings;->setSeparateVDD(ZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->setGlobalUV()V

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->setBufferSize()V

    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu_settings;->setApplyOnBoot()V

    return-void

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "freq_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int v1, v2, v1

    div-int/lit8 v11, v1, 0x19

    new-instance v15, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/cpu_settings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/m0narx/tweaks/cpu_settings;->voltage_slider_max:I

    invoke-direct {v15, v1, v2}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15, v3}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " mV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/cpu_settings;->FREQ:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setEnabled(Z)V

    const/4 v14, 0x4

    add-int v13, v14, v11

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/cpu_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v4, ""

    const-string v5, "seekbarCPU"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v15, v13}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setProgress(I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu_settings;->CheckButtonState()V

    return-void
.end method
