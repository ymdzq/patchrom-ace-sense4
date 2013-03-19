.class Lcom/m0narx/tweaks/Equalizer$2;
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

    iput-object p1, p0, Lcom/m0narx/tweaks/Equalizer$2;->this$0:Lcom/m0narx/tweaks/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$2;->this$0:Lcom/m0narx/tweaks/Equalizer;

    #calls: Lcom/m0narx/tweaks/Equalizer;->reset()V
    invoke-static {v0}, Lcom/m0narx/tweaks/Equalizer;->access$4(Lcom/m0narx/tweaks/Equalizer;)V

    return-void
.end method
