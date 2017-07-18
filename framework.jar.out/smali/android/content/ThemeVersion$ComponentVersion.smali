.class public final enum Landroid/content/ThemeVersion$ComponentVersion;
.super Ljava/lang/Enum;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ThemeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComponentVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/ThemeVersion$ComponentVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/ThemeVersion$ComponentVersion;

.field public static final enum BOOT_ANIM:Landroid/content/ThemeVersion$ComponentVersion;

.field public static final enum FONT:Landroid/content/ThemeVersion$ComponentVersion;

.field public static final enum ICON:Landroid/content/ThemeVersion$ComponentVersion;

.field public static final enum LOCKSCREEN:Landroid/content/ThemeVersion$ComponentVersion;

.field public static final enum OVERLAY:Landroid/content/ThemeVersion$ComponentVersion;

.field public static final enum SOUNDS:Landroid/content/ThemeVersion$ComponentVersion;

.field public static final enum WALLPAPER:Landroid/content/ThemeVersion$ComponentVersion;


# instance fields
.field public currentVersion:I

.field public id:I

.field public minSupportedVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 57
    new-instance v0, Landroid/content/ThemeVersion$ComponentVersion;

    const-string/jumbo v1, "OVERLAY"

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/content/ThemeVersion$ComponentVersion;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Landroid/content/ThemeVersion$ComponentVersion;->OVERLAY:Landroid/content/ThemeVersion$ComponentVersion;

    .line 58
    new-instance v5, Landroid/content/ThemeVersion$ComponentVersion;

    const-string/jumbo v6, "BOOT_ANIM"

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v5 .. v10}, Landroid/content/ThemeVersion$ComponentVersion;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Landroid/content/ThemeVersion$ComponentVersion;->BOOT_ANIM:Landroid/content/ThemeVersion$ComponentVersion;

    .line 59
    new-instance v8, Landroid/content/ThemeVersion$ComponentVersion;

    const-string/jumbo v9, "WALLPAPER"

    move v10, v4

    move v11, v4

    move v12, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Landroid/content/ThemeVersion$ComponentVersion;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Landroid/content/ThemeVersion$ComponentVersion;->WALLPAPER:Landroid/content/ThemeVersion$ComponentVersion;

    .line 60
    new-instance v8, Landroid/content/ThemeVersion$ComponentVersion;

    const-string/jumbo v9, "LOCKSCREEN"

    move v10, v14

    move v11, v14

    move v12, v7

    move v13, v7

    invoke-direct/range {v8 .. v13}, Landroid/content/ThemeVersion$ComponentVersion;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Landroid/content/ThemeVersion$ComponentVersion;->LOCKSCREEN:Landroid/content/ThemeVersion$ComponentVersion;

    .line 61
    new-instance v8, Landroid/content/ThemeVersion$ComponentVersion;

    const-string/jumbo v9, "FONT"

    move v10, v15

    move v11, v15

    move v12, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Landroid/content/ThemeVersion$ComponentVersion;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Landroid/content/ThemeVersion$ComponentVersion;->FONT:Landroid/content/ThemeVersion$ComponentVersion;

    .line 62
    new-instance v8, Landroid/content/ThemeVersion$ComponentVersion;

    const-string/jumbo v9, "ICON"

    const/4 v10, 0x5

    const/4 v11, 0x5

    move v12, v7

    move v13, v7

    invoke-direct/range {v8 .. v13}, Landroid/content/ThemeVersion$ComponentVersion;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Landroid/content/ThemeVersion$ComponentVersion;->ICON:Landroid/content/ThemeVersion$ComponentVersion;

    .line 63
    new-instance v8, Landroid/content/ThemeVersion$ComponentVersion;

    const-string/jumbo v9, "SOUNDS"

    const/4 v10, 0x6

    const/4 v11, 0x6

    move v12, v7

    move v13, v7

    invoke-direct/range {v8 .. v13}, Landroid/content/ThemeVersion$ComponentVersion;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Landroid/content/ThemeVersion$ComponentVersion;->SOUNDS:Landroid/content/ThemeVersion$ComponentVersion;

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/content/ThemeVersion$ComponentVersion;

    sget-object v1, Landroid/content/ThemeVersion$ComponentVersion;->OVERLAY:Landroid/content/ThemeVersion$ComponentVersion;

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/ThemeVersion$ComponentVersion;->BOOT_ANIM:Landroid/content/ThemeVersion$ComponentVersion;

    aput-object v1, v0, v7

    sget-object v1, Landroid/content/ThemeVersion$ComponentVersion;->WALLPAPER:Landroid/content/ThemeVersion$ComponentVersion;

    aput-object v1, v0, v4

    sget-object v1, Landroid/content/ThemeVersion$ComponentVersion;->LOCKSCREEN:Landroid/content/ThemeVersion$ComponentVersion;

    aput-object v1, v0, v14

    sget-object v1, Landroid/content/ThemeVersion$ComponentVersion;->FONT:Landroid/content/ThemeVersion$ComponentVersion;

    aput-object v1, v0, v15

    sget-object v1, Landroid/content/ThemeVersion$ComponentVersion;->ICON:Landroid/content/ThemeVersion$ComponentVersion;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/ThemeVersion$ComponentVersion;->SOUNDS:Landroid/content/ThemeVersion$ComponentVersion;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/ThemeVersion$ComponentVersion;->$VALUES:[Landroid/content/ThemeVersion$ComponentVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "minSupportedVersion"    # I
    .param p5, "currentVersion"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Landroid/content/ThemeVersion$ComponentVersion;->id:I

    .line 71
    iput p4, p0, Landroid/content/ThemeVersion$ComponentVersion;->minSupportedVersion:I

    .line 72
    iput p5, p0, Landroid/content/ThemeVersion$ComponentVersion;->currentVersion:I

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/ThemeVersion$ComponentVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Landroid/content/ThemeVersion$ComponentVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/ThemeVersion$ComponentVersion;

    return-object v0
.end method

.method public static values()[Landroid/content/ThemeVersion$ComponentVersion;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/content/ThemeVersion$ComponentVersion;->$VALUES:[Landroid/content/ThemeVersion$ComponentVersion;

    return-object v0
.end method
