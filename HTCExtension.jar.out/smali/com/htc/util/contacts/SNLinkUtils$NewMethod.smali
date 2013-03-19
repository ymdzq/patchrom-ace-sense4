.class public Lcom/htc/util/contacts/SNLinkUtils$NewMethod;
.super Ljava/lang/Object;
.source "SNLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SNLinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewMethod"
.end annotation


# static fields
.field public static final FACEBOOK_ENDING_TOKEN:Ljava/lang/String; = "</Facebook>"

.field public static final FACEBOOK_STARTING_TOKEN:Ljava/lang/String; = "<Facebook>"

.field public static final FLICKR_ENDING_TOKEN:Ljava/lang/String; = "</Flickr>"

.field public static final FLICKR_STARTING_TOKEN:Ljava/lang/String; = "<Flickr>"

.field public static final HTC_DATA_ENDING_TOKEN:Ljava/lang/String; = "</HTCData>"

.field public static final HTC_DATA_STARTING_TOKEN:Ljava/lang/String; = "<HTCData>"

.field public static final KAIXIN_ENDING_TOKEN:Ljava/lang/String; = "</Kaixin>"

.field public static final KAIXIN_STARTING_TOKEN:Ljava/lang/String; = "<Kaixin>"

.field public static final PLURK_ENDING_TOKEN:Ljava/lang/String; = "</Plurk>"

.field public static final PLURK_STARTING_TOKEN:Ljava/lang/String; = "<Plurk>"

.field public static final QQIM_ENDING_TOKEN:Ljava/lang/String; = "</QQIM>"

.field public static final QQIM_STARTING_TOKEN:Ljava/lang/String; = "<QQIM>"

.field public static final QQWEIBO_ENDING_TOKEN:Ljava/lang/String; = "</QQWeibo>"

.field public static final QQWEIBO_STARTING_TOKEN:Ljava/lang/String; = "<QQWeibo>"

.field public static final QZONE_ENDING_TOKEN:Ljava/lang/String; = "</QZOne>"

.field public static final QZONE_STARTING_TOKEN:Ljava/lang/String; = "<QZOne>"

.field public static final RENREN_ENDING_TOKEN:Ljava/lang/String; = "</Renren>"

.field public static final RENREN_STARTING_TOKEN:Ljava/lang/String; = "<Renren>"

.field public static final SINA_ENDING_TOKEN:Ljava/lang/String; = "</Sina>"

.field public static final SINA_STARTING_TOKEN:Ljava/lang/String; = "<Sina>"

.field public static final TWITTER_ENDING_TOKEN:Ljava/lang/String; = "</Twitter>"

