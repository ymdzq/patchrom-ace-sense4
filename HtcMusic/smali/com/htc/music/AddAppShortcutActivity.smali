.class public Lcom/htc/music/AddAppShortcutActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "AddAppShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME_FM_RADIO:Ljava/lang/String; = "com.htc.fm"

.field private static final PACKAGE_NAME_GOOGLE_MUSIC:Ljava/lang/String; = "com.google.android.music"

.field private static final TAG:Ljava/lang/String; = "[AddAppShortcutActivity]"


# instance fields
.field mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCustList:[Ljava/lang/String;

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mResolveInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mCustList:[Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v0, Lcom/htc/music/AddAppShortcutActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/AddAppShortcutActivity$2;-><init>(Lcom/htc/music/AddAppShortcutActivity;)V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isDownloadedApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .parameter "rInfo"

    .prologue
    const/4 v1, 0x1

    .line 235
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 237
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    .line 239
    :cond_1
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 243
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AddAppShortcutActivity;->setVolumeControlStream(I)V

    .line 54
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AddAppShortcutActivity;->requestWindowFeature(I)Z

    .line 56
    const v3, 0x7f03003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AddAppShortcutActivity;->setContentView(I)V

    .line 59
    new-instance v10, Lcom/htc/widget/ActionBarText;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 60
    .local v10, actionBarTitle:Lcom/htc/widget/ActionBarText;
    const v3, 0x7f0701cf

    invoke-virtual {v10, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 62
    new-instance v9, Lcom/htc/widget/ActionBarExt;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 63
    .local v9, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v9}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v8

    .line 64
    .local v8, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v8, v10}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "currentpkg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 67
    .local v22, pkgNameList:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "currentcls"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 68
    .local v12, clsNameList:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "autoaddlist"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, autoAddList:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 70
    const-string v11, ""

    .line 74
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "customizationpkgstr"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 75
    .local v13, custListStr:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 76
    const-string v13, ""

    .line 79
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "customizationpkg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mCustList:[Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_2

    .line 85
    new-instance v3, Lcom/htc/music/AddAppShortcutActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/AddAppShortcutActivity$1;-><init>(Lcom/htc/music/AddAppShortcutActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.music.lockscreen_start"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/AddAppShortcutActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    :cond_3
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v25

    .line 102
    .local v25, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v17

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    new-instance v17, Landroid/content/Intent;

    .end local v17           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.bpmrss.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v17       #intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 112
    .local v23, pm:Landroid/content/pm/PackageManager;
    const/16 v18, 0x0

    .line 116
    .local v18, isExist:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mCustList:[Ljava/lang/String;

    if-eqz v3, :cond_8

    if-eqz v23, :cond_8

    .line 117
    const/16 v16, 0x0

    .line 118
    .local v16, info:Landroid/content/pm/ApplicationInfo;
    const/4 v14, 0x0

    .line 119
    .local v14, custPkgName:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mCustList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v15, v3, :cond_8

    .line 120
    const/16 v18, 0x0

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mCustList:[Ljava/lang/String;

    aget-object v14, v3, v15

    .line 123
    if-nez v14, :cond_5

    .line 119
    :cond_4
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 127
    :cond_5
    const/16 v20, 0x0

    .local v20, j:I
    :goto_2
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_6

    .line 128
    aget-object v3, v22, v20

    if-eqz v3, :cond_7

    aget-object v3, v22, v20

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 129
    const/16 v18, 0x1

    .line 134
    :cond_6
    if-nez v18, :cond_4

    .line 135
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/htc/music/online/Util;->getAppInfoIncludeDisable(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 136
    if-eqz v16, :cond_4

    .line 139
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v19, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Icon"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v3, "Name"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v3, "PkgName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    .end local v19           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 151
    .end local v14           #custPkgName:Ljava/lang/String;
    .end local v15           #i:I
    .end local v16           #info:Landroid/content/pm/ApplicationInfo;
    .end local v20           #j:I
    :cond_8
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_f

    .line 152
    const/16 v18, 0x0

    .line 153
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    .line 154
    .local v24, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/music/AddAppShortcutActivity;->isDownloadedApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "com.htc.fm"

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "com.google.android.music"

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 151
    :cond_9
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 163
    :cond_a
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 168
    if-eqz v22, :cond_d

    if-eqz v12, :cond_d

    .line 169
    const/16 v20, 0x0

    .restart local v20       #j:I
    :goto_5
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_d

    .line 170
    aget-object v3, v22, v20

    if-eqz v3, :cond_b

    aget-object v3, v22, v20

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 171
    aget-object v3, v12, v20

    if-eqz v3, :cond_c

    .line 172
    aget-object v3, v12, v20

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 173
    const/16 v18, 0x1

    .line 169
    :cond_b
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 176
    :cond_c
    const/16 v18, 0x1

    goto :goto_6

    .line 183
    .end local v20           #j:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 184
    const/16 v18, 0x1

    .line 187
    :cond_e
    if-nez v18, :cond_9

    .line 188
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 189
    .restart local v19       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Icon"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v3, "Name"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 197
    .end local v19           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_f
    new-instance v2, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    const/high16 v5, 0x7f03

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "Icon"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "Name"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 201
    .local v2, adapter:Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;
    const v3, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AddAppShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcListView;

    .line 202
    .local v21, listView:Lcom/htc/widget/HtcListView;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_10

    .line 207
    const v3, 0x7f0701d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AddAppShortcutActivity;->showEmptyView(I)V

    .line 210
    :cond_10
    return-void

    .line 197
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x8t 0x7ft
        0x6t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 218
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mCustList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mCustList:[Ljava/lang/String;

    .line 223
    :cond_0
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/AddAppShortcutActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 232
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AddAppShortcutActivity]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
