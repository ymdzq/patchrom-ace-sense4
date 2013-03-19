.class public Lcom/htc/dialog/HtcAlertController$AlertParams;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAutoLinkMask:I

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mDefaultIcon:Z

.field public mForceInverseBackground:Z

.field public mHtcContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsAutoMotive:Z

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonDisabled:Z

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonDisabled:Z

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonDisabled:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCenter:Z

.field public mTitleDivider:Z

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1338
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    iput v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    .line 1235
    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1255
    iput v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1281
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1304
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    .line 1306
    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 1308
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mDefaultIcon:Z

    .line 1314
    iput v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 1320
    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    .line 1339
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1340
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    .line 1341
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    .line 1342
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1343
    return-void
.end method

.method private createListView(Lcom/htc/dialog/HtcAlertController;)V
    .locals 13
    .parameter "dialog"

    .prologue
    .line 1431
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090080

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 1432
    .local v6, listView:Landroid/widget/ListView;
    if-nez v6, :cond_0

    .line 1555
    :goto_0
    return-void

    .line 1435
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1436
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 1437
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1440
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_7

    .line 1441
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_6

    .line 1443
    const v3, 0x2090085

    .line 1444
    .local v3, layout:I
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    if-eqz v1, :cond_1

    .line 1445
    const v3, 0x209007e

    .line 1448
    :cond_1
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    const v4, 0x1020014

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$1;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 1513
    .end local v3           #layout:I
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_1
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_2

    .line 1514
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1520
    :cond_2
    #setter for: Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/htc/dialog/HtcAlertController;->access$802(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1521
    iget v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/htc/dialog/HtcAlertController;->access$902(Lcom/htc/dialog/HtcAlertController;I)I

    .line 1523
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_d

    .line 1524
    new-instance v1, Lcom/htc/dialog/HtcAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$3;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1545
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4

    .line 1546
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1549
    :cond_4
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_e

    .line 1550
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1554
    :cond_5
    :goto_3
    #setter for: Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/htc/dialog/HtcAlertController;->access$1002(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    goto :goto_0

    .line 1463
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_6
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;

    iget-object v9, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/htc/dialog/HtcAlertController$AlertParams$2;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1496
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_7
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_9

    const v3, 0x2090086

    .line 1499
    .restart local v3       #layout:I
    :goto_4
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    if-eqz v1, :cond_8

    .line 1500
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    const v3, 0x209007f

    .line 1504
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_c

    .line 1505
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :goto_6
    goto :goto_1

    .line 1496
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #layout:I
    :cond_9
    const v3, 0x2090084

    goto :goto_4

    .line 1500
    .restart local v3       #layout:I
    :cond_a
    const v3, 0x209007d

    goto :goto_5

    .line 1505
    :cond_b
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    const v2, 0x1020014

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_6

    .line 1508
    :cond_c
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v2, v11, v1

    const/4 v1, 0x1

    new-array v12, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v12, v1

    move-object v7, v0

    move v9, v3

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto/16 :goto_1

    .line 1532
    .end local v3           #layout:I
    :cond_d
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_3

    .line 1533
    new-instance v1, Lcom/htc/dialog/HtcAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$4;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 1551
    :cond_e
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 1552
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_3
.end method


# virtual methods
.method public apply(Lcom/htc/dialog/HtcAlertController;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 1352
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    if-eqz v0, :cond_0

    .line 1353
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIsAutoMotive(Z)V

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1357
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1369
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1371
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    if-nez v0, :cond_10

    .line 1372
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1377
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1378
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1381
    :cond_3
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1382
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1385
    :cond_4
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1386
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1390
    :cond_5
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    if-eqz v0, :cond_6

    .line 1391
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    invoke-virtual {p1, v5, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1393
    :cond_6
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    if-eqz v0, :cond_7

    .line 1394
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    invoke-virtual {p1, v3, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1396
    :cond_7
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    if-eqz v0, :cond_8

    .line 1397
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    invoke-virtual {p1, v4, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1400
    :cond_8
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    if-nez v0, :cond_9

    .line 1401
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setInverseBackgroundForced(Z)V

    .line 1405
    :cond_9
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 1406
    :cond_a
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V

    .line 1408
    :cond_b
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1409
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_11

    .line 1410
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 1417
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitleDividerVisible(Z)V

    .line 1418
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitleCenterEnabled(Z)V

    .line 1427
    return-void

    .line 1359
    :cond_d
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 1360
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1362
    :cond_e
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 1363
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1365
    :cond_f
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_1

    .line 1366
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1374
    :cond_10
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    invoke-virtual {p1, v0, v1}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1413
    :cond_11
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;)V

    goto :goto_2
.end method
