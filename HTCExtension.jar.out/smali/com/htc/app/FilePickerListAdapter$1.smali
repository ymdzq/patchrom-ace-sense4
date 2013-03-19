.class Lcom/htc/app/FilePickerListAdapter$1;
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
    .line 246
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$1;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 7
    .parameter "starButton"
    .parameter "checked"

    .prologue
    const/4 v6, 0x0

    .line 251
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$1;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$000(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerDBHelper;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 252
    invoke-virtual {p1}, Lcom/htc/widget/HtcCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/ItemInfo;

    .line 256
    .local v3, iteminfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, filePath:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 260
    :try_start_0
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$1;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$000(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerDBHelper;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v2, v5}, Lcom/htc/app/FilePickerDBHelper;->insert(Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    invoke-virtual {v3, p2}, Lcom/htc/app/ItemInfo;->setFavorite(Z)V

    .line 284
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #iteminfo:Lcom/htc/app/ItemInfo;
    :goto_1
    return-void

    .line 262
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v2       #filePath:Ljava/lang/String;
    .restart local v3       #iteminfo:Lcom/htc/app/ItemInfo;
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FilePickerWithDB"

    const-string v5, "#### mDbHelper.insert() fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p1, v6}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$1;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$000(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerDBHelper;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Lcom/htc/app/FilePickerDBHelper;->delete(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    .line 274
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "FilePickerWithDB"

    const-string v5, "#### mDbHelper.delete() fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 282
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #iteminfo:Lcom/htc/app/ItemInfo;
    :cond_1
    invoke-virtual {p1, v6}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    goto :goto_1
.end method
