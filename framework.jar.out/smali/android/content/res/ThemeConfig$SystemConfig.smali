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
    .line 565
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {p0, v0}, Landroid/content/res/ThemeConfig;-><init>(Ljava/util/Map;)V

    .line 564
    return-void
.end method
