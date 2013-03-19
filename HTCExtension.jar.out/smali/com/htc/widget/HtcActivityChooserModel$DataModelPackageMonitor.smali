.class final Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "HtcActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataModelPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcActivityChooserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;-><init>(Lcom/htc/widget/HtcActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$1100(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$1600(Lcom/htc/widget/HtcActivityChooserModel;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$1100(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$1600(Lcom/htc/widget/HtcActivityChooserModel;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$1100(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/htc/widget/HtcActivityChooserModel;->access$1700(Lcom/htc/widget/HtcActivityChooserModel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$1600(Lcom/htc/widget/HtcActivityChooserModel;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #getter for: Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$1100(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/htc/widget/HtcActivityChooserModel;->access$1700(Lcom/htc/widget/HtcActivityChooserModel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;->this$0:Lcom/htc/widget/HtcActivityChooserModel;

    #calls: Lcom/htc/widget/HtcActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Lcom/htc/widget/HtcActivityChooserModel;->access$1600(Lcom/htc/widget/HtcActivityChooserModel;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
