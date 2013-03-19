.class public interface abstract Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;
.super Ljava/lang/Object;
.source "AbsFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AbsFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AbstractViewCallback"
.end annotation


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_ENTER:I = 0x1

.field public static final STATE_EXIT:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_VISIBLE:I = 0x2


# virtual methods
.method public abstract computeHorizontalScrollExtent()I
.end method

.method public abstract computeHorizontalScrollOffset()I
.end method

.method public abstract computeHorizontalScrollRange()I
.end method

.method public abstract computeVerticalScrollExtent()I
.end method

.method public abstract computeVerticalScrollOffset()I
.end method

.method public abstract computeVerticalScrollRange()I
.end method

.method public abstract draw(Landroid/graphics/drawable/Drawable;IIII)V
.end method

.method public abstract draw(Ljava/lang/String;IIIILandroid/graphics/Paint;)V
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getColumnCount()I
.end method

.method public abstract getCount()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract invalidate()V
.end method

.method public abstract invalidate(IIII)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)Z
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)Z
.end method

.method public abstract setSelectionInt(I)V
.end method
