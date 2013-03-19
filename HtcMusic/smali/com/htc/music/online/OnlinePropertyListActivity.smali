.class public Lcom/htc/music/online/OnlinePropertyListActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "OnlinePropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;
    }
.end annotation


# static fields
.field public static final KEY_ALBUM_NAME:Ljava/lang/String; = "Album Name"

.field public static final KEY_DETAIL_URL:Ljava/lang/String; = "Location"

.field public static final KEY_PLAY_TIME:Ljava/lang/String; = "Play Time"

.field public static final KEY_SINGER_NAME:Ljava/lang/String; = "Singer Name"

.field public static final KEY_STYLE:Ljava/lang/String; = "Style"

.field public static final KEY_TRACK_DESC:Ljava/lang/String; = "Description"

.field public static final KEY_TRACK_NAME:Ljava/lang/String; = "Song Name"


# instance fields
.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mPropertiesDatasource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPropertyAdapter:Landroid/widget/BaseAdapter;

.field private mPropertyList:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 86
    new-instance v0, Lcom/htc/music/online/OnlinePropertyListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/OnlinePropertyListActivity$1;-><init>(Lcom/htc/music/online/OnlinePropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertyAdapter:Landroid/widget/BaseAdapter;

    .line 138
    new-instance v0, Lcom/htc/music/online/OnlinePropertyListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/OnlinePropertyListActivity$2;-><init>(Lcom/htc/music/online/OnlinePropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/online/OnlinePropertyListActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/online/OnlinePropertyListActivity;Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/music/online/OnlinePropertyListActivity;->isLocationItem(Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;)Z

    move-result v0

    return v0
.end method

.method private getPropertyItemHolder(Ljava/lang/String;I)Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;
    .locals 3
    .parameter "key"
    .parameter "titleRes"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/htc/music/online/OnlinePropertyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 80
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;-><init>(Lcom/htc/music/online/OnlinePropertyListActivity;Lcom/htc/music/online/OnlinePropertyListActivity$1;)V

    .line 81
    .local v0, holder:Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;
    invoke-virtual {p0, p2}, Lcom/htc/music/online/OnlinePropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;->title:Ljava/lang/String;

    .line 82
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;->value:Ljava/lang/String;

    .line 83
    return-object v0
.end method

.method private initDataSource()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;

    const-string v1, "Song Name"

    const v2, 0x7f070080

    invoke-direct {p0, v1, v2}, Lcom/htc/music/online/OnlinePropertyListActivity;->getPropertyItemHolder(Ljava/lang/String;I)Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;

    const-string v1, "Singer Name"

    const v2, 0x7f070081

    invoke-direct {p0, v1, v2}, Lcom/htc/music/online/OnlinePropertyListActivity;->getPropertyItemHolder(Ljava/lang/String;I)Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;

    const-string v1, "Play Time"

    const v2, 0x7f07007e

    invoke-direct {p0, v1, v2}, Lcom/htc/music/online/OnlinePropertyListActivity;->getPropertyItemHolder(Ljava/lang/String;I)Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;

    const-string v1, "Style"

    const v2, 0x7f070083

    invoke-direct {p0, v1, v2}, Lcom/htc/music/online/OnlinePropertyListActivity;->getPropertyItemHolder(Ljava/lang/String;I)Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;

    const-string v1, "Album Name"

    const v2, 0x7f070082

    invoke-direct {p0, v1, v2}, Lcom/htc/music/online/OnlinePropertyListActivity;->getPropertyItemHolder(Ljava/lang/String;I)Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;

    const-string v1, "Location"

    const v2, 0x7f070088

    invoke-direct {p0, v1, v2}, Lcom/htc/music/online/OnlinePropertyListActivity;->getPropertyItemHolder(Ljava/lang/String;I)Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method private isLocationItem(Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;)Z
    .locals 2
    .parameter "holder"

    .prologue
    .line 150
    iget-object v0, p1, Lcom/htc/music/online/OnlinePropertyListActivity$PropertyItemHolder;->title:Ljava/lang/String;

    .line 151
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 152
    const v1, 0x7f070088

    invoke-virtual {p0, v1}, Lcom/htc/music/online/OnlinePropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 154
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/htc/music/online/OnlinePropertyListActivity;->setContentView(I)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertiesDatasource:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lcom/htc/music/online/OnlinePropertyListActivity;->initDataSource()V

    .line 52
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/htc/music/online/OnlinePropertyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    .line 53
    iget-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertyAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v0, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/online/OnlinePropertyListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 55
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 59
    :cond_0
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/htc/music/online/OnlinePropertyListActivity;->setTitle(I)V

    .line 60
    return-void
.end method
