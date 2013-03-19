.class public interface abstract Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFileOperationDialogCallBack"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onConfirm(Ljava/lang/String;Ljava/lang/String;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;Z)V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onSkip(Z)V
.end method
