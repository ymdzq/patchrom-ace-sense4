.class final Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoryPersister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcActivityChooserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;-><init>(Lcom/htc/widget/HtcActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    const/4 v2, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/htc/widget/HtcActivityChooserModel;->access$1100(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static {v13}, Lcom/htc/widget/HtcActivityChooserModel;->access$1200(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/widget/HtcActivityChooserModel;->access$500(Lcom/htc/widget/HtcActivityChooserModel;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/widget/HtcActivityChooserModel;->access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v12

    const/4 v13, 0x0

    :try_start_3
    invoke-interface {v12, v2, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v13, "UTF-8"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v13, 0x0

    const-string v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_1

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;

    const/4 v13, 0x0

    const-string v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    const-string v14, "activity"

    iget-object v15, v8, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    const-string/jumbo v14, "time"

    iget-wide v15, v8, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;->time:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    const-string/jumbo v14, "weight"

    iget v15, v8, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    const-string v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v13

    :goto_1
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v13

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/htc/widget/HtcActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/widget/HtcActivityChooserModel;->access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v13, 0x0

    :try_start_5
    const-string v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v13

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_7
    invoke-static {}, Lcom/htc/widget/HtcActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/widget/HtcActivityChooserModel;->access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v13

    goto :goto_2

    :catch_4
    move-exception v6

    :try_start_9
    invoke-static {}, Lcom/htc/widget/HtcActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/widget/HtcActivityChooserModel;->access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    :catch_5
    move-exception v13

    goto :goto_2

    :catch_6
    move-exception v5

    :try_start_b
    invoke-static {}, Lcom/htc/widget/HtcActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/widget/HtcActivityChooserModel;->access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v13

    goto/16 :goto_2

    :catch_8
    move-exception v7

    :try_start_d
    invoke-static {}, Lcom/htc/widget/HtcActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/widget/HtcActivityChooserModel;->access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v2, :cond_0

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto/16 :goto_2

    :catch_9
    move-exception v13

    goto/16 :goto_2

    :catchall_1
    move-exception v13

    if-eqz v2, :cond_2

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_2
    :goto_3
    throw v13

    :catch_a
    move-exception v14

    goto :goto_3

    :catchall_2
    move-exception v13

    move-object v10, v11

    goto/16 :goto_1
.end method
