.class public Lcom/htc/preference/HtcPreference;
.super Ljava/lang/Object;
.source "HtcPreference.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/htc/preference/HtcOnDependencyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreference$BaseSavedState;,
        Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/preference/HtcPreference;",
        ">;",
        "Lcom/htc/preference/HtcOnDependencyChangeListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasBoundView:Z

.field private mHasSpecifiedLayout:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIconVisibility:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

.field private mNeedModifyLayout:Z

.field private mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

.field private mOrder:I

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mWidgetLayoutResId:I

.field private margin_m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 442
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 433
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v7, 0x10900bc

    const v6, 0x1010091

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    .line 136
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    .line 138
    const v3, 0x7fffffff

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    .line 151
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    .line 152
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    .line 154
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    .line 157
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    .line 162
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    .line 164
    iput v7, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    .line 166
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 167
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mNeedModifyLayout:Z

    .line 273
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    .line 275
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 277
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    :cond_0
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 283
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    const v3, 0x101008f

    if-eq p3, v3, :cond_2

    if-ne p3, v6, :cond_3

    .line 288
    :cond_2
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mNeedModifyLayout:Z

    .line 291
    :cond_3
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_4

    .line 294
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 295
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 293
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 297
    :pswitch_0
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    goto :goto_1

    .line 301
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 305
    :pswitch_2
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 310
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 314
    :pswitch_4
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    goto :goto_1

    .line 318
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 323
    :pswitch_6
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 337
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 327
    :sswitch_0
    iput v7, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 331
    :sswitch_1
    const v3, 0x10900be

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 334
    :sswitch_2
    const v3, 0x10900c0

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 342
    :pswitch_7
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 346
    :pswitch_8
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    goto :goto_1

    .line 350
    :pswitch_9
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    goto :goto_1

    .line 354
    :pswitch_a
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    goto :goto_1

    .line 358
    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    .line 362
    :pswitch_c
    invoke-virtual {p0, v0, v1}, Lcom/htc/preference/HtcPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 366
    :pswitch_d
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    goto/16 :goto_1

    .line 370
    .end local v1           #attr:I
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    if-ne p3, v6, :cond_5

    .line 373
    const v3, 0x10900bf

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    .line 375
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.preference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 377
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 379
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;->applyExtendedAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 380
    return-void

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
    .end packed-switch

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x1090002 -> :sswitch_1
        0x109006a -> :sswitch_0
        0x109006b -> :sswitch_1
        0x109006e -> :sswitch_2
        0x1090070 -> :sswitch_0
        0x1090072 -> :sswitch_0
    .end sparse-switch
.end method

