.class public Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
.source "AbsSinaMusicAutoHeaderFooterListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicAutoHeaderFooterListActivity]"


# instance fields
.field public BROWSE_TYPE:I

.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mEditor:Landroid/widget/EditText;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mList:Lcom/htc/widget/HtcListView;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mOrientation:I

.field private mRequestFocus:Ljava/lang/Runnable;

.field private mSearchHint:I

.field private mTitleBar:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;-><init>()V

    .line 27
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->BROWSE_TYPE:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOrientation:I

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mHandler:Landroid/os/Handler;

    .line 40
    iput-boolean v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mFinishedStart:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 44
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$1;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$2;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 192
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$3;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 204
    iput v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mSearchHint:I

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->ensureList()V

    .line 164
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method protected getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected hideSearchBar()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 276
    iget v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOrientation:I

    .line 280
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->resetSDErrorLayout()V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onContentChanged()V

    .line 86
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 88
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 96
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-static {v1, v3, v3}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;ZZ)V

    .line 99
    iget-boolean v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mFinishedStart:Z

    .line 104
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 62
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 253
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 255
    return-void

    .line 253
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->ensureList()V

    .line 76
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->requestLayout()V

    .line 115
    :cond_0
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 266
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 270
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 284
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->ensureList()V

    .line 123
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 125
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    :cond_1
    monitor-exit p0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setSearchHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 209
    iput p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mSearchHint:I

    .line 210
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 143
    return-void
.end method

.method showInputMethod(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 216
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 217
    :cond_2
    if-eqz p1, :cond_3

    .line 220
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 221
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public updateOptionsMenu()V
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 261
    :cond_0
    monitor-exit p0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
