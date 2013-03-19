.class public Lcom/sprint/dm/DeviceManagement$DmEntity;
.super Ljava/lang/Object;
.source "DeviceManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dm/DeviceManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DmEntity"
.end annotation


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    .line 46
    return-void
.end method
