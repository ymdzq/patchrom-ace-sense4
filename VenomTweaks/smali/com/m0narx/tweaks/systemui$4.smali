.class Lcom/m0narx/tweaks/systemui$4;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/m0narx/tweaks/systemui$4;->this$0:Lcom/m0narx/tweaks/systemui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f080012

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui$4;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_transp_home"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f080013

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui$4;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_transp_app"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    return-void
.end method
