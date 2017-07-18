.class public Landroid/content/ThemeVersion;
.super Ljava/lang/Object;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ThemeVersion$ComponentVersion;
    }
.end annotation


# static fields
.field public static MIN_SUPPORTED_THEME_VERSION:I

.field public static THEME_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x3

    sput v0, Landroid/content/ThemeVersion;->THEME_VERSION:I

    .line 39
    const/4 v0, 0x2

    sput v0, Landroid/content/ThemeVersion;->MIN_SUPPORTED_THEME_VERSION:I

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
