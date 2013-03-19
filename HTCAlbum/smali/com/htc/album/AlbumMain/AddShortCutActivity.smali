.class public Lcom/htc/album/AlbumMain/AddShortCutActivity;
.super Lcom/htc/app/mf/MfFragment;
.source "AddShortCutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddShortCutActivity"

.field public static mAddTabPlug:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;


# instance fields
.field private mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

.field private mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

.field private mAdapter:Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsClick:Z

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mListview:Lcom/htc/widget/HtcListView;

.field private mMainView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAddTabPlug:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/app/mf/MfFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAdapter:Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mMainView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mListview:Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mIsClick:Z

    new-instance v0, Lcom/htc/album/AlbumMain/AddShortCutActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/AddShortCutActivity$1;-><init>(Lcom/htc/album/AlbumMain/AddShortCutActivity;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/AlbumMain/AddShortCutActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mIsClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/album/AlbumMain/AddShortCutActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mIsClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/AlbumMain/AddShortCutActivity;)Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAdapter:Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/AlbumMain/AddShortCutActivity;)Lcom/htc/album/AlbumMain/MfMainActivityBase;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AddShortCutActivity;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v4

    check-cast v4, Lcom/htc/album/AlbumMain/MfMainActivityBase;

    check-cast v4, Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iput-object v4, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iget-object v4, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v4}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iget-object v4, v4, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iput-object v4, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iget-object v4, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const v5, 0x7f0a019e

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setPrimaryText(I)V

    new-instance v4, Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

    iget-object v5, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAdapter:Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AddShortCutActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const-string v4, "listData"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    :cond_0
    iget-object v4, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAdapter:Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

    invoke-virtual {v4, v1}, Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;->setAdapterList(Ljava/util/List;)V

    iget-object v4, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAdapter:Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

    invoke-virtual {v4}, Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f03002b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mMainView:Landroid/view/View;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mListview:Lcom/htc/widget/HtcListView;

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mListview:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAdapter:Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mListview:Lcom/htc/widget/HtcListView;

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->ACTION_BAR_HEIGHT_DIMEN:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/htc/widget/HtcListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mListview:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mMainView:Landroid/view/View;

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onResume()V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAdapter:Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mListview:Lcom/htc/widget/HtcListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
