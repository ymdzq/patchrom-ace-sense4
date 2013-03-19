.class Lcom/htc/music/LandingPageActivity$NonUIHandler$1;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/LandingPageActivity$NonUIHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/LandingPageActivity$NonUIHandler;

.field final synthetic val$songid:I


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity$NonUIHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2751
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler$1;->this$1:Lcom/htc/music/LandingPageActivity$NonUIHandler;

    iput p2, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler$1;->val$songid:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2753
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2754
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "requestActionType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2755
    const-string v1, "songId"

    iget v2, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler$1;->val$songid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2756
    const-string v1, "songName"

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler$1;->this$1:Lcom/htc/music/LandingPageActivity$NonUIHandler;

    iget-object v2, v2, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$6200(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler$1;->this$1:Lcom/htc/music/LandingPageActivity$NonUIHandler;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->request(Landroid/os/Bundle;)V

    .line 2758
    return-void
.end method
