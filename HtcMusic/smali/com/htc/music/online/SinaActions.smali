.class public final enum Lcom/htc/music/online/SinaActions;
.super Ljava/lang/Enum;
.source "SinaActions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/online/SinaActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/online/SinaActions;

.field public static final enum ADD_TO_FAVORITE:Lcom/htc/music/online/SinaActions;

.field public static final enum GET_COLLECTION_DETAIL:Lcom/htc/music/online/SinaActions;

.field public static final enum GET_FIRST_COLLECTION:Lcom/htc/music/online/SinaActions;

.field public static final enum GET_NEXT_COLLECTION:Lcom/htc/music/online/SinaActions;

.field public static final enum PLAY_ALL:Lcom/htc/music/online/SinaActions;

.field public static final enum SHARE_TO_WEIBO:Lcom/htc/music/online/SinaActions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/htc/music/online/SinaActions;

    const-string v1, "PLAY_ALL"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/online/SinaActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/online/SinaActions;->PLAY_ALL:Lcom/htc/music/online/SinaActions;

    .line 5
    new-instance v0, Lcom/htc/music/online/SinaActions;

    const-string v1, "SHARE_TO_WEIBO"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/online/SinaActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/online/SinaActions;->SHARE_TO_WEIBO:Lcom/htc/music/online/SinaActions;

    .line 6
    new-instance v0, Lcom/htc/music/online/SinaActions;

    const-string v1, "GET_FIRST_COLLECTION"

    invoke-direct {v0, v1, v5}, Lcom/htc/music/online/SinaActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/online/SinaActions;->GET_FIRST_COLLECTION:Lcom/htc/music/online/SinaActions;

    .line 7
    new-instance v0, Lcom/htc/music/online/SinaActions;

    const-string v1, "GET_NEXT_COLLECTION"

    invoke-direct {v0, v1, v6}, Lcom/htc/music/online/SinaActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/online/SinaActions;->GET_NEXT_COLLECTION:Lcom/htc/music/online/SinaActions;

    .line 8
    new-instance v0, Lcom/htc/music/online/SinaActions;

    const-string v1, "GET_COLLECTION_DETAIL"

    invoke-direct {v0, v1, v7}, Lcom/htc/music/online/SinaActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/online/SinaActions;->GET_COLLECTION_DETAIL:Lcom/htc/music/online/SinaActions;

    .line 9
    new-instance v0, Lcom/htc/music/online/SinaActions;

    const-string v1, "ADD_TO_FAVORITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/music/online/SinaActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/online/SinaActions;->ADD_TO_FAVORITE:Lcom/htc/music/online/SinaActions;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/music/online/SinaActions;

    sget-object v1, Lcom/htc/music/online/SinaActions;->PLAY_ALL:Lcom/htc/music/online/SinaActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/online/SinaActions;->SHARE_TO_WEIBO:Lcom/htc/music/online/SinaActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/music/online/SinaActions;->GET_FIRST_COLLECTION:Lcom/htc/music/online/SinaActions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/music/online/SinaActions;->GET_NEXT_COLLECTION:Lcom/htc/music/online/SinaActions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/music/online/SinaActions;->GET_COLLECTION_DETAIL:Lcom/htc/music/online/SinaActions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/music/online/SinaActions;->ADD_TO_FAVORITE:Lcom/htc/music/online/SinaActions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/online/SinaActions;->$VALUES:[Lcom/htc/music/online/SinaActions;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/online/SinaActions;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/htc/music/online/SinaActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/SinaActions;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/online/SinaActions;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/music/online/SinaActions;->$VALUES:[Lcom/htc/music/online/SinaActions;

    invoke-virtual {v0}, [Lcom/htc/music/online/SinaActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/online/SinaActions;

    return-object v0
.end method
