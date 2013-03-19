.class Lcom/m0narx/tweaks/Equalizer$3;
.super Ljava/lang/Object;
.source "Equalizer.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Equalizer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/Equalizer;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Equalizer;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/Equalizer$3;->this$0:Lcom/m0narx/tweaks/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "level_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer$3;->this$0:Lcom/m0narx/tweaks/Equalizer;

    #getter for: Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;
    invoke-static {v3}, Lcom/m0narx/tweaks/Equalizer;->access$0(Lcom/m0narx/tweaks/Equalizer;)Lcom/htc/widget/ActionBarDropDown;

    move-result-object v3

    const v4, 0x7f0a01a6

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    const-string v3, "level_"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer$3;->this$0:Lcom/m0narx/tweaks/Equalizer;

    #getter for: Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;
    invoke-static {v3}, Lcom/m0narx/tweaks/Equalizer;->access$5(Lcom/m0narx/tweaks/Equalizer;)[Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v4, v2, -0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    check-cast p1, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/m0narx/tweaks/Equalizer$3;->this$0:Lcom/m0narx/tweaks/Equalizer;

    #getter for: Lcom/m0narx/tweaks/Equalizer;->CurLevels:[Ljava/lang/Integer;
    invoke-static {v4}, Lcom/m0narx/tweaks/Equalizer;->access$5(Lcom/m0narx/tweaks/Equalizer;)[Ljava/lang/Integer;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/m0narx/tweaks/Equalizer$3;->this$0:Lcom/m0narx/tweaks/Equalizer;

    #calls: Lcom/m0narx/tweaks/Equalizer;->apply()V
    invoke-static {v3}, Lcom/m0narx/tweaks/Equalizer;->access$6(Lcom/m0narx/tweaks/Equalizer;)V

    :cond_0
    const/4 v3, 0x1

    return v3
.end method
