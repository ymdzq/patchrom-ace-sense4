.class public Lcom/htc/sunny2/frameworks/utils/WindowHelper;
.super Ljava/lang/Object;
.source "WindowHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WindowHelper"

.field public static SB_HEIGHT:I = 0x0

.field public static final SB_HEIGHT_DEFAULT:I = 0x26


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowStatusBarHeight(Landroid/app/Activity;)I
    .locals 4

    const/4 v0, 0x0

    sget v3, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    if-nez v3, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sput v3, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    :cond_0
    sget v3, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    if-eqz v3, :cond_1

    sget v0, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x26

    goto :goto_0
.end method

.method public static keepScreenOn(Landroid/app/Activity;Z)V
    .locals 2

    const/16 v1, 0x80

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public static showFullscreen(Landroid/app/Activity;Z)V
    .locals 3

    const/16 v2, 0x800

    const/16 v1, 0x400

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
