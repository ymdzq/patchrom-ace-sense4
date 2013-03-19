.class public Lcom/htc/album/helper/ShareMenuManager;
.super Ljava/lang/Object;
.source "ShareMenuManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SHARE_VIA_MIN:I = 0x4

.field private static mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;


# instance fields
.field mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field private mSharePluginButtonId:I

.field private mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

.field private mSharePluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginButtonId:I

    iput-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

    iput-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList] Null context"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    :goto_0
    return-object v18

    :cond_0
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Begin"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p1, :cond_1

    if-gtz p2, :cond_1

    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Nothing to share!!"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    new-instance v18, Ljava/util/ArrayList;

    const/16 v50, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Landroid/content/Intent;

    const-string v50, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "image/*"

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v50, "video/*"

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v46

    const-string v50, "android.intent.action.SEND_MSG"

    const v51, 0x10003

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v42, Landroid/content/Intent;

    const-string v50, "com.htc.vmm.SEND"

    move-object/from16 v0, v42

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "video/*"

    move-object/from16 v0, v42

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v39, Landroid/content/Intent;

    const-string v50, "com.htc.vmm.SEND"

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "image/*"

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v41, Landroid/content/Intent;

    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "video/*"

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v40, Landroid/content/Intent;

    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "image/*"

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v43, Landroid/content/Intent;

    const-string v50, "android.intent.action.SEND"

    move-object/from16 v0, v43

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "video/*"

    move-object/from16 v0, v43

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v34, Landroid/content/Intent;

    const-string v50, "android.intent.action.SEND"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "image/*"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v36, Landroid/content/Intent;

    const-string v50, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v36

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "image/*"

    move-object/from16 v0, v36

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v38, Landroid/content/Intent;

    const-string v50, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "video/*"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v35, Landroid/content/Intent;

    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "image/*"

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v37, Landroid/content/Intent;

    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v50, "video/*"

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v49

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v24

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v29

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v47

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v26

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v25

    const/4 v6, 0x0

    const/16 v8, 0xa

    const/16 v7, 0x1e

    const/4 v5, -0x1

    if-gtz p1, :cond_5

    const-string v50, "android.intent.action.SEND"

    const v51, 0x10002

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "android.intent.action.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v50, "com.htc.vmm.SEND"

    const v51, 0x10002

    move-object/from16 v0, v18

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xa

    :goto_1
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v18

    move-object/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/ShareMenuManager;->searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;Ljava/util/List;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_2

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;Ljava/util/List;)V

    :cond_2
    invoke-static/range {v18 .. v18}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDuplicateItems(Ljava/util/List;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v50, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_MMS:Z

    if-eqz v50, :cond_3

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutMMSItems(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    const/16 v45, 0x0

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v45

    if-eqz v45, :cond_4

    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "[HTCAlbum][ShareMenuManager][createLocalFolderShareList]:3 "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-gtz p2, :cond_6

    const-string v50, "android.intent.action.SEND"

    const v51, 0x10001

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    move-object/from16 v2, p0

    move/from16 v3, v51

    invoke-static {v0, v14, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "android.intent.action.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v50, "com.htc.vmm.SEND"

    const v51, 0x10001

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6
    const-string v50, "android.intent.action.SEND"

    const v51, 0x10002

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "android.intent.action.SEND"

    const v51, 0x10001

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    move-object/from16 v2, p0

    move/from16 v3, v51

    invoke-static {v0, v14, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "android.intent.action.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "android.intent.action.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v50, "com.htc.vmm.SEND"

    const v51, 0x10002

    move-object/from16 v0, v18

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "com.htc.vmm.SEND"

    const v51, 0x10001

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x1e

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDisabledItems(Ljava/util/List;Ljava/util/List;)V

    sparse-switch v5, :sswitch_data_0

    :goto_3
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v10, v11, v1}, Lcom/htc/album/helper/ShareMenuManager;->createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Ends"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_0
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Image/Video Folder"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_1
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Mixed Folder"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    new-instance v48, Ljava/util/HashSet;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashSet;-><init>()V

    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_10
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_11
    const/4 v12, 0x0

    :goto_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v50

    move/from16 v0, v50

    if-ge v12, v0, :cond_1c

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    invoke-interface/range {v32 .. v32}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v50

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface/range {v32 .. v32}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v50

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v50, "com.htc.android.mail"

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_12

    const v50, 0x20003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    :goto_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_12
    const-string v50, "com.android.mms"

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_13

    const v50, 0x10003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    :cond_13
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_15

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_14

    const v50, 0x20003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    :cond_14
    const v50, 0x20001

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    :cond_15
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_16

    const v50, 0x20002

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    :cond_16
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_18

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_17

    const v50, 0x20003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    :cond_17
    const v50, 0x20001

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    :cond_18
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_19

    const v50, 0x20002

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    :cond_19
    invoke-virtual {v15, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1b

    move-object/from16 v0, v48

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1a

    const v50, 0x10003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    :cond_1a
    const v50, 0x10001

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    :cond_1b
    const v50, 0x10002

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    :cond_1c
    invoke-static/range {v18 .. v18}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsByGroupMerge(Ljava/util/List;)V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method public static createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    sget-object v19, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v20, "[createLocalSingleShareList] null context"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    move-object/from16 v5, p1

    if-nez v5, :cond_2

    sget-object v19, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v20, "[createLocalSingleShareList] null image found!!"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroid/content/Intent;

    const-string v19, "com.htc.vmm.SEND"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v19, "video/*"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    const-string v20, "com.htc.vmm.SEND"

    if-eqz v10, :cond_7

    const v19, 0x10002

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v19

    invoke-static {v11, v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroid/content/Intent;

    const-string v19, "android.intent.action.SEND"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "video/*"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "video/*"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    const/high16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v14, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_a

    const v16, 0x10002

    :goto_5
    const-string v19, "android.intent.action.SEND"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v16

    invoke-static {v11, v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    const-string v19, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v16

    invoke-static {v11, v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v15}, Lcom/htc/album/helper/ShareMenuManager;->searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;Ljava/util/List;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-static {v11, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_MMS:Z

    if-eqz v19, :cond_4

    invoke-static {v11, v6}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutMMSItems(Ljava/util/List;Ljava/util/List;)V

    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    const/16 v17, 0x0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    sget-object v19, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[createLocalSingleShareList]: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string v19, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_7
    const v19, 0x10001

    goto/16 :goto_2

    :cond_8
    const-string v19, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_9
    const-string v19, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_a
    const v16, 0x10001

    goto/16 :goto_5

    :cond_b
    invoke-static {v11, v6}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDisabledItems(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    invoke-static {v15, v4, v6, v0}, Lcom/htc/album/helper/ShareMenuManager;->createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_0

    const v19, 0x7f0a000c

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private static createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/16 v8, 0x20

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createShareMultipleAdapterInstance] Intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createShareMultipleAdapterInstance] Allow: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_5

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createShareMultipleAdapterInstance] Exclude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v5, Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/htc/widget/HtcShareViaMultipleAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    sput-object v5, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    return-void
.end method

.method public static createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    const-string v5, "android.intent.action.SEND"

    const v6, 0x10003

    invoke-static {v4, v5, p0, v6}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v6, p0}, Lcom/htc/album/helper/ShareMenuManager;->createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    check-cast v3, Ljava/util/ArrayList;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ShareMenuManager][createSocialShareList] RuntimeException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ShareMenuManager][createSocialShareList] Exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[createShareSocialMenu] Null share list!!"

    invoke-static {v3, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v4, p1, p3, v3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {p2, v4}, Lcom/htc/album/modules/ui/widget/ControlButton;->setSharedAdapter(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    invoke-virtual {p2}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_1

    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v4, v1}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    if-nez v0, :cond_5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v2, v4}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2
.end method

.method private doCreateDropList(Landroid/content/Context;Landroid/view/SubMenu;ILjava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/SubMenu;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p4, :cond_0

    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[ShareMenuManager][doCreateDropList] The share list is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    new-instance v3, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v3, p1, p4, v2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v3, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][doCreateDropList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p3, v0, v2, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Landroid/view/Menu;",
            "Landroid/view/MenuItem;",
            "I)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez p1, :cond_1

    invoke-interface {p3, p5}, Landroid/view/Menu;->removeGroup(I)V

    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    sget-object v8, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[doCreateMenu] Null share list!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p5}, Landroid/view/Menu;->removeGroup(I)V

    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    :cond_3
    new-instance v9, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v9, p1, p2, v8}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v9, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-interface {p4}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    invoke-interface {p4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p3, v7, v1, v3, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, p5, v2, v7, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    const/4 v7, 0x2

    invoke-interface {p4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v7, v8

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    sget-object v8, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[doCreateMenu] Null share list!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance v9, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v9, p1, p2, v8}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v9, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p4}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    invoke-interface {p4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p3, v7, v1, v3, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, p5, v2, v7, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    move v7, v8

    goto/16 :goto_0
.end method

.method private getOrderPluginComparableList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v3, v7

    :cond_1
    return-object v3

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_0
    check-cast v5, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/plugin/CommandBarButton;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v5, v7

    goto :goto_0
.end method

.method public static getShareItemIndex(ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)I
    .locals 4

    move-object v2, p1

    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    const/4 v0, -0x1

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcShareViaMultipleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->findShareItemIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static declared-synchronized getShareMultipleAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;
    .locals 2

    const-class v0, Lcom/htc/album/helper/ShareMenuManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    const/high16 v4, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.USCSEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-ne v3, v0, :cond_1

    const-string v0, "video/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: no android.intent.action.USCSEND"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v5

    :cond_1
    const-string v0, "image/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v0, "*/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-eq v3, v0, :cond_0

    :cond_4
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addSingleComparableRIList(Ljava/util/List;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;II)V

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public createLocalFolderShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;IIZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;IIZ)Z"
        }
    .end annotation

    invoke-static {p1, p3, p4, p5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createLocalFolderShareMenu(Landroid/content/Context;Landroid/view/Menu;IIZ)Z
    .locals 6

    const v0, 0x7f09008c

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[createLocalFolderShareMenu] No share menu found!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p3, p4, p5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v5, 0x303a

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createLocalSingleShareBubble(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/ui/widget/ControlButton;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[createLocalSingleShareBubble] Invalid inputs!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {p1, p2}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_0
.end method

.method public createLocalSingleShareMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/view/Menu;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[createLocalSingleShareMenu] Invalid inputs!!"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    const v1, 0x7f09008c

    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[createLocalSingleShareMenu] No share menu found!!"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v5, 0x3039

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "text/plain"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    const-string v6, "android.intent.action.SEND"

    const v7, 0x10003

    invoke-static {v5, v6, p1, v7}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    if-nez v6, :cond_2

    new-instance v6, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v0, v7}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v6, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v7, p1}, Lcom/htc/album/helper/ShareMenuManager;->createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz p2, :cond_3

    invoke-direct {p0, p1, v5, p2}, Lcom/htc/album/helper/ShareMenuManager;->getOrderPluginComparableList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_0

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v6, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ShareMenuManager][createSocialPluginShareList] RuntimeException :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v6, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ShareMenuManager][createSocialPluginShareList] Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v6}, Lcom/htc/album/helper/ShareMenuManager;->getOrderPluginComparableList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_2
.end method

