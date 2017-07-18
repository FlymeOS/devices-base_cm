.class public Landroid/os/MzEnvironment;
.super Ljava/lang/Object;
.source "MzEnvironment.java"


# static fields
.field public static DIRECTORY_AUTOINSTALLAPK:Ljava/lang/String; = null

.field public static DIRECTORY_SAFE_BOX:Ljava/lang/String; = null

.field public static DIRECTORY_SAFE_BOX_PHOTO:Ljava/lang/String; = null

.field public static DIRECTORY_SAFE_BOX_VIDEO:Ljava/lang/String; = null

.field public static FLYME_SAFE_BOX:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MzEnvironment"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "AutoInstallAPK"

    sput-object v0, Landroid/os/MzEnvironment;->DIRECTORY_AUTOINSTALLAPK:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ".@meizu_protbox@"

    sput-object v0, Landroid/os/MzEnvironment;->DIRECTORY_SAFE_BOX:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ".@meizu_protbox@/Video"

    sput-object v0, Landroid/os/MzEnvironment;->DIRECTORY_SAFE_BOX_VIDEO:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ".@meizu_protbox@/Photo"

    sput-object v0, Landroid/os/MzEnvironment;->DIRECTORY_SAFE_BOX_PHOTO:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ".flymeSafeBox"

    sput-object v0, Landroid/os/MzEnvironment;->FLYME_SAFE_BOX:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
