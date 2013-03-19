.class public Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;
.super Ljava/lang/Object;
.source "EventGridViewSeparatorPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "screenControl"
.end annotation


# instance fields
.field public mNode:Lcom/htc/sunnyCore/SceneNode;

.field public mTextSprite:Lcom/htc/sunnyCore/Sprite;

.field public mTextTexture:Lcom/htc/sunnyCore/Texture;

.field public mTextViewContainer:Landroid/view/ViewGroup;

.field public mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewTitle:Landroid/widget/TextView;

    return-void
.end method
