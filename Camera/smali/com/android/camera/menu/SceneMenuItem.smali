.class public Lcom/android/camera/menu/SceneMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "SceneMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/SceneMenuItem$SubItem;
    }
.end annotation


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SceneList:Lcom/android/camera/effect/EffectList;

.field private m_ShowGroupShotItem:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/SceneMenuItem;->m_Items:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/menu/SceneMenuItem;->m_ShowGroupShotItem:Z

    iput-object p1, p0, Lcom/android/camera/menu/SceneMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/SceneMenuItem;->m_SceneList:Lcom/android/camera/effect/EffectList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Lcom/android/camera/menu/SceneMenuItem;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/menu/SceneMenuItem;)Lcom/android/camera/effect/EffectList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SceneMenuItem;->m_SceneList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method private static getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f02008d

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Integer;

    const-string v2, "com.htc.R.drawable.icon_btn_auto_dark"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Integer;

    const-string v2, "com.htc.R.drawable.icon_btn_people_dark"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_2
    const-string v1, "smartshot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020086

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_3
    const-string v1, "sports"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_4
    const-string v1, "burst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_5
    instance-of v1, p0, Lcom/android/camera/effect/ContinuousBurstScene;

    if-eqz v1, :cond_6

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_6
    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_7
    const-string v1, "hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020087

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_8
    const-string v1, "B_whiteboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_9
    const-string v1, "flowers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_a
    const-string v1, "backlight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020085

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_b
    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_c
    new-array v1, v2, [Ljava/lang/Integer;

    aput-object v6, v1, v3

    aput-object v6, v1, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public final setGroupShotItemVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/menu/SceneMenuItem;->m_ShowGroupShotItem:Z

    invoke-virtual {p0}, Lcom/android/camera/menu/SceneMenuItem;->updateContent()V

    return-void
.end method

.method public updateContent()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v7}, Lcom/android/camera/effect/EffectList;->getCurrentEffectCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v7, v2}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v6

    instance-of v7, v6, Lcom/android/camera/effect/HdrScene;

    if-nez v7, :cond_0

    instance-of v7, v6, Lcom/android/camera/effect/PanoramaScene;

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v7, v6, Lcom/android/camera/effect/SmartShotScene;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_Items:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/camera/menu/SceneMenuItem$SubItem;

    invoke-direct {v8, p0, v6}, Lcom/android/camera/menu/SceneMenuItem$SubItem;-><init>(Lcom/android/camera/menu/SceneMenuItem;Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Lcom/android/camera/menu/SceneMenuItem;->setItems(Ljava/util/List;)V

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v7, v7, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v7, v8}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v7}, Lcom/android/camera/effect/EffectList;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    :goto_2
    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_3
    if-ltz v2, :cond_5

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/menu/SceneMenuItem$SubItem;

    #getter for: Lcom/android/camera/menu/SceneMenuItem$SubItem;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v5}, Lcom/android/camera/menu/SceneMenuItem$SubItem;->access$200(Lcom/android/camera/menu/SceneMenuItem$SubItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v7

    if-eq v7, v1, :cond_4

    invoke-virtual {v5, v10}, Lcom/android/camera/menu/SceneMenuItem$SubItem;->setChecked(Z)V

    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v5, v9}, Lcom/android/camera/menu/SceneMenuItem$SubItem;->setChecked(Z)V

    goto :goto_4

    :cond_5
    if-nez v4, :cond_6

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/menu/SceneMenuItem$SubItem;

    #getter for: Lcom/android/camera/menu/SceneMenuItem$SubItem;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v7}, Lcom/android/camera/menu/SceneMenuItem$SubItem;->access$200(Lcom/android/camera/menu/SceneMenuItem$SubItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    iget-object v7, p0, Lcom/android/camera/menu/SceneMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v7, v9}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    :cond_6
    invoke-static {v1}, Lcom/android/camera/menu/SceneMenuItem;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v3

    aget-object v7, v3, v9

    if-eqz v7, :cond_7

    aget-object v7, v3, v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/camera/menu/SceneMenuItem;->setSummary(I)V

    :goto_5
    return-void

    :cond_7
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/camera/menu/SceneMenuItem;->setSummary(Ljava/lang/String;)V

    goto :goto_5
.end method
