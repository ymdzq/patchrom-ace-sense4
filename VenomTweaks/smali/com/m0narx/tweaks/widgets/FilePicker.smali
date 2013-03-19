.class public Lcom/m0narx/tweaks/widgets/FilePicker;
.super Lcom/htc/app/FilePickerActivity;
.source "FilePicker.java"


# static fields
.field public static final KEY_EXTENSION:Ljava/lang/String; = "ext"

.field public static final KEY_FILE_PREVIEW_TYPE:Ljava/lang/String; = "fileType"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;-><init>()V

    return-void
.end method

.method private quit(ILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/FilePicker;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/widgets/FilePicker;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/FilePicker;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/FilePicker;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startFilePicker(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m0narx/tweaks/widgets/FilePicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ext"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/htc/app/FilePickerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/FilePicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "ext"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "application_name"

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/FilePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/FilePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "viewType"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "selectionType"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "filter"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "root_path"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "remove_file_mode"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "showPath"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "orientation"

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "CloudFunctionEnabled"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "folderItemSelectEnabled"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "enabledFolderFileSwitchMenuItem"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "ModeTypeOfFolderView"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "showOnlyOneViewTypeForceEnabled"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/widgets/FilePicker;->initialFilePicker(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResult([Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "file"

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/m0narx/tweaks/widgets/FilePicker;->quit(ILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/m0narx/tweaks/widgets/FilePicker;->quit(ILandroid/content/Intent;)V

    goto :goto_0
.end method
