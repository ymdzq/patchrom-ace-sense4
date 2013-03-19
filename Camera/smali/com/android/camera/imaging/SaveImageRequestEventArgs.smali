.class public Lcom/android/camera/imaging/SaveImageRequestEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "SaveImageRequestEventArgs.java"


# instance fields
.field public final saveImageTask:Lcom/android/camera/imaging/SaveImageTask;


# direct methods
.method public constructor <init>(Lcom/android/camera/imaging/SaveImageTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/imaging/SaveImageRequestEventArgs;->saveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    return-void
.end method
