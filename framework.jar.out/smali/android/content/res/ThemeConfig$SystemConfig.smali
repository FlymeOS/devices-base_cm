.class public Landroid/content/res/ThemeConfig$SystemConfig;
.super Landroid/content/res/ThemeConfig;
.source "ThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Landroid/content/res/ThemeConfig;-><init>(Ljava/util/Map;)V

    .line 586
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 583
    check-cast p1, Landroid/content/res/ThemeConfig;

    invoke-super {p0, p1}, Landroid/content/res/ThemeConfig;->compareTo(Landroid/content/res/ThemeConfig;)I

    move-result v0

    return v0
.end method
