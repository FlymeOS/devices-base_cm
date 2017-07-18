.class final Landroid/app/ResourcesManager$FlymeInjector;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static freeCaches(I)V
    .locals 1
    .param p0, "changes"    # I

    .prologue
    .line 348
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 353
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 354
    invoke-static {}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInstance()Landroid/content/res/flymetheme/iconfilter/IconFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->cleanFilter()V

    .line 356
    :cond_0
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 361
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 363
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->cleanflymeTypeface()V

    .line 347
    :cond_1
    return-void
.end method
