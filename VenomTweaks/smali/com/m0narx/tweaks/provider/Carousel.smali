.class public Lcom/m0narx/tweaks/provider/Carousel;
.super Lcom/htc/content/CarouselProvider;
.source "Carousel.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.m0narx.tweaks.provider.Carousel"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    const-string v0, "com.m0narx.tweaks.provider.Carousel"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/provider/Carousel;->setupCarousel(Ljava/lang/String;)V

    return-void
.end method
