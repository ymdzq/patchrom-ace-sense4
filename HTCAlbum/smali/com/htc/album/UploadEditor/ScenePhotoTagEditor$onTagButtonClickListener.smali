.class Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;
.super Ljava/lang/Object;
.source "ScenePhotoTagEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onTagButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;


# direct methods
.method private constructor <init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;->this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;-><init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;->this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    invoke-virtual {v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onClickTagButton()V

    return-void
.end method
