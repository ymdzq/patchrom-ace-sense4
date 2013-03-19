.class Lcom/htc/app/FilePickerListAdapter$2;
.super Ljava/lang/Object;
.source "FilePickerListAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 2
    .parameter "btn"
    .parameter "checked"

    .prologue
    .line 362
    invoke-virtual {p1}, Lcom/htc/widget/HtcCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/ItemInfo;

    .line 363
    .local v0, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v0, p2}, Lcom/htc/app/ItemInfo;->setChecked(Z)V

    .line 364
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;
    invoke-static {v1}, Lcom/htc/app/FilePickerListAdapter;->access$200(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;
    invoke-static {v1}, Lcom/htc/app/FilePickerListAdapter;->access$200(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcCompoundButton;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;
    invoke-static {v1}, Lcom/htc/app/FilePickerListAdapter;->access$200(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;
    invoke-static {v1}, Lcom/htc/app/FilePickerListAdapter;->access$200(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->updateActionModeTitleForCount()V

    .line 376
    :cond_1
    return-void
.end method
