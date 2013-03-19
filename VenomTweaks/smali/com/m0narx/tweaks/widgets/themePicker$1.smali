.class Lcom/m0narx/tweaks/widgets/themePicker$1;
.super Landroid/os/Handler;
.source "themePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/themePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/themePicker;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/themePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/themePicker$1;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$1;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    #getter for: Lcom/m0narx/tweaks/widgets/themePicker;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/themePicker;->access$0(Lcom/m0narx/tweaks/widgets/themePicker;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/themePicker$1;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v1, v1, Lcom/m0narx/tweaks/widgets/themePicker;->mAdapter:Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$1;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    #getter for: Lcom/m0narx/tweaks/widgets/themePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/themePicker;->access$1(Lcom/m0narx/tweaks/widgets/themePicker;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    return-void
.end method
