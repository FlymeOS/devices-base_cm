.class public final enum Landroid/annotation/FlymeHook$FlymeRomType;
.super Ljava/lang/Enum;
.source "FlymeHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/FlymeHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlymeRomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/FlymeHook$FlymeRomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/FlymeHook$FlymeRomType;

.field public static final enum MTK:Landroid/annotation/FlymeHook$FlymeRomType;

.field public static final enum ROM:Landroid/annotation/FlymeHook$FlymeRomType;

.field public static final enum SAM:Landroid/annotation/FlymeHook$FlymeRomType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Landroid/annotation/FlymeHook$FlymeRomType;

    const-string v1, "ROM"

    invoke-direct {v0, v1, v2}, Landroid/annotation/FlymeHook$FlymeRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;

    .line 48
    new-instance v0, Landroid/annotation/FlymeHook$FlymeRomType;

    const-string v1, "SAM"

    invoke-direct {v0, v1, v3}, Landroid/annotation/FlymeHook$FlymeRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/FlymeHook$FlymeRomType;->SAM:Landroid/annotation/FlymeHook$FlymeRomType;

    .line 49
    new-instance v0, Landroid/annotation/FlymeHook$FlymeRomType;

    const-string v1, "MTK"

    invoke-direct {v0, v1, v4}, Landroid/annotation/FlymeHook$FlymeRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/FlymeHook$FlymeRomType;->MTK:Landroid/annotation/FlymeHook$FlymeRomType;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/annotation/FlymeHook$FlymeRomType;

    sget-object v1, Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/annotation/FlymeHook$FlymeRomType;->SAM:Landroid/annotation/FlymeHook$FlymeRomType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/FlymeHook$FlymeRomType;->MTK:Landroid/annotation/FlymeHook$FlymeRomType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/annotation/FlymeHook$FlymeRomType;->$VALUES:[Landroid/annotation/FlymeHook$FlymeRomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/FlymeHook$FlymeRomType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Landroid/annotation/FlymeHook$FlymeRomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/FlymeHook$FlymeRomType;

    return-object v0
.end method

.method public static values()[Landroid/annotation/FlymeHook$FlymeRomType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/annotation/FlymeHook$FlymeRomType;->$VALUES:[Landroid/annotation/FlymeHook$FlymeRomType;

    invoke-virtual {v0}, [Landroid/annotation/FlymeHook$FlymeRomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/FlymeHook$FlymeRomType;

    return-object v0
.end method
