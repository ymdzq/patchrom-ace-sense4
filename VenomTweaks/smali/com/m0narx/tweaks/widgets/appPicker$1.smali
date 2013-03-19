.class Lcom/m0narx/tweaks/widgets/appPicker$1;
.super Landroid/os/Handler;
.source "appPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/appPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/appPicker;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/appPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/appPicker$1;->this$0:Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/appPicker$1;->this$0:Lcom/m0narx/tweaks/widgets/appPicker;

    #getter for: Lcom/m0narx/tweaks/widgets/appPicker;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/appPicker;->access$0(Lcom/m0narx/tweaks/widgets/appPicker;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/appPicker$1;->this$0:Lcom/m0narx/tweaks/widgets/appPicker;

    iget-object v1, v1, Lcom/m0narx/tweaks/widgets/appPicker;->mAdapter:Lcom/m0narx/tweaks/widgets/appPicker$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/appPicker$1;->this$0:Lcom/m0narx/tweaks/widgets/appPicker;

    #getter for: Lcom/m0narx/tweaks/widgets/appPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/appPicker;->access$1(Lcom/m0narx/tweaks/widgets/appPicker;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    return-void
.end method
