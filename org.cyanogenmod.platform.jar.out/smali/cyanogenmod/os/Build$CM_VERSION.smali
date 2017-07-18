.class public Lcyanogenmod/os/Build$CM_VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CM_VERSION"
.end annotation


# static fields
.field public static final SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "ro.cm.build.version.plat.sdk"

    const/4 v1, 0x0

    .line 56
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcyanogenmod/os/Build$CM_VERSION;->SDK_INT:I

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
