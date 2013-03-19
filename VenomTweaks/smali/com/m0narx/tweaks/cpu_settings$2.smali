.class Lcom/m0narx/tweaks/cpu_settings$2;
.super Ljava/lang/Object;
.source "cpu_settings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/cpu_settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/cpu_settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/cpu_settings;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 25

    invoke-virtual/range {p1 .. p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_0
    const-string v21, "freq_"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v7, p1

    check-cast v7, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;

    const-string v21, "freq_"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->originalVDD:Ljava/util/LinkedHashMap;
    invoke-static/range {v21 .. v21}, Lcom/m0narx/tweaks/cpu_settings;->access$0(Lcom/m0narx/tweaks/cpu_settings;)Ljava/util/LinkedHashMap;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x3

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_1
    const/16 v16, 0x4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sub-int v21, v12, v16

    mul-int/lit8 v19, v21, 0x19

    const/16 v21, 0x64

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    const/16 v21, -0x64

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    :cond_2
    const/16 v21, 0x0

    :goto_0
    return v21

    :cond_3
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int v14, v21, v19

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " mV"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveUVSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v8, v1}, Lcom/m0narx/tweaks/cpu_settings;->access$1(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/16 v21, 0x1

    goto :goto_0

    :cond_5
    const-string v21, "pref_cpu_gov"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "governor"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v23, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->strGovEntries:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$2(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->strGovEntries:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/m0narx/tweaks/cpu_settings;->access$2(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aget-object v21, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v6, ""

    const/4 v9, 0x0

    :goto_2
    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$4()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v9, v0, :cond_6

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_6
    new-instance v21, Ljava/io/File;

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$4()[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_7

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "echo "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v22, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->strGovEntries:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/cpu_settings;->access$2(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$4()[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    const-string v21, "pref_cpu_shed"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "io_sheduller"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v23, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->strShedEntries:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$5(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->strShedEntries:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/m0narx/tweaks/cpu_settings;->access$5(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aget-object v21, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "echo "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v22, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->strShedEntries:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/cpu_settings;->access$5(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/sys/block/mmcblk0/queue/scheduler"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v21, "min_freq"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "min_freq"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v23, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v20

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/m0narx/tweaks/cpu_settings;->access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v21

    aget-object v21, v21, v20

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    div-int/lit16 v8, v0, 0x3e8

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " MHz"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v6, ""

    const/4 v9, 0x0

    :goto_3
    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$7()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v9, v0, :cond_a

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    new-instance v21, Ljava/io/File;

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$7()[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_b

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "echo "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v22, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/cpu_settings;->access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$7()[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_c
    const-string v21, "max_freq"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "max_freq"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v23, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v20

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/m0narx/tweaks/cpu_settings;->access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v21

    aget-object v21, v21, v20

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    div-int/lit16 v8, v0, 0x3e8

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " MHz"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v6, ""

    const/4 v9, 0x0

    :goto_4
    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$8()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v9, v0, :cond_d

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    new-instance v21, Ljava/io/File;

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$8()[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_e

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "echo "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v22, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/cpu_settings;->access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$8()[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_f
    const-string v21, "scroff_max_freq"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "scroff_max_freq"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v23, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v20

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/m0narx/tweaks/cpu_settings;->access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v21

    aget-object v21, v21, v20

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    div-int/lit16 v8, v0, 0x3e8

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " MHz"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v6, ""

    const/4 v9, 0x0

    :goto_5
    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$9()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v9, v0, :cond_10

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    new-instance v21, Ljava/io/File;

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$9()[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_11

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "echo "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v22, v0

    #getter for: Lcom/m0narx/tweaks/cpu_settings;->avaliableFreqs:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/cpu_settings;->access$6(Lcom/m0narx/tweaks/cpu_settings;)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$9()[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_12
    const-string v21, "separate_uv"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "separate_uv"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    const/16 v21, 0x1

    :goto_6
    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    #calls: Lcom/m0narx/tweaks/cpu_settings;->setSeparateVDD(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/cpu_settings;->access$10(Lcom/m0narx/tweaks/cpu_settings;ZZ)V

    goto/16 :goto_1

    :cond_13
    const/16 v21, 0x0

    goto :goto_6

    :cond_14
    const-string v21, "global_uv"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v16, 0x4

    sub-int v21, v18, v16

    mul-int/lit8 v13, v21, 0x19

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "global_uv"

    #calls: Lcom/m0narx/tweaks/cpu_settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/m0narx/tweaks/cpu_settings;->access$11(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    if-lez v13, :cond_15

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "+"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    :cond_15
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " mV"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    sub-int v11, v13, v17

    mul-int/lit16 v0, v11, 0x3e8

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    if-lez v11, :cond_16

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "+"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "global_uv"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "echo "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " > "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_17
    const-string v21, "buffer_size"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v18, v21, 0x1

    move/from16 v0, v18

    mul-int/lit16 v13, v0, 0x100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "readahead"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " Kb"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v3, ""

    const/4 v9, 0x0

    :goto_7
    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$12()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v9, v0, :cond_18

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_18
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "echo "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/m0narx/tweaks/cpu_settings;->access$12()[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_19
    const-string v21, "apply_on_boot"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu_settings$2;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    move-object/from16 v21, v0

    const-string v22, "apply_on_boot"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/m0narx/tweaks/cpu_settings;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/m0narx/tweaks/cpu_settings;->access$3(Lcom/m0narx/tweaks/cpu_settings;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
