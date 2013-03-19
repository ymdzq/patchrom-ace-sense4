.class public Lcom/android/camera/menu/ResolutionMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "ResolutionMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/ResolutionMenuItem$1;,
        Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;
    }
.end annotation


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Items:[Lcom/android/camera/menu/MenuItem;

.field private final mode:Lcom/android/camera/CameraMode;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/menu/ResolutionMenuItem;Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/menu/ResolutionMenuItem;->onResolutionSelected(Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V

    return-void
.end method

.method private onResolutionSelected(Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    .locals 6

    const/4 v3, 0x0

    sget-object v2, Lcom/android/camera/menu/ResolutionMenuItem$1;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v4, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    invoke-virtual {v4}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v5, v2}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolutionItem:Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v5, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    sget-object v4, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/OneValueEventArgs;

    iget-object v5, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolutionItem:Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v5, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-direct {v4, v5}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_0
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v2, v0

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v4, v2}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_3

    :cond_2
    iget-object v2, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolutionItem:Lcom/android/camera/ResolutionMenuItem;

    iget v2, v2, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    invoke-virtual {p0, v2}, Lcom/android/camera/menu/ResolutionMenuItem;->setSummary(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public updateContent()V
    .locals 14

    sget-object v12, Lcom/android/camera/menu/ResolutionMenuItem$1;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v13, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    invoke-virtual {v13}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v7

    :goto_1
    new-instance v9, Ljava/util/TreeSet;

    iget-object v13, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, v12, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/CameraType;

    invoke-virtual {v7, v13, v12}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/util/LinkedList;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lcom/android/camera/menu/ResolutionMenuItem$1;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v13, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    invoke-virtual {v13}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v12}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v12

    iget-object v12, v12, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, v12, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/CameraType;

    invoke-virtual {v12}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ResolutionMenuItem;

    iget-object v12, v4, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v12}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_3
    const/4 v3, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v13, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, v12, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/CameraType;

    invoke-virtual {v7, v13, v12}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    if-eqz v3, :cond_4

    move-object v5, v11

    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/android/camera/menu/MenuItem;

    iput-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    const/4 v1, 0x0

    :goto_4
    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v12, v12

    if-ge v1, v12, :cond_5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ResolutionMenuItem;

    new-instance v6, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;

    iget v12, v4, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    invoke-direct {v6, p0, v12, v4}, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;-><init>(Lcom/android/camera/menu/ResolutionMenuItem;ILcom/android/camera/ResolutionMenuItem;)V

    iget-object v12, v4, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v12}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget v10, v4, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->setChecked(Z)V

    :cond_3
    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aput-object v6, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move-object v5, v8

    goto :goto_3

    :cond_5
    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    invoke-virtual {p0, v12}, Lcom/android/camera/menu/ResolutionMenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    if-nez v10, :cond_6

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ResolutionMenuItem;

    iget v10, v12, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    :cond_6
    invoke-virtual {p0, v10}, Lcom/android/camera/menu/ResolutionMenuItem;->setSummary(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
