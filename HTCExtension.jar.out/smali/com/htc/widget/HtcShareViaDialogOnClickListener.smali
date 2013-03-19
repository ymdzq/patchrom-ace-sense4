.class public Lcom/htc/widget/HtcShareViaDialogOnClickListener;
.super Ljava/lang/Object;
.source "HtcShareViaDialogOnClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const v1, 0x2030016

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemTextAppearance(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemBackgroundResource(I)V

    iput-object p3, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const v1, 0x2030038

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemTextAppearance(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const v1, 0x208003b

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemBackgroundResource(I)V

    iput-object p2, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/IHtcShareViaAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/IHtcShareViaAdapter;->isDataEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa1

    iget-object v1, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/IHtcShareViaAdapter;->isExpanded()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/IHtcShareViaAdapter;->expand()V

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setIsDimissOk(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/IHtcShareViaAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setIsDimissOk(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
