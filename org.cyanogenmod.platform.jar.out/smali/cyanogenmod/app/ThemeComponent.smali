.class public final enum Lcyanogenmod/app/ThemeComponent;
.super Ljava/lang/Enum;
.source "ThemeComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcyanogenmod/app/ThemeComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcyanogenmod/app/ThemeComponent;

.field public static final enum BOOT_ANIM:Lcyanogenmod/app/ThemeComponent;

.field public static final enum FONT:Lcyanogenmod/app/ThemeComponent;

.field public static final enum ICON:Lcyanogenmod/app/ThemeComponent;

.field public static final enum LOCKSCREEN:Lcyanogenmod/app/ThemeComponent;

.field public static final enum OVERLAY:Lcyanogenmod/app/ThemeComponent;

.field public static final enum SOUND:Lcyanogenmod/app/ThemeComponent;

.field public static final enum UNKNOWN:Lcyanogenmod/app/ThemeComponent;

.field public static final enum WALLPAPER:Lcyanogenmod/app/ThemeComponent;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    new-instance v0, Lcyanogenmod/app/ThemeComponent;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcyanogenmod/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcyanogenmod/app/ThemeComponent;->UNKNOWN:Lcyanogenmod/app/ThemeComponent;

    .line 25
    new-instance v0, Lcyanogenmod/app/ThemeComponent;

    const-string/jumbo v1, "OVERLAY"

    invoke-direct {v0, v1, v5, v4}, Lcyanogenmod/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcyanogenmod/app/ThemeComponent;->OVERLAY:Lcyanogenmod/app/ThemeComponent;

    .line 26
    new-instance v0, Lcyanogenmod/app/ThemeComponent;

    const-string/jumbo v1, "BOOT_ANIM"

    invoke-direct {v0, v1, v6, v5}, Lcyanogenmod/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcyanogenmod/app/ThemeComponent;->BOOT_ANIM:Lcyanogenmod/app/ThemeComponent;

    .line 27
    new-instance v0, Lcyanogenmod/app/ThemeComponent;

    const-string/jumbo v1, "WALLPAPER"

    invoke-direct {v0, v1, v7, v6}, Lcyanogenmod/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcyanogenmod/app/ThemeComponent;->WALLPAPER:Lcyanogenmod/app/ThemeComponent;

    .line 28
    new-instance v0, Lcyanogenmod/app/ThemeComponent;

    const-string/jumbo v1, "LOCKSCREEN"

    invoke-direct {v0, v1, v8, v7}, Lcyanogenmod/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcyanogenmod/app/ThemeComponent;->LOCKSCREEN:Lcyanogenmod/app/ThemeComponent;

    .line 29
    new-instance v0, Lcyanogenmod/app/ThemeComponent;

    const-string/jumbo v1, "FONT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcyanogenmod/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcyanogenmod/app/ThemeComponent;->FONT:Lcyanogenmod/app/ThemeComponent;

    .line 30
    new-instance v0, Lcyanogenmod/app/ThemeComponent;

    const-string/jumbo v1, "ICON"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcyanogenmod/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcyanogenmod/app/ThemeComponent;->ICON:Lcyanogenmod/app/ThemeComponent;

    .line 31
    new-instance v0, Lcyanogenmod/app/ThemeComponent;

    const-string/jumbo v1, "SOUND"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcyanogenmod/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcyanogenmod/app/ThemeComponent;->SOUND:Lcyanogenmod/app/ThemeComponent;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lcyanogenmod/app/ThemeComponent;

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->UNKNOWN:Lcyanogenmod/app/ThemeComponent;

    aput-object v1, v0, v4

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->OVERLAY:Lcyanogenmod/app/ThemeComponent;

    aput-object v1, v0, v5

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->BOOT_ANIM:Lcyanogenmod/app/ThemeComponent;

    aput-object v1, v0, v6

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->WALLPAPER:Lcyanogenmod/app/ThemeComponent;

    aput-object v1, v0, v7

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->LOCKSCREEN:Lcyanogenmod/app/ThemeComponent;

    aput-object v1, v0, v8

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->FONT:Lcyanogenmod/app/ThemeComponent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->ICON:Lcyanogenmod/app/ThemeComponent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->SOUND:Lcyanogenmod/app/ThemeComponent;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcyanogenmod/app/ThemeComponent;->$VALUES:[Lcyanogenmod/app/ThemeComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcyanogenmod/app/ThemeComponent;->id:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcyanogenmod/app/ThemeComponent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcyanogenmod/app/ThemeComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ThemeComponent;

    return-object v0
.end method

.method public static values()[Lcyanogenmod/app/ThemeComponent;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcyanogenmod/app/ThemeComponent;->$VALUES:[Lcyanogenmod/app/ThemeComponent;

    return-object v0
.end method
