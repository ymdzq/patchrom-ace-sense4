.class Landroid/widget/ListView$2;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4298
    iput-object p1, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4300
    iget-object v0, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mIntroAnimationType:I
    invoke-static {v0}, Landroid/widget/ListView;->access$400(Landroid/widget/ListView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4318
    :goto_0
    return-void

    .line 4302
    :pswitch_0
    iget-object v0, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    #calls: Landroid/widget/ListView;->playDefaultIntroAnimation()V
    invoke-static {v0}, Landroid/widget/ListView;->access$500(Landroid/widget/ListView;)V

    goto :goto_0

    .line 4305
    :pswitch_1
    iget-object v0, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    #calls: Landroid/widget/ListView;->playDownIntroAnimation()V
    invoke-static {v0}, Landroid/widget/ListView;->access$600(Landroid/widget/ListView;)V

    goto :goto_0

    .line 4308
    :pswitch_2
    iget-object v0, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    #calls: Landroid/widget/ListView;->playUpIntroAnimation()V
    invoke-static {v0}, Landroid/widget/ListView;->access$700(Landroid/widget/ListView;)V

    goto :goto_0

    .line 4311
    :pswitch_3
    iget-object v0, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    #calls: Landroid/widget/ListView;->playRightIntroAnimation()V
    invoke-static {v0}, Landroid/widget/ListView;->access$800(Landroid/widget/ListView;)V

    goto :goto_0

    .line 4314
    :pswitch_4
    iget-object v0, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    #calls: Landroid/widget/ListView;->playLeftIntroAnimation()V
    invoke-static {v0}, Landroid/widget/ListView;->access$900(Landroid/widget/ListView;)V

    goto :goto_0

    .line 4300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
