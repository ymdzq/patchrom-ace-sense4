.class Lcom/m0narx/tweaks/customizeRosieTheme$2;
.super Ljava/lang/Object;
.source "customizeRosieTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/customizeRosieTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/customizeRosieTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/customizeRosieTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme;->customIcons:Ljava/util/Properties;
    invoke-static {v0}, Lcom/m0narx/tweaks/customizeRosieTheme;->access$2(Lcom/m0narx/tweaks/customizeRosieTheme;)Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/customizeRosieTheme;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tmp.prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v2, "Venom Tweaks icons theme for HTC Sense"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/customizeRosieTheme;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp.prop /data/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/m0narx/tweaks/customizeRosieTheme;->access$3(Lcom/m0narx/tweaks/customizeRosieTheme;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".prop;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chmod 666 /data/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/m0narx/tweaks/customizeRosieTheme;->access$3(Lcom/m0narx/tweaks/customizeRosieTheme;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".prop;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pkill com.htc.launcher;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->killLockCMD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    iget-object v0, v0, Lcom/m0narx/tweaks/customizeRosieTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_theme"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    iget-object v0, v0, Lcom/m0narx/tweaks/customizeRosieTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_theme"

    iget-object v2, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme;->themeName:Ljava/lang/String;
    invoke-static {v2}, Lcom/m0narx/tweaks/customizeRosieTheme;->access$3(Lcom/m0narx/tweaks/customizeRosieTheme;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$2;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/customizeRosieTheme;->finish()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
