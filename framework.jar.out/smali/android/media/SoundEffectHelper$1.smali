.class Landroid/media/SoundEffectHelper$1;
.super Landroid/database/ContentObserver;
.source "SoundEffectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SoundEffectHelper;->registerSettingsObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Landroid/media/SoundEffectHelper$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/SoundEffectHelper$1;->val$mContext:Landroid/content/Context;

    #calls: Landroid/media/SoundEffectHelper;->refreshCustomEQ(Landroid/content/Context;)V
    invoke-static {v0}, Landroid/media/SoundEffectHelper;->access$0(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
