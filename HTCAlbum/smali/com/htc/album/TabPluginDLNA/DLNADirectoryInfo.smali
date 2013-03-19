.class public Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
.super Ljava/lang/Object;
.source "DLNADirectoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPORT_PLACEHOLDER:Ljava/lang/String; = "###"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mID:Ljava/lang/String;

.field private mIndexPage:I

.field private mListPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addFilePage(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_2

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    :cond_1
    :goto_1
    sget-object v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DLNADirectoryInfo]Add File page"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto :goto_1
.end method

.method public createEmtpyPage()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    :goto_0
    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][DLNADirectoryInfo]Add New empty page..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public exportPages()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    if-le v3, v2, :cond_2

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-nez v4, :cond_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    :cond_0
    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageCurrent]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gt v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    return-object v1
.end method

.method public getPageInfo(I)Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    if-ltz p1, :cond_1

    if-gt v0, p1, :cond_2

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-object v2, v1

    goto :goto_0
.end method

.method public getPageNext()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Create first page..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    :goto_0
    invoke-virtual {v1, v7}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: DirN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Mid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Bot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v3, v7}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    move-object v3, v1

    :goto_1
    return-object v3

    :cond_0
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v3, v3, 0x1

    if-le v0, v3, :cond_1

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Next page..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto/16 :goto_0

    :cond_1
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-lt v3, v0, :cond_2

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: index is out of pagesize"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Create new page..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: sync previous info"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto/16 :goto_0
.end method

.method public getPagePrevious()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gtz v5, :cond_1

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gt v9, v5, :cond_2

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    :cond_2
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gez v5, :cond_3

    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    :cond_3
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: DirN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Prev Bot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    :cond_4
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Dir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Mid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Bot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v5, v9}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    move-object v2, v1

    goto/16 :goto_0
.end method

.method public getPageRoot()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-nez v0, :cond_0

    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    invoke-virtual {v1, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v1, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    invoke-virtual {v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    invoke-virtual {v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    invoke-virtual {v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    goto :goto_0
.end method

.method public getPageSize()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public importPages(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-le v1, v0, :cond_0

    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public printCurrentPageLog()V
    .locals 0

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    const-class v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public removeAllPages()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    :cond_0
    return-void
.end method

.method public setCurrentPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
