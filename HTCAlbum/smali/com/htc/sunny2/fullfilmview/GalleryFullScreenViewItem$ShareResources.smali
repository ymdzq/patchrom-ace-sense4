.class Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;
.super Ljava/lang/Object;
.source "GalleryFullScreenViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareResources"
.end annotation


# instance fields
.field drmTextBGHeight:I

.field drmTextBGWidth:I

.field drmTextHeight:I

.field drmTextWidth:I

.field textureCorrupt:Lcom/htc/sunnyCore/Texture;

.field textureDrm:Lcom/htc/sunnyCore/Texture;

.field textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

.field textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

.field textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

.field textureLoading:Lcom/htc/sunnyCore/Texture;

.field textureLongPressToLeft:Lcom/htc/sunnyCore/Texture;

.field textureLongPressToRight:Lcom/htc/sunnyCore/Texture;

.field texturePlayable:Lcom/htc/sunnyCore/Texture;

.field texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

.field textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToLeft:Lcom/htc/sunnyCore/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToRight:Lcom/htc/sunnyCore/Texture;

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextWidth:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextHeight:I

    return-void
.end method