.method private applyExtendedAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 395
    new-array v3, v6, [I

    const v4, 0x1010002

    aput v4, v3, v5

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 399
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 402
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 405
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 399
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 407
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 408
    iput-boolean v6, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    goto :goto_1

    .line 413
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 414
    return-void

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    .line 1803
    .local v0, shouldPersist:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1804
    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1805
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1810
    :cond_1
    :goto_0
    return-void

    .line 1808
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1633
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1642
    :goto_0
    return-void

    .line 1635
    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 1636
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_1

    .line 1637
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;->registerDependent(Lcom/htc/preference/HtcPreference;)V

    goto :goto_0

    .line 1639
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1687
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/htc/preference/HtcPreference;->onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V

    .line 1688
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 975
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 977
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 978
    check-cast v1, Landroid/view/ViewGroup;

    .line 979
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 980
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/htc/preference/HtcPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 979
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 983
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private syncIconDrawable()Z
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 901
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private syncIconVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 915
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 916
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    if-eqz v1, :cond_1

    .line 917
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    :goto_0
    const/4 v0, 0x1

    .line 923
    :cond_0
    return v0

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 1833
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1835
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1836
    :catch_0
    move-exception v0

    .line 1840
    .local v0, unused:Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1646
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 1647
    .local v0, oldDependency:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 1648
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;->unregisterDependent(Lcom/htc/preference/HtcPreference;)V

    .line 1651
    .end local v0           #oldDependency:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1702
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .parameter "newValue"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 2
    .parameter "another"

    .prologue
    const v1, 0x7fffffff

    .line 1552
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-eq v0, v1, :cond_1

    .line 1555
    :cond_0
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    iget v1, p1, Lcom/htc/preference/HtcPreference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1562
    :goto_0
    return v0

    .line 1556
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1557
    const/4 v0, 0x1

    goto :goto_0

    .line 1558
    :cond_2
    iget-object v0, p1, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1559
    const/4 v0, -0x1

    goto :goto_0

    .line 1562
    :cond_3
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    check-cast p1, Lcom/htc/preference/HtcPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 2269
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2270
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2271
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2272
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2273
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2274
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2275
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2280
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 2208
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2209
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2210
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2211
    .local v0, state:Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2212
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2215
    :cond_0
    if-eqz v0, :cond_1

    .line 2216
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2219
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 1664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_1

    .line 1665
    :cond_0
    const/4 v0, 0x0

    .line 1668
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 834
    const/4 v0, 0x0

    .line 836
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1518
    const/4 v0, 0x0

    .line 1521
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2166
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2167
    .local v2, title:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2170
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2171
    .local v1, summary:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2174
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2178
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIconVisibility()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    return v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 1223
    iget-wide v0, p0, Lcom/htc/preference/HtcPreference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOnPreferenceFirstBindViewListener()Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 2137
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2141
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2045
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1989
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1993
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 2093
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2097
    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1943
    .local p1, defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1947
    .end local p1           #defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1       #defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1487
    const/4 v0, 0x0

    .line 1490
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 606
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 607
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSpecifiedLayout()Z
    .locals 1

    .prologue
    .line 2145
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1159
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 1294
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;)V

    .line 1583
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .parameter "disableDependents"

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    .line 1714
    .local v0, dependents:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    if-nez v0, :cond_1

    .line 1722
    :cond_0
    return-void

    .line 1718
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1719
    .local v1, dependentsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1720
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, p0, p1}, Lcom/htc/preference/HtcPreference;->onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V

    .line 1719
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/htc/preference/HtcPreference;)V

    .line 1594
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1628
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->registerDependency()V

    .line 1629
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 2
    .parameter "preferenceManager"

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    .line 1614
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/preference/HtcPreference;->mId:J

    .line 1616
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->dispatchSetInitialValue()V

    .line 1617
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const v9, 0x1020006

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 749
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 750
    .local v4, textView:Landroid/widget/TextView;
    iput-object v4, p0, Lcom/htc/preference/HtcPreference;->mTitleView:Landroid/widget/TextView;

    .line 751
    if-eqz v4, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    :cond_0
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 756
    .restart local v4       #textView:Landroid/widget/TextView;
    iput-object v4, p0, Lcom/htc/preference/HtcPreference;->mSummaryView:Landroid/widget/TextView;

    .line 757
    if-eqz v4, :cond_2

    .line 758
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 759
    .local v3, summary:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 760
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 761
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    .end local v3           #summary:Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 773
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_6

    .line 774
    iget v7, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 775
    :cond_3
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_4

    .line 776
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 782
    :cond_4
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    :cond_6
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    .line 788
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    .line 790
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 792
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x20500e3

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 793
    .local v0, iconSize:I
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 794
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-le v5, v0, :cond_7

    .line 795
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 796
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 799
    :cond_7
    iget v5, p0, Lcom/htc/preference/HtcPreference;->margin_m:I

    invoke-virtual {v2, v6, v6, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 800
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 804
    .end local v0           #iconSize:I
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconVisibility()Z

    .line 805
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconDrawable()Z

    .line 807
    iget-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    if-eqz v5, :cond_9

    .line 808
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/htc/preference/HtcPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 812
    :cond_9
    iget-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    if-nez v5, :cond_a

    .line 813
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    .line 814
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    if-eqz v5, :cond_a

    .line 815
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    invoke-interface {v5, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;->onPreferenceFirstBindView(Lcom/htc/preference/HtcPreference;)V

    .line 818
    :cond_a
    return-void

    .line 766
    .end local v1           #imageView:Landroid/widget/ImageView;
    .restart local v3       #summary:Ljava/lang/CharSequence;
    :cond_b
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_2

    .line 767
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 1233
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25
    .parameter "parent"

    .prologue
    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 627
    .local v6, layoutInflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 628
    .local v5, layout:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x2050001

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/preference/HtcPreference;->margin_m:I

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x2050003

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 630
    .local v7, margin_xs:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x205000c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 631
    .local v12, spacing:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    move/from16 v21, v0

    const v22, 0x10900be

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 632
    const v21, 0x2080099

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 633
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v21, v5

    .line 634
    check-cast v21, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x2030048

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v21, v5

    .line 635
    check-cast v21, Landroid/widget/TextView;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setAllCaps(Z)V

    move-object/from16 v21, v5

    .line 636
    check-cast v21, Landroid/widget/TextView;

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object/from16 v21, v5

    .line 637
    check-cast v21, Landroid/widget/TextView;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setClickable(Z)V

    move-object/from16 v21, v5

    .line 638
    check-cast v21, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x2050107

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 641
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    move/from16 v21, v0

    const v22, 0x10900bc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 642
    const v21, 0x208003b

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v12, v1, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 644
    const v21, 0x1020016

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 645
    .local v16, title:Landroid/widget/TextView;
    const v21, 0x1020010

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 646
    .local v13, summary:Landroid/widget/TextView;
    if-eqz v16, :cond_1

    if-eqz v13, :cond_1

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x2030038

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x2030042

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 649
    sget-object v21, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 650
    sget-object v21, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 653
    .end local v13           #summary:Landroid/widget/TextView;
    .end local v16           #title:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    move/from16 v21, v0

    const v22, 0x10900c5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 655
    const v21, 0x208003b

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 656
    const v21, 0x10202d9

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/SeekBar;

    .line 658
    .local v10, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v10}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 659
    .local v11, seekBarParent:Landroid/widget/RelativeLayout;
    if-eqz v11, :cond_2

    .line 661
    const v21, 0x1020016

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 662
    .restart local v16       #title:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x2030038

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 663
    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    const v21, 0x1020010

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 665
    .restart local v13       #summary:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x2030042

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 666
    sget-object v21, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 667
    sget-object v21, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 669
    .end local v13           #summary:Landroid/widget/TextView;
    .end local v16           #title:Landroid/widget/TextView;
    :cond_2
    const v21, 0x1020018

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 670
    .local v19, widget_frame:Landroid/widget/LinearLayout;
    if-eqz v19, :cond_3

    .line 672
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 673
    .local v9, param:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 674
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    .end local v9           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10           #seekBar:Landroid/widget/SeekBar;
    .end local v11           #seekBarParent:Landroid/widget/RelativeLayout;
    .end local v19           #widget_frame:Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 680
    const v21, 0x1020018

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 681
    .local v18, widgetFrame:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 683
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreference;->mNeedModifyLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    if-eqz v21, :cond_4

    .line 684
    const v21, 0x1020001

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_6

    .line 685
    const v21, 0x1020001

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 686
    .local v4, checkboxView:Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v20

    .line 688
    .local v20, x:I
    new-instance v8, Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Lcom/htc/widget/HtcCheckBox;-><init>(Landroid/content/Context;)V

    .line 689
    .local v8, newCheckbox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcCheckBox;->setId(I)V

    .line 692
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 693
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 694
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x1

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    const v21, 0x1020001

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcCheckBox;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 696
    const v21, 0x1020001

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcCheckBox;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 697
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 698
    .restart local v9       #param:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 699
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    .end local v4           #checkboxView:Landroid/view/View;
    .end local v8           #newCheckbox:Lcom/htc/widget/HtcCheckBox;
    .end local v9           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v18           #widgetFrame:Landroid/view/ViewGroup;
    .end local v20           #x:I
    :cond_4
    :goto_0
    const v21, 0x10202da

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Switch;

    .line 709
    .local v15, switchwidget:Landroid/widget/Switch;
    if-eqz v15, :cond_5

    .line 711
    const-string v21, "HTCPreference"

    const-string v22, "switchwidget!=null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v17, Lcom/htc/widget/HtcToggleButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 713
    .local v17, toggleButton:Lcom/htc/widget/HtcToggleButton;
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 714
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setFocusable(Z)V

    .line 715
    const v21, 0x10202da

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setId(I)V

    .line 723
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 724
    invoke-virtual {v15}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v20

    .line 725
    .restart local v20       #x:I
    invoke-virtual {v15}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 727
    .local v14, switchParent:Landroid/view/ViewGroup;
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 728
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 731
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v12, v1, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 734
    .end local v14           #switchParent:Landroid/view/ViewGroup;
    .end local v17           #toggleButton:Lcom/htc/widget/HtcToggleButton;
    .end local v20           #x:I
    :cond_5
    return-object v5

    .line 701
    .end local v15           #switchwidget:Landroid/widget/Switch;
    .restart local v18       #widgetFrame:Landroid/view/ViewGroup;
    :cond_6
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0
.end method

.method public onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V
    .locals 1
    .parameter "dependency"
    .parameter "disableDependent"

    .prologue
    .line 1735
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1736
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    .line 1739
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    .line 1741
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1743
    :cond_0
    return-void

    .line 1736
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1453
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1786
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->unregisterDependency()V

    .line 1787
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2298
    sget-object v0, Lcom/htc/preference/HtcPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 2299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2301
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2239
    sget-object v0, Lcom/htc/preference/HtcPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 1830
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method performClick(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 4
    .parameter "preferenceScreen"

    .prologue
    .line 1419
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->onClick()V

    .line 1425
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1429
    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 1430
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    if-eqz v2, :cond_3

    .line 1431
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getOnPreferenceTreeClickListener()Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1433
    .local v1, listener:Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1439
    .end local v1           #listener:Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1441
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2111
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2112
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 2122
    :goto_0
    return v2

    .line 2117
    :cond_1
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2118
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2119
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 2122
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 2011
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2012
    const/high16 v2, 0x7fc0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 2022
    :goto_0
    return v1

    .line 2017
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2018
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 2019
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 2022
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1962
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1963
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1973
    :goto_0
    return v1

    .line 1968
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1969
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1970
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1973
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 2063
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2064
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/htc/preference/HtcPreference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 2074
    :goto_0
    return v1

    .line 2069
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2070
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2071
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 2074
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1859
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1861
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1871
    :goto_0
    return v1

    .line 1866
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1867
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1868
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1871
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1911
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1913
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1923
    :goto_0
    return v1

    .line 1918
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1919
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1920
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1923
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mRequiresKey:Z

    .line 1272
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 2255
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2256
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 2194
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 2195
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    .line 1798
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .parameter "dependencyKey"

    .prologue
    .line 1763
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->unregisterDependency()V

    .line 1766
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    .line 1767
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->registerDependency()V

    .line 1768
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1144
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    .line 1147
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    .line 1149
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1151
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "iconResId"

    .prologue
    .line 1090
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    .line 1091
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1075
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 1076
    :cond_1
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    .line 1078
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconDrawable()Z

    .line 1079
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1081
    :cond_2
    return-void
.end method

.method public setIconVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 880
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    if-eq v0, p1, :cond_0

    .line 881
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    .line 882
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconVisibility()Z

    .line 883
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 885
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    .line 469
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    .line 1244
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->requireKey()V

    .line 1247
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .parameter "layoutResId"

    .prologue
    .line 537
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 542
    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    .line 543
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    .line 1574
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V
    .locals 0
    .parameter "onPreferenceChangeListener"

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 1372
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V
    .locals 0
    .parameter "onPreferenceClickListener"

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    .line 1395
    return-void
.end method

.method public setOnPreferenceFirstBindViewListener(Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    .line 1347
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 999
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 1000
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    .line 1003
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyHierarchyChanged()V

    .line 1005
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .parameter "persistent"

    .prologue
    .line 1322
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    .line 1323
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .parameter "selectable"

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 1169
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    .line 1170
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1172
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .parameter "shouldDisableView"

    .prologue
    .line 1199
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    .line 1200
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1201
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1134
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 1120
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1121
    :cond_1
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    .line 1122
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1124
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1042
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    .line 1043
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1027
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1028
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    .line 1029
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    .line 1030
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1032
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .parameter "widgetLayoutResId"

    .prologue
    .line 569
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 573
    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    .line 574
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1538
    const/4 v0, 0x0

    .line 1541
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1752
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2150
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
