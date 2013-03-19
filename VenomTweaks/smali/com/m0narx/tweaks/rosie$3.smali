.class Lcom/m0narx/tweaks/rosie$3;
.super Ljava/lang/Object;
.source "rosie.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/rosie;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/rosie;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/rosie;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/rosie$3;->this$0:Lcom/m0narx/tweaks/rosie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clock_widget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/rosie$3;->this$0:Lcom/m0narx/tweaks/rosie;

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/rosie;->makeDialog(I)V

    :cond_0
    return v2
.end method