.method public createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createSocialShareDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 2

    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateSocialShareIconListDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Ljava/util/ArrayList;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public createSocialShareDropList(Landroid/content/Context;Landroid/view/SubMenu;I)Z
    .locals 2

    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateDropList(Landroid/content/Context;Landroid/view/SubMenu;ILjava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createSocialShareMenu(Landroid/content/Context;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/FooterButton;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {p1, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->setSharedAdapter(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    if-eqz p2, :cond_2

    move-object v3, p2

    :goto_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/FooterButton;->clearBubble()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v1, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v3, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public doCreateSocialShareIconListDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    sget-object v7, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Context is null..."

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    new-instance v7, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v8, 0x1

    invoke-direct {v7, p1, p4, v8}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v7, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    iget-object v7, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    if-nez v7, :cond_1

    sget-object v7, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "sharedAdapter is null..."

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ShareMenuManager;->getShareMultipleAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v4

    new-instance v5, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    new-instance v6, Lcom/htc/album/helper/ShareMenuManager$1;

    invoke-direct {v6, p0, v4, p3}, Lcom/htc/album/helper/ShareMenuManager$1;-><init>(Lcom/htc/album/helper/ShareMenuManager;Lcom/htc/widget/HtcShareViaMultipleAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    invoke-direct {v5, v3, v4, v6}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Landroid/app/AlertDialog;Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p1, p2, v4, v5}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->createAlertDialogBuilder(Landroid/content/Context;ILandroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListSelectorHighlightedColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    :cond_3
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :cond_4
    move-object v6, v3

    goto :goto_0
.end method

.method public getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

    return-object v0
.end method

.method public getSharePluginButtonID()I
    .locals 1

    iget v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginButtonId:I

    return v0
.end method

.method public onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-interface {p3, v0, v1, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;->onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    goto :goto_0
.end method

.method public onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const v3, 0x7f0a009d

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    iput-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    return-void
.end method

.method public setPluginFooterButton(Lcom/htc/album/modules/ui/widget/FooterButton;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

    :cond_0
    return-void
.end method

.method public setSharePluginButtonID(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginButtonId:I

    return-void
.end method
