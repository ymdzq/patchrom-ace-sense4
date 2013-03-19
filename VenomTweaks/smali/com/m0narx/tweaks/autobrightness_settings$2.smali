.class Lcom/m0narx/tweaks/autobrightness_settings$2;
.super Ljava/lang/Object;
.source "autobrightness_settings.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/autobrightness_settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/autobrightness_settings;

.field private final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/autobrightness_settings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/autobrightness_settings$2;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    iput-object p2, p0, Lcom/m0narx/tweaks/autobrightness_settings$2;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/m0narx/tweaks/autobrightness_settings$2;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/autobrightness_settings$2;->val$info:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
