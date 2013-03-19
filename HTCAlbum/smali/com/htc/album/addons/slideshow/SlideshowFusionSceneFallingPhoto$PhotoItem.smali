.class Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;
.super Ljava/lang/Object;
.source "SlideshowFusionSceneFallingPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoItem"
.end annotation


# instance fields
.field mIndex:I

.field mSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field mScene:Lcom/htc/fusion/fx/FxScene;

.field mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;Lcom/htc/fusion/fx/controls/FxSceneContainer;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput p3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mIndex:I

    return-void
.end method


# virtual methods
.method public bindScene()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][PhotoItem][bindScene] + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->unbindScene()V

    :cond_0
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v6, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImageIsPortrait:[Z

    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mIndex:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Port/photoItem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v7, v7, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mShuffleList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v8, v8, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mCurrentUsingShuffleListIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_P.m10"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v7, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mCurrentUsingShuffleListIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mCurrentUsingShuffleListIndex:I

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v6, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mCurrentUsingShuffleListIndex:I

    const/4 v7, 0x6

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iput v9, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mCurrentUsingShuffleListIndex:I

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-virtual {v6}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->buildShuffleList()V

    :cond_1
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v6, :cond_3

    :goto_1
    return-void

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Port/photoItem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v7, v7, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mShuffleList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v8, v8, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mCurrentUsingShuffleListIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_L.m10"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->sendToFront()V

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v7, "timeline.deform"

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v6

    check-cast v6, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v7, "falling"

    const/high16 v8, 0x3f80

    invoke-virtual {v6, v7, v9, v8, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-boolean v6, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIsPlaying:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v6, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem_Scene_Falling_PausedFrame:[F

    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mIndex:I

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v8}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v8

    aput v8, v6, v7

    :cond_4
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-class v7, Lcom/htc/fusion/fx/controls/FxMesh;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->getChildByType(Ljava/lang/Class;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxMesh;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxMesh;->getTextureBinding()Lcom/htc/fusion/fx/FxTextureBinding;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v6, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImage:[Lcom/htc/fusion/fx/FxImage;

    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v9}, Lcom/htc/fusion/fx/FxTextureBinding;->setImage(Lcom/htc/fusion/fx/FxImage;I)V

    :cond_5
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v6, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v7, "L_move"

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v8, v8, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v6, v7, v9, v8, v9}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;IFZ)V

    :goto_2
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-boolean v6, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIsPlaying:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/FxScene;->stop()V

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v6, v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem_ScenePausedFrame:[F

    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mIndex:I

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v8}, Lcom/htc/fusion/fx/FxScene;->getFrame()F

    move-result v8

    aput v8, v6, v7

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][PhotoItem][bindScene] - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v7, "P_move"

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v8, v8, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v6, v7, v9, v8, v9}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;IFZ)V

    goto :goto_2
.end method

.method public unbindScene()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-void
.end method
