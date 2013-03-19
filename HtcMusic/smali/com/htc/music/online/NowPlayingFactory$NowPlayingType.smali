.class public final enum Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;
.super Ljava/lang/Enum;
.source "NowPlayingFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/NowPlayingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NowPlayingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

.field public static final enum LOCAL:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

.field public static final enum ONLINE:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->LOCAL:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    new-instance v0, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->ONLINE:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    sget-object v1, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->LOCAL:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->ONLINE:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->$VALUES:[Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->$VALUES:[Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    invoke-virtual {v0}, [Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    return-object v0
.end method
