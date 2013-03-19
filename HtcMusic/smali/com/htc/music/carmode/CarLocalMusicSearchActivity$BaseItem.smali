.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
.super Ljava/lang/Object;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseItem"
.end annotation


# instance fields
.field private mArtPath:Ljava/lang/String;

.field mId:J

.field private mPrimaryText:Ljava/lang/String;

.field private mSecondaryText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 927
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 928
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mId:J

    .line 929
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 930
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 931
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 932
    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    return-object v0
.end method

.method private getId()J
    .locals 2

    .prologue
    .line 951
    iget-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mId:J

    return-wide v0
.end method

.method private getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    return-object v0
.end method

.method private getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected setArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 947
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 948
    return-void
.end method

.method protected setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 935
    iput-wide p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mId:J

    .line 936
    return-void
.end method

.method protected setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 939
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 940
    return-void
.end method

.method protected setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 943
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 944
    return-void
.end method
