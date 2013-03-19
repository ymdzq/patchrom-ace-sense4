.class public Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;
.super Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;
.source "SlideAnimatorsFactory_Kabaeva.java"


# instance fields
.field public final DEBUG_REPLOG:Ljava/lang/String;

.field public final KENBUMS_FACE_ARRAY:Ljava/lang/String;

.field public final KENBUMS_FULL_HEIGHT:Ljava/lang/String;

.field public final KENBUMS_FULL_WIDTH:Ljava/lang/String;

.field public final LOG_TAG:Ljava/lang/String;

.field public kenbums:Lcom/htc/album/addons/slideshow/KenBums;

.field public final mDefaultScale:F

.field public final mVisionScaleRating:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;-><init>()V

    const-class v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    const-string v0, "KA>>> Animator "

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->DEBUG_REPLOG:Ljava/lang/String;

    const-string v0, "KenMums_face_array"

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->KENBUMS_FACE_ARRAY:Ljava/lang/String;

    const-string v0, "kenBums_photo_width"

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->KENBUMS_FULL_WIDTH:Ljava/lang/String;

    const-string v0, "kenBums_photo_height"

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->KENBUMS_FULL_HEIGHT:Ljava/lang/String;

    const v0, 0x3fa66666

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->mVisionScaleRating:F

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->mDefaultScale:F

    new-instance v0, Lcom/htc/album/addons/slideshow/KenBums;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/KenBums;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    return-void
.end method


# virtual methods
.method public createSlideAnimator(IIIILandroid/os/Bundle;)Lcom/htc/sunny2/slideshow/SlideAnimator;
    .locals 30

    const/16 v19, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "KenMums_face_array"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v2, "kenBums_photo_width"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string v2, "kenBums_photo_height"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> Animator KenBums Step0. Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Face: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PhotoFullWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PhotoFullHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ViewW: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ViewH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p3

    int-to-float v2, v0

    const v3, 0x3fa66666

    mul-float v23, v2, v3

    move/from16 v0, p4

    int-to-float v2, v0

    const v3, 0x3fa66666

    mul-float v22, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    move/from16 v0, v23

    float-to-int v3, v0

    move/from16 v0, v22

    float-to-int v4, v0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/htc/album/addons/slideshow/KenBums;->findFitScreenSize(IIII)Landroid/graphics/Rect;

    move-result-object v28

    const/4 v14, 0x0

    const/4 v13, 0x0

    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v14, v2

    move-object/from16 v0, v28

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v13, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> Animator KenBums Step1. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") -> ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_1

    if-eqz v5, :cond_1

    move/from16 v0, v21

    int-to-float v2, v0

    div-float v29, v14, v2

    const/16 v18, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/album/addons/slideshow/KenBums$Face;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointX:F

    mul-float v2, v2, v29

    move-object/from16 v0, v17

    iput v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointX:F

    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointY:F

    mul-float v2, v2, v29

    move-object/from16 v0, v17

    iput v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointY:F

    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mEyeDistance:F

    mul-float v2, v2, v29

    move-object/from16 v0, v17

    iput v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mEyeDistance:F

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v21

    int-to-float v14, v0

    move/from16 v0, v20

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> Animator [HTCAlbum][SlideAnimatorsFactor_Kabaeva][createSlideAnimator]: Photo small than View Rect !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    float-to-int v3, v14

    float-to-int v4, v13

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/addons/slideshow/KenBums;->analyzePhoto(IILjava/util/ArrayList;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_2
    if-eqz v19, :cond_4

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/KenBums;->getStartRect()Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/KenBums;->getEndRect()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v9, :cond_2

    if-nez v8, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> Animator [HTCAlbum][SlideAnimatorsFactors_Kabaeva][createSlideAnimator]: getStartRect or getEndRect NG !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/16 v19, 0x0

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> Animator KenBums Step2. Start Rect: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "End Rect: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v27, Landroid/graphics/Point;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v25, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v2, v13, v2

    float-to-int v2, v2

    move-object/from16 v0, v27

    iput v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v25

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v2, v13, v2

    float-to-int v2, v2

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Point;->y:I

    new-instance v26, Landroid/graphics/Point;

    const/high16 v2, 0x4000

    div-float v2, v14, v2

    float-to-int v2, v2

    const/high16 v3, 0x4000

    div-float v3, v13, v3

    float-to-int v3, v3

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    move/from16 v0, v21

    int-to-float v2, v0

    div-float v16, v14, v2

    const-string v2, "SlideAnimator_PanAndZoom"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;

    move-result-object v10

    if-eqz v19, :cond_6

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1, v14, v13}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->init(IIFF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/KenBums;->getScale()F

    move-result v15

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1, v15}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->initKenBums(Landroid/graphics/Point;Landroid/graphics/Point;F)V

    :goto_4
    return-object v10

    :catch_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> Animator [HTCAlbum][SlideAnimatorsFactors_Kabaeva][createSlideAnimator]: Run kenbums.analyzePhoto NG !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> Animator [HTCAlbum][SlideAnimatorsFactors_Kabaeva][createSlideAnimator]: kenbums.analyzePhoto NG !!"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_6
    new-instance v24, Landroid/graphics/Point;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Point;-><init>()V

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1, v14, v13}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->init(IIFF)Z

    const/high16 v2, 0x4000

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->initKenBums(Landroid/graphics/Point;Landroid/graphics/Point;F)V

    goto :goto_4
.end method
