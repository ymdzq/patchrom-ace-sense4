.class Lcom/htc/music/LandingPageActivity$BaseItem;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseItem"
.end annotation


# instance fields
.field private isOnline:Z

.field private mArtPath:Ljava/lang/String;

.field mId:I

.field private mPrimaryText:Ljava/lang/String;

.field private mSecondaryText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2099
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z

    .line 2100
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mId:I

    .line 2101
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 2102
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 2103
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 2104
    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/LandingPageActivity$BaseItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2090
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/htc/music/LandingPageActivity$BaseItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2090
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/htc/music/LandingPageActivity$BaseItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2090
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2090
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2090
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2090
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$BaseItem;->getArtPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mArtPath:Ljava/lang/String;

    return-object v0
.end method

.method private getId()I
    .locals 1

    .prologue
    .line 2123
    iget v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mId:I

    return v0
.end method

.method private getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    return-object v0
.end method

.method private getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected setArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 2120
    return-void
.end method

.method protected setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 2107
    iput p1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mId:I

    .line 2108
    return-void
.end method

.method protected setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 2112
    return-void
.end method

.method protected setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 2115
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 2116
    return-void
.end method
