.class Lcom/m0narx/tweaks/Equalizer$1;
.super Ljava/lang/Object;
.source "Equalizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Equalizer;->setActionHtcBar()V
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

    iput-object p1, p0, Lcom/m0narx/tweaks/Equalizer$1;->this$0:Lcom/m0narx/tweaks/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$1;->this$0:Lcom/m0narx/tweaks/Equalizer;

    #getter for: Lcom/m0narx/tweaks/Equalizer;->abList:Lcom/htc/widget/ActionBarDropDown;
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer;->access$0(Lcom/m0narx/tweaks/Equalizer;)Lcom/htc/widget/ActionBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->show()V

    return-void
.end method
