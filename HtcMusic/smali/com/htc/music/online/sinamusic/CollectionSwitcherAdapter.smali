.class public Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "CollectionSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$1;,
        Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$OnCollectionSwitcherItemClickListener;,
        Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final COLLECTION_FRIENDS_COLLECTION_TAG:Ljava/lang/String; = "FriendsCollectionBrowserTabPlugin"

.field public static final COLLECTION_MY_COLLECTION_TAG:Ljava/lang/String; = "MyCollectionBrowserTabPlugin"

.field private static ENABLE_MY_COLLECTION_SWITCHER:Z = false

.field private static final TAG:Ljava/lang/String; = "[CategorySwitcherAdapter]"


# instance fields
.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->ENABLE_MY_COLLECTION_SWITCHER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 52
    iput-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 64
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 66
    invoke-direct {p0, p1}, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->initialSourceItems(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.media/friendscollection"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-class v3, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    const-string v3, "InnerActivityType"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v3, "ShowActivityTitle"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string v3, "LaunchFromSwitcher"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    sget-boolean v3, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->ENABLE_MY_COLLECTION_SWITCHER:Z

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "ForceDisableDropDown"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    :goto_0
    new-instance v0, Lcom/htc/music/util/SourceItem;

    const-string v3, "FriendsCollectionBrowserTabPlugin"

    invoke-direct {v0, v3, v1}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 89
    .local v0, friendscollection:Lcom/htc/music/util/SourceItem;
    const v3, 0x7f0701e8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 90
    const v3, 0x7f020035

    iput v3, v0, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 92
    sget-boolean v3, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->ENABLE_MY_COLLECTION_SWITCHER:Z

    if-eqz v3, :cond_1

    .line 93
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.media/mycollection"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-class v3, Lcom/htc/music/online/MyCollectionBrowserActivityGrid;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    const-string v3, "InnerActivityType"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v3, "ShowActivityTitle"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v3, "LaunchFromSwitcher"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    const-string v3, "ForceDisableDropDown"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    new-instance v2, Lcom/htc/music/util/SourceItem;

    const-string v3, "MyCollectionBrowserTabPlugin"

    invoke-direct {v2, v3, v1}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 102
    .local v2, mycollection:Lcom/htc/music/util/SourceItem;
    const v3, 0x7f0701ef

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 103
    const v3, 0x7f02001f

    iput v3, v2, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 104
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/htc/music/util/SourceItem;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    iput-object v3, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 108
    .end local v2           #mycollection:Lcom/htc/music/util/SourceItem;
    :goto_1
    return-void

    .line 86
    .end local v0           #friendscollection:Lcom/htc/music/util/SourceItem;
    :cond_0
    const-string v3, "ForceDisableDropDown"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 106
    .restart local v0       #friendscollection:Lcom/htc/music/util/SourceItem;
    :cond_1
    new-array v3, v5, [Lcom/htc/music/util/SourceItem;

    aput-object v0, v3, v4

    iput-object v3, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 120
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 130
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 131
    :cond_0
    const-wide/16 v0, -0x1

    .line 134
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;
    .locals 3
    .parameter "tag"

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    .line 192
    :goto_1
    return-object v1

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 140
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v2, v2

    if-gt v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 164
    :goto_0
    return-object v2

    .line 144
    :cond_1
    if-nez p2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f030066

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 146
    new-instance v0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$1;)V

    .line 150
    .local v0, holder:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;
    const v2, 0x7f080050

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 151
    iget-object v2, v0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x2030016

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 152
    iget-object v2, v0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 154
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    .end local v0           #holder:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;

    .line 158
    .restart local v0       #holder:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v2, p1

    .line 162
    .local v1, item:Lcom/htc/music/util/SourceItem;
    iget-object v2, v0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v2, p2

    .line 164
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
