.class public Landroid/content/res/ThemeConfig$SystemAppTheme;
.super Landroid/content/res/ThemeConfig$AppTheme;
.source "ThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemAppTheme"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 571
    const-string/jumbo v0, "system"

    const-string/jumbo v1, "system"

    const-string/jumbo v2, "system"

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/ThemeConfig$AppTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    const-string/jumbo v0, "No Theme Applied (System)"

    return-object v0
.end method
