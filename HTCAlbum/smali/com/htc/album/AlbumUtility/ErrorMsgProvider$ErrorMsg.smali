.class public Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
.super Ljava/lang/Object;
.source "ErrorMsgProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumUtility/ErrorMsgProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMsg"
.end annotation


# instance fields
.field mResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x20401fe

    iput v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x20401fe

    iput v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    iput p1, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    return-void
.end method


# virtual methods
.method public getMsg()I
    .locals 1

    iget v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    return v0
.end method
