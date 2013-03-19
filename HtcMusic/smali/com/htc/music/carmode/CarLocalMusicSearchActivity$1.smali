.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;
.super Ljava/lang/Object;
.source "CarLocalMusicSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "me"

    .prologue
    const/4 v6, 0x0

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 128
    const-string v4, "[CarLocalMusicSearchActivity]"

    const-string v5, "mListViewTouchListener onTouch: ACTION_DOWN"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 130
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    .line 132
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 133
    .local v3, window:Landroid/view/Window;
    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {v3}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 137
    .local v2, token:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v1, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 153
    .end local v0           #focusedView:Landroid/view/View;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #window:Landroid/view/Window;
    :cond_0
    :goto_0
    return v6

    .line 140
    .restart local v0       #focusedView:Landroid/view/View;
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v2       #token:Landroid/os/IBinder;
    .restart local v3       #window:Landroid/view/Window;
    :cond_1
    const-string v4, "[CarLocalMusicSearchActivity]"

    const-string v5, "mListViewTouchListener.onTouch token is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v2           #token:Landroid/os/IBinder;
    :cond_2
    const-string v4, "[CarLocalMusicSearchActivity]"

    const-string v5, "mListViewTouchListener.onTouch focusedView is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v0           #focusedView:Landroid/view/View;
    :cond_3
    const-string v4, "[CarLocalMusicSearchActivity]"

    const-string v5, "mListViewTouchListener.onTouch window is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v3           #window:Landroid/view/Window;
    :cond_4
    const-string v4, "[CarLocalMusicSearchActivity]"

    const-string v5, "imm is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
