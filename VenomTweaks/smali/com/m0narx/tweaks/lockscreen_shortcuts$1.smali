.class Lcom/m0narx/tweaks/lockscreen_shortcuts$1;
.super Ljava/lang/Object;
.source "lockscreen_shortcuts.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/lockscreen_shortcuts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/lockscreen_shortcuts;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    if-ne v6, v7, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    const-string v6, "custom_shortcuts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    #getter for: Lcom/m0narx/tweaks/lockscreen_shortcuts;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->access$0(Lcom/m0narx/tweaks/lockscreen_shortcuts;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "tweaks_lockscreen_custom_shortcuts"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->killLockCMD()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    return v4

    :cond_2
    const-string v6, "lockscreen_hide_labels"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    #getter for: Lcom/m0narx/tweaks/lockscreen_shortcuts;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->access$0(Lcom/m0narx/tweaks/lockscreen_shortcuts;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "tweaks_lockscreen_hide_labels"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->killLockCMD()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v6, "shortcut_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "shortcut_"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    iget-object v4, v4, Lcom/m0narx/tweaks/lockscreen_shortcuts;->mShortcuts:[Landroid/content/pm/ActivityInfo;

    aput-object v8, v4, v2

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "shortcut_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    iget-object v6, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    #getter for: Lcom/m0narx/tweaks/lockscreen_shortcuts;->dbh:Lcom/m0narx/tweaks/provider/DB;
    invoke-static {v6}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->access$1(Lcom/m0narx/tweaks/lockscreen_shortcuts;)Lcom/m0narx/tweaks/provider/DB;

    move-result-object v6

    invoke-virtual {v6}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    #setter for: Lcom/m0narx/tweaks/lockscreen_shortcuts;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v4, v6}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->access$2(Lcom/m0narx/tweaks/lockscreen_shortcuts;Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    #getter for: Lcom/m0narx/tweaks/lockscreen_shortcuts;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v4}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->access$3(Lcom/m0narx/tweaks/lockscreen_shortcuts;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UPDATE shortcuts SET applabel=\'\', package=\'\', class=\'\' WHERE position="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    #getter for: Lcom/m0narx/tweaks/lockscreen_shortcuts;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v4}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->access$3(Lcom/m0narx/tweaks/lockscreen_shortcuts;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->setShortcutLists()V

    goto/16 :goto_0

    :cond_4
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    const-class v6, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    invoke-virtual {v5, v3, v2}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_5
    const-string v4, "lockscreen_ringmode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen_shortcuts$1;->this$0:Lcom/m0narx/tweaks/lockscreen_shortcuts;

    #getter for: Lcom/m0narx/tweaks/lockscreen_shortcuts;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/lockscreen_shortcuts;->access$0(Lcom/m0narx/tweaks/lockscreen_shortcuts;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "tweaks_lockscreen_ringmode"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->killLockCMD()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
