.class public Lcom/htc/music/online/OnlineMusicGetterFactory;
.super Ljava/lang/Object;
.source "OnlineMusicGetterFactory.java"


# static fields
.field public static final ONLINE_FAVORITE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;I)Lcom/htc/music/online/OnlineMusicGetter;
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 13
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Lcom/htc/music/online/OnlineFavoriteGetter;

    invoke-direct {v0, p0}, Lcom/htc/music/online/OnlineFavoriteGetter;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
