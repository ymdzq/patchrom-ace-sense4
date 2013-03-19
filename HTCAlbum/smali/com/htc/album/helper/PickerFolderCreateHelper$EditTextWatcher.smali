.class Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditTextWatcher"
.end annotation


# instance fields
.field mDialog:Lcom/htc/dialog/HtcAlertDialog;

.field mFilterChars:Ljava/lang/String;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/htc/dialog/HtcAlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mView:Landroid/view/View;

    const-string v0, "\\/:*?\"<>|."

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mFilterChars:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mView:Landroid/view/View;

    const v4, 0x7f090067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->hasIllegalChars(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v3, "PickerFolderCreateHelper"

    const-string v4, "button null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected hasIllegalChars(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mFilterChars:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mFilterChars:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