.field public static final TWITTER_STARTING_TOKEN:Ljava/lang/String; = "<Twitter>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;
    .locals 11
    .parameter "text"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 858
    if-nez p1, :cond_1

    .line 928
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 861
    .restart local p0
    :cond_1
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 865
    new-instance v7, Ljava/lang/StringBuilder;

    if-nez p0, :cond_3

    const-string v8, ""

    :goto_1
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    .local v7, textBuffer:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 867
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    #calls: Lcom/htc/util/contacts/SNLinkUtils;->refineData(Ljava/util/List;)Z
    invoke-static {v0}, Lcom/htc/util/contacts/SNLinkUtils;->access$100(Ljava/util/List;)Z

    move-result v6

    .line 868
    .local v6, needRewriteNote:Z
    if-nez v0, :cond_4

    .line 870
    const-string v8, "<HTCData>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    const-string v8, "id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 875
    const-string v8, "friendof:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 881
    .local v3, defaultAction:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 882
    invoke-static {v9, v7, v3}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 885
    :cond_2
    const-string v8, "</HTCData>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .end local v3           #defaultAction:Ljava/lang/String;
    .end local v6           #needRewriteNote:Z
    .end local v7           #textBuffer:Ljava/lang/StringBuilder;
    :cond_3
    move-object v8, p0

    .line 865
    goto :goto_1

    .line 888
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .restart local v6       #needRewriteNote:Z
    .restart local v7       #textBuffer:Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 889
    .local v1, dataListSize:I
    const/16 v8, 0x14

    if-le v1, v8, :cond_6

    .line 890
    invoke-static {}, Lcom/htc/util/contacts/SNLinkUtils;->access$000()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "SNLinkUtils"

    const-string v9, "link infomation exceed the limit so that don\'t add it."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_5
    if-eqz v6, :cond_0

    .line 893
    invoke-static {p0, v0, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 899
    :cond_6
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v1, :cond_9

    .line 900
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 901
    .local v2, dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v8, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    iget-object v9, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v9, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    iget-object v9, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    #calls: Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/htc/util/contacts/SNLinkUtils;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 903
    invoke-static {}, Lcom/htc/util/contacts/SNLinkUtils;->access$000()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "SNLinkUtils"

    const-string v9, "link duplicate one."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_7
    if-eqz v6, :cond_0

    .line 907
    invoke-static {p0, v0, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 899
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 915
    .end local v2           #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_9
    const/4 v4, 0x0

    .line 916
    .local v4, hasSameType:Z
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_a

    .line 917
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 918
    .restart local v2       #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v8, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    iget-object v9, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    #calls: Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/htc/util/contacts/SNLinkUtils;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 919
    invoke-interface {v0, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 920
    const/4 v4, 0x1

    .line 924
    .end local v2           #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_a
    if-nez v4, :cond_b

    .line 925
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    :cond_b
    invoke-static {p0, v0, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 916
    .restart local v2       #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 939
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 946
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 942
    .restart local p0
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v0}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 943
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iput-object p1, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 944
    iput-object p2, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 945
    iput-object p3, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 946
    invoke-static {p0, v0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "SNType"
    .parameter "isStart"

    .prologue
    .line 1030
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    const-string v0, ""

    .line 1079
    :goto_0
    return-object v0

    .line 1033
    :cond_0
    if-eqz p1, :cond_b

    .line 1034
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1035
    :cond_1
    const-string v0, "<Facebook>"

    goto :goto_0

    .line 1036
    :cond_2
    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1037
    const-string v0, "<Flickr>"

    goto :goto_0

    .line 1038
    :cond_3
    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1039
    const-string v0, "<Plurk>"

    goto :goto_0

    .line 1040
    :cond_4
    const-string v0, "com.htc.htctwitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1041
    const-string v0, "<Twitter>"

    goto :goto_0

    .line 1042
    :cond_5
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1043
    const-string v0, "<Sina>"

    goto :goto_0

    .line 1044
    :cond_6
    const-string v0, "com.htc.socialnetwork.qqim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1045
    const-string v0, "<QQIM>"

    goto :goto_0

    .line 1046
    :cond_7
    const-string v0, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1047
    const-string v0, "<QQWeibo>"

    goto :goto_0

    .line 1048
    :cond_8
    const-string v0, "com.htc.socialnetwork.chinasns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1049
    const-string v0, "<QZOne>"

    goto :goto_0

    .line 1050
    :cond_9
    const-string v0, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1051
    const-string v0, "<Kaixin>"

    goto :goto_0

    .line 1052
    :cond_a
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1053
    const-string v0, "<Renren>"

    goto :goto_0

    .line 1056
    :cond_b
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1057
    :cond_c
    const-string v0, "</Facebook>"

    goto/16 :goto_0

    .line 1058
    :cond_d
    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1059
    const-string v0, "</Flickr>"

    goto/16 :goto_0

    .line 1060
    :cond_e
    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1061
    const-string v0, "</Plurk>"

    goto/16 :goto_0

    .line 1062
    :cond_f
    const-string v0, "com.htc.htctwitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1063
    const-string v0, "</Twitter>"

    goto/16 :goto_0

    .line 1064
    :cond_10
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1065
    const-string v0, "</Sina>"

    goto/16 :goto_0

    .line 1066
    :cond_11
    const-string v0, "com.htc.socialnetwork.qqim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1067
    const-string v0, "</QQIM>"

    goto/16 :goto_0

    .line 1068
    :cond_12
    const-string v0, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1069
    const-string v0, "</QQWeibo>"

    goto/16 :goto_0

    .line 1070
    :cond_13
    const-string v0, "com.htc.socialnetwork.chinasns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1071
    const-string v0, "</QZOne>"

    goto/16 :goto_0

    .line 1072
    :cond_14
    const-string v0, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1073
    const-string v0, "</Kaixin>"

    goto/16 :goto_0

    .line 1074
    :cond_15
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1075
    const-string v0, "</Renren>"

    goto/16 :goto_0

    .line 1079
    :cond_16
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 716
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    .line 796
    :cond_0
    :goto_0
    return-object v0

    .line 719
    :cond_1
    const-string v6, "<HTCData>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 720
    .local v3, startingIndex:I
    const-string v6, "</HTCData>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 721
    .local v2, endingIndex:I
    if-lt v2, v3, :cond_2

    if-eq v3, v7, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    move-object v0, v5

    .line 722
    goto :goto_0

    .line 724
    :cond_3
    const-string v6, "<HTCData>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 726
    .local v4, subText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v0, v5

    .line 727
    goto :goto_0

    .line 730
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v0, allDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v1, 0x0

    .line 734
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const-string v6, "<Facebook>"

    const-string v7, "</Facebook>"

    const-string v8, "com.facebook.auth.login"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 735
    if-eqz v1, :cond_5

    .line 736
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 740
    :cond_5
    const-string v6, "<Flickr>"

    const-string v7, "</Flickr>"

    const-string v8, "com.htc.socialnetwork.flickr"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 741
    if-eqz v1, :cond_6

    .line 742
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 746
    :cond_6
    const-string v6, "<Plurk>"

    const-string v7, "</Plurk>"

    const-string v8, "com.htc.socialnetwork.plurk"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 747
    if-eqz v1, :cond_7

    .line 748
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 752
    :cond_7
    const-string v6, "<Twitter>"

    const-string v7, "</Twitter>"

    const-string v8, "com.htc.htctwitter"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 753
    if-eqz v1, :cond_8

    .line 754
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 758
    :cond_8
    const-string v6, "<Sina>"

    const-string v7, "</Sina>"

    const-string v8, "com.htc.friendstream.sinaweiboplugin"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 759
    if-eqz v1, :cond_9

    .line 760
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 764
    :cond_9
    const-string v6, "<QQIM>"

    const-string v7, "</QQIM>"

    const-string v8, "com.htc.socialnetwork.qqim"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 765
    if-eqz v1, :cond_a

    .line 766
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 770
    :cond_a
    const-string v6, "<QQWeibo>"

    const-string v7, "</QQWeibo>"

    const-string v8, "com.htc.socialnetwork.qqweibo"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 771
    if-eqz v1, :cond_b

    .line 772
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 776
    :cond_b
    const-string v6, "<QZOne>"

    const-string v7, "</QZOne>"

    const-string v8, "com.htc.socialnetwork.chinasns"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 777
    if-eqz v1, :cond_c

    .line 778
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 782
    :cond_c
    const-string v6, "<Kaixin>"

    const-string v7, "</Kaixin>"

    const-string v8, "com.htc.KaixinFriendStream"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 783
    if-eqz v1, :cond_d

    .line 784
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 788
    :cond_d
    const-string v6, "<Renren>"

    const-string v7, "</Renren>"

    const-string v8, "com.htc.friendstream.renrenwebplugin"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 789
    if-eqz v1, :cond_e

    .line 790
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 793
    :cond_e
    if-eqz v0, :cond_f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    :cond_f
    move-object v0, v5

    .line 794
    goto/16 :goto_0
.end method

.method private static extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "subText"
    .parameter "startToken"
    .parameter "endToken"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    const/4 v4, 0x0

    .line 804
    .local v4, idListTokens:Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 806
    .local v2, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 807
    .local v7, nextContent:Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_0

    .line 808
    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 809
    .local v9, startingIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 810
    .local v3, endingIndex:I
    if-lt v3, v9, :cond_0

    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    const/4 v11, -0x1

    if-ne v3, v11, :cond_1

    .line 850
    .end local v3           #endingIndex:I
    .end local v9           #startingIndex:I
    :cond_0
    return-object v2

    .line 813
    .restart local v3       #endingIndex:I
    .restart local v9       #startingIndex:I
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 814
    .local v8, size:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v7, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 817
    .local v6, innerText:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    if-ge v11, v8, :cond_4

    .line 818
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 819
    invoke-static {}, Lcom/htc/util/contacts/SNLinkUtils;->access$000()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "NOTE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "has next content = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_2
    :goto_1
    new-instance v4, Ljava/util/StringTokenizer;

    .end local v4           #idListTokens:Ljava/util/StringTokenizer;
    const-string/jumbo v11, "|"

    invoke-direct {v4, v6, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .restart local v4       #idListTokens:Ljava/util/StringTokenizer;
    if-nez v2, :cond_3

    .line 826
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .restart local v2       #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 830
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 831
    .local v10, token:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 832
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 833
    .local v5, ids:[Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_3

    .line 836
    const/4 v11, 0x0

    aget-object v11, v5, v11

    const-string v12, "id:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    aget-object v11, v5, v11

    const-string v12, "friendof:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 838
    new-instance v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v1}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 839
    .local v1, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const/4 v11, 0x0

    aget-object v11, v5, v11

    const-string v12, "id:"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 840
    const/4 v11, 0x1

    aget-object v11, v5, v11

    const-string v12, "friendof:"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 841
    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 842
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 821
    .end local v1           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v5           #ids:[Ljava/lang/String;
    .end local v10           #token:Ljava/lang/String;
    :cond_4
    const-string v7, ""

    goto :goto_1

    .line 846
    :cond_5
    const/4 v4, 0x0

    .line 848
    goto/16 :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 1087
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1106
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1090
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1091
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    #calls: Lcom/htc/util/contacts/SNLinkUtils;->refineData(Ljava/util/List;)Z
    invoke-static {v1}, Lcom/htc/util/contacts/SNLinkUtils;->access$100(Ljava/util/List;)Z

    .line 1092
    if-eqz v1, :cond_0

    .line 1096
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1098
    .local v2, dataListSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1099
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 1101
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    #calls: Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, p3}, Lcom/htc/util/contacts/SNLinkUtils;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1102
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1106
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_2
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1098
    .restart local v0       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 12
    .parameter "text"
    .parameter
    .parameter "isNewFormat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 955
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v0, 0x0

    .line 956
    .local v0, bufferText:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_4

    .line 957
    const-string v10, "<HTCData>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 958
    .local v9, startingIndex:I
    const-string v10, "</HTCData>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 959
    .local v6, endingIndex:I
    if-lt v6, v9, :cond_0

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v10, -0x1

    if-ne v6, v10, :cond_1

    .line 1026
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 963
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #bufferText:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 975
    .restart local v0       #bufferText:Ljava/lang/StringBuffer;
    :goto_1
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 976
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 977
    .local v3, dataListSize:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v4, dataStringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 981
    .local v1, curType:Ljava/lang/String;
    const/4 v8, 0x0

    .line 982
    .local v8, preType:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v3, :cond_5

    .line 983
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 985
    .local v2, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v1, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 986
    #calls: Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v8}, Lcom/htc/util/contacts/SNLinkUtils;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 987
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x7c

    if-ne v10, v11, :cond_2

    .line 988
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 991
    :cond_2
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    const/4 v10, 0x1

    invoke-static {v1, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    :cond_3
    const-string v10, "id:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    iget-object v10, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const/16 v10, 0x2f

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    const-string v10, "friendof:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    iget-object v10, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const/16 v10, 0x7c

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1002
    move-object v8, v1

    .line 982
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 965
    .end local v1           #curType:Ljava/lang/String;
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v3           #dataListSize:I
    .end local v4           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v6           #endingIndex:I
    .end local v7           #i:I
    .end local v8           #preType:Ljava/lang/String;
    .end local v9           #startingIndex:I
    :cond_4
    const-string v10, "<sn>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 966
    .restart local v9       #startingIndex:I
    const-string v10, "</sn>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 967
    .restart local v6       #endingIndex:I
    if-lt v6, v9, :cond_0

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    .line 971
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #bufferText:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0       #bufferText:Ljava/lang/StringBuffer;
    goto/16 :goto_1

    .line 1005
    .restart local v1       #curType:Ljava/lang/String;
    .restart local v3       #dataListSize:I
    .restart local v4       #dataStringBuilder:Ljava/lang/StringBuilder;
    .restart local v7       #i:I
    .restart local v8       #preType:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x7c

    if-ne v10, v11, :cond_6

    .line 1006
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1008
    :cond_6
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1012
    .local v5, defaultAction:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1013
    const/4 v10, 0x0

    invoke-static {v10, v4, v5}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1016
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 1017
    const/4 v10, 0x0

    const-string v11, "<HTCData>"

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    const-string v10, "</HTCData>"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1026
    .end local v1           #curType:Ljava/lang/String;
    .end local v3           #dataListSize:I
    .end local v4           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v5           #defaultAction:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #preType:Ljava/lang/String;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
