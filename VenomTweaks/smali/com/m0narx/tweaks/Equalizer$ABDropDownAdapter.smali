.class Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;
.super Landroid/widget/BaseAdapter;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/Equalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ABDropDownAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field public mEqName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mEqValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/Equalizer;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/Equalizer;)V
    .locals 1

    iput-object p1, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->this$0:Lcom/m0narx/tweaks/Equalizer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqValue:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/Equalizer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;)Lcom/m0narx/tweaks/Equalizer;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->this$0:Lcom/m0narx/tweaks/Equalizer;

    return-object v0
.end method


# virtual methods
.method public addItem(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqValue:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030007

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/m0narx/tweaks/Equalizer$ViewHolder;

    invoke-direct {v0}, Lcom/m0narx/tweaks/Equalizer$ViewHolder;-><init>()V

    const v1, 0x7f08000d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, v0, Lcom/m0narx/tweaks/Equalizer$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, v0, Lcom/m0narx/tweaks/Equalizer$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/m0narx/tweaks/Equalizer$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;->mEqName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    iget-object v1, v0, Lcom/m0narx/tweaks/Equalizer$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x2030016

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    iget-object v1, v0, Lcom/m0narx/tweaks/Equalizer$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v1, v0, Lcom/m0narx/tweaks/Equalizer$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    new-instance v2, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter$1;-><init>(Lcom/m0narx/tweaks/Equalizer$ABDropDownAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/Equalizer$ViewHolder;

    goto :goto_0
.end method
