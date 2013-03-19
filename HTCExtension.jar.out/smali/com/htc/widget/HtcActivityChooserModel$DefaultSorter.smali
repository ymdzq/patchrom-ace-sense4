.class final Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 1.0f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget/HtcActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcActivityChooserModel;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;-><init>(Lcom/htc/widget/HtcActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v8, p0, Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mIsDefaultOrder:Z
    invoke-static {v8}, Lcom/htc/widget/HtcActivityChooserModel;->access$600(Lcom/htc/widget/HtcActivityChooserModel;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    const/4 v9, 0x0

    #setter for: Lcom/htc/widget/HtcActivityChooserModel;->mIsDefaultOrder:Z
    invoke-static {v8, v9}, Lcom/htc/widget/HtcActivityChooserModel;->access$602(Lcom/htc/widget/HtcActivityChooserModel;Z)Z

    iget-object v8, p0, Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->setDefaultWeight(ILjava/util/List;)V
    invoke-static {v8, v1, p2}, Lcom/htc/widget/HtcActivityChooserModel;->access$700(Lcom/htc/widget/HtcActivityChooserModel;ILjava/util/List;)V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    const/4 v8, 0x0

    iput v8, v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    iget-object v8, v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    const/high16 v5, 0x3f80

    move v3, v4

    :goto_1
    if-ltz v3, :cond_3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;

    iget-object v8, v2, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    if-eqz v0, :cond_2

    iget v8, v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v9, v2, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iput v8, v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    const/high16 v8, 0x3f80

    mul-float/2addr v5, v8

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
