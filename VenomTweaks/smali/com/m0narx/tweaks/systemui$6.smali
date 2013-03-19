.class Lcom/m0narx/tweaks/systemui$6;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/systemui;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/systemui;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/systemui;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/systemui$6;->this$0:Lcom/m0narx/tweaks/systemui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statusbar_trans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/m0narx/tweaks/systemui$6;->this$0:Lcom/m0narx/tweaks/systemui;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/systemui;->showDialog(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v1, "hide_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/systemui$6;->this$0:Lcom/m0narx/tweaks/systemui;

    invoke-virtual {v1, v3}, Lcom/m0narx/tweaks/systemui;->showDialog(I)V

    goto :goto_0
.end method
