.class abstract Lcom/htc/widget/IHtcShareViaAdapter;
.super Landroid/widget/BaseAdapter;
.source "IHtcShareViaAdapter.java"


# static fields
.field static final BG_SET_DRAWABLE:I = 0x1

.field static final BG_SET_RES_ID:I = 0x2

.field static final EMPTY:I = 0x104043b

.field static final EXPAND_DEFAULT:I = 0xa0

.field static final FILE_NAME:Ljava/lang/String; = "task_specific_history_file_name.xml"

.field static final HAD_EXPAND:I = 0xa2

.field static final INDEX_OF_MORE:I = 0x4

.field static final LOADING:I = 0x10403b1

.field static final MORE:I = 0x1040384

.field static final NEED_EXPAND:I = 0xa1

.field static final NOT_EXPAND:I = 0xa3

.field static final VIEW_SEE_ALL:I = 0x10404d8

.field static final WP:I = -0x2


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method abstract expand()V
.end method

.method abstract isDataEmpty()Z
.end method

.method abstract isDataReady()Z
.end method

.method abstract isDimissOk()Z
.end method

.method abstract isExpanded()I
.end method

.method abstract setIsDimissOk(Z)V
.end method

.method abstract setListItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method abstract setListItemBackgroundResource(I)V
.end method

.method abstract setListItemTextAppearance(I)V
.end method

.method abstract shrink()V
.end method
