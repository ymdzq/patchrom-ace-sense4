.class Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;
.super Ljava/lang/Object;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Workaround"
.end annotation


# instance fields
.field private isSet:Z

.field private list:Lcom/htc/sunnyCore/IMediaList;

.field private selectedIndex:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    return v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->list:Lcom/htc/sunnyCore/IMediaList;

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    return-void
.end method

.method public setMediaListIRT_Workaround()V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->list:Lcom/htc/sunnyCore/IMediaList;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$000(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunnyCore/IMediaList;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    :cond_0
    return-void
.end method
