.class Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;
.super Ljava/lang/Object;
.source "AbsSinaMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapseChildViewEndIRT()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 261
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 262
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0
.end method
