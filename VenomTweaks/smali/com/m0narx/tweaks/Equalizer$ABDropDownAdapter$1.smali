.class Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;
.super Ljava/lang/Object;
.source "Equalizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->this$1:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    iput p2, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->this$1:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    #getter for: Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->this$0:Lcom/m0narx/tweaks/Equalizer;
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->access$0(Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;)Lcom/m0narx/tweaks/Equalizer;

    move-result-object v0

    #getter for: Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer;->access$0(Lcom/m0narx/tweaks/Equalizer;)Lcom/htc/widget/ActionBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->this$1:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    #getter for: Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->this$0:Lcom/m0narx/tweaks/Equalizer;
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->access$0(Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;)Lcom/m0narx/tweaks/Equalizer;

    move-result-object v0

    #getter for: Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer;->access$0(Lcom/m0narx/tweaks/Equalizer;)Lcom/htc/widget/ActionBarDropDown;

    move-result-object v1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->this$1:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqName:Ljava/util/ArrayList;

    iget v2, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->this$1:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    #getter for: Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->this$0:Lcom/m0narx/tweaks/Equalizer;
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->access$0(Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;)Lcom/m0narx/tweaks/Equalizer;

    move-result-object v0

    #getter for: Lcom/m0narx/tweaks/Equalizer;->Cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer;->access$1(Lcom/m0narx/tweaks/Equalizer;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_custom_eq"

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->this$1:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqValue:Ljava/util/ArrayList;

    iget v3, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->val$position:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->this$1:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    #getter for: Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->this$0:Lcom/m0narx/tweaks/Equalizer;
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->access$0(Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;)Lcom/m0narx/tweaks/Equalizer;

    move-result-object v0

    #calls: Lcom/m0narx/tweaks/Equalizer;->initCurrentValues()V
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer;->access$2(Lcom/m0narx/tweaks/Equalizer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;->this$1:Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;

    #getter for: Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->this$0:Lcom/m0narx/tweaks/Equalizer;
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->access$0(Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;)Lcom/m0narx/tweaks/Equalizer;

    move-result-object v0

    #calls: Lcom/m0narx/tweaks/Equalizer;->setSlidersToCurrent()V
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer;->access$3(Lcom/m0narx/tweaks/Equalizer;)V

    return-void
.end method
