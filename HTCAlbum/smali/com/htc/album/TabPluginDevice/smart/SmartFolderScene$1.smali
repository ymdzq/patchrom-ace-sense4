.class Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;
.super Ljava/lang/Object;
.source "SmartFolderScene.java"

# interfaces
.implements Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->showDialogNoConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->access$102(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)Z

    return-void
.end method

.method public onConfirm()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->access$000(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoWirelessConnection(Landroid/app/Activity;)V

    return-void
.end method

.method public onDismiss()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    #setter for: Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->access$102(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)Z

    return v1
.end method
