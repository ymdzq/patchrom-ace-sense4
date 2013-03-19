.class public Lcom/m0narx/tweaks/lockscreen_shortcuts$ShortcutInfo;
.super Ljava/lang/Object;
.source "lockscreen_shortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/lockscreen_shortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutInfo"
.end annotation


# instance fields
.field mAppName:Ljava/lang/String;

.field mClassName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$ShortcutInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$ShortcutInfo;->mClassName:Ljava/lang/String;

    iput-object p3, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$ShortcutInfo;->mAppName:Ljava/lang/String;

    return-void
.end method
