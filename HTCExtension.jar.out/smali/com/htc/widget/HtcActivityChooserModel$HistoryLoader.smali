.class final Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;
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
    name = "HistoryLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcActivityChooserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;-><init>(Lcom/htc/widget/HtcActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/htc/widget/HtcActivityChooserModel;->access$500(Lcom/htc/widget/HtcActivityChooserModel;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/widget/HtcActivityChooserModel;->access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v12, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v17, 0x0

    :goto_0
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v17

    goto :goto_0

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/htc/widget/HtcActivityChooserModel;->mIsDefaultOrder:Z
    invoke-static/range {v21 .. v22}, Lcom/htc/widget/HtcActivityChooserModel;->access$602(Lcom/htc/widget/HtcActivityChooserModel;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/widget/HtcActivityChooserModel;->access$1000(Lcom/htc/widget/HtcActivityChooserModel;)Landroid/os/Handler;

    move-result-object v21

    new-instance v22, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader$1;-><init>(Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    const-string v21, "historical-records"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file does not start with historical-records tag."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_1
    move-exception v20

    :try_start_3
    invoke-static {}, Lcom/htc/widget/HtcActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/widget/HtcActivityChooserModel;->access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v21

    goto :goto_1

    :cond_2
    :try_start_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lcom/htc/widget/HtcActivityChooserModel;->access$1100(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    new-instance v18, Ljava/util/LinkedHashSet;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/htc/widget/HtcActivityChooserModel;->access$1200(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    :goto_3
    if-ltz v9, :cond_7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_4
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0x4

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    :try_start_7
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v21, "historical-record"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file not well-formed."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v10

    :try_start_8
    invoke-static {}, Lcom/htc/widget/HtcActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/widget/HtcActivityChooserModel;->access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_0

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v21

    goto/16 :goto_1

    :cond_5
    const/16 v21, 0x0

    :try_start_a
    const-string v22, "activity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v21, 0x0

    const-string/jumbo v22, "time"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    const/16 v21, 0x0

    const-string/jumbo v22, "weight"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    new-instance v13, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;

    move-wide v0, v15

    move/from16 v2, v19

    invoke-direct {v13, v3, v0, v1, v2}, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    :catchall_0
    move-exception v21

    if-eqz v4, :cond_6

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_4
    throw v21

    :cond_7
    :try_start_c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v4, :cond_0

    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v21

    goto/16 :goto_1

    :cond_8
    :try_start_e
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    #setter for: Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z
    invoke-static {v0, v1}, Lcom/htc/widget/HtcActivityChooserModel;->access$1302(Lcom/htc/widget/HtcActivityChooserModel;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/widget/HtcActivityChooserModel;->access$1000(Lcom/htc/widget/HtcActivityChooserModel;)Landroid/os/Handler;

    move-result-object v21

    new-instance v23, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader$2;

    invoke-direct/range {v23 .. v24}, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader$2;-><init>(Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v22
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v4, :cond_0

    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v21

    goto/16 :goto_1

    :catchall_1
    move-exception v21

    :try_start_10
    monitor-exit v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v21
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    :catch_7
    move-exception v22

    goto :goto_4
.end method
