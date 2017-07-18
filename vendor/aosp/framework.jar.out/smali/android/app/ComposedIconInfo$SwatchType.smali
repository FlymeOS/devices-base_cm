.class public final enum Landroid/app/ComposedIconInfo$SwatchType;
.super Ljava/lang/Enum;
.source "ComposedIconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ComposedIconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwatchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/ComposedIconInfo$SwatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/ComposedIconInfo$SwatchType;

.field public static final enum Muted:Landroid/app/ComposedIconInfo$SwatchType;

.field public static final enum MutedDark:Landroid/app/ComposedIconInfo$SwatchType;

.field public static final enum MutedLight:Landroid/app/ComposedIconInfo$SwatchType;

.field public static final enum None:Landroid/app/ComposedIconInfo$SwatchType;

.field public static final enum Vibrant:Landroid/app/ComposedIconInfo$SwatchType;

.field public static final enum VibrantDark:Landroid/app/ComposedIconInfo$SwatchType;

.field public static final enum VibrantLight:Landroid/app/ComposedIconInfo$SwatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    new-instance v0, Landroid/app/ComposedIconInfo$SwatchType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v3}, Landroid/app/ComposedIconInfo$SwatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    .line 140
    new-instance v0, Landroid/app/ComposedIconInfo$SwatchType;

    const-string/jumbo v1, "Vibrant"

    invoke-direct {v0, v1, v4}, Landroid/app/ComposedIconInfo$SwatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ComposedIconInfo$SwatchType;->Vibrant:Landroid/app/ComposedIconInfo$SwatchType;

    .line 141
    new-instance v0, Landroid/app/ComposedIconInfo$SwatchType;

    const-string/jumbo v1, "VibrantLight"

    invoke-direct {v0, v1, v5}, Landroid/app/ComposedIconInfo$SwatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ComposedIconInfo$SwatchType;->VibrantLight:Landroid/app/ComposedIconInfo$SwatchType;

    .line 142
    new-instance v0, Landroid/app/ComposedIconInfo$SwatchType;

    const-string/jumbo v1, "VibrantDark"

    invoke-direct {v0, v1, v6}, Landroid/app/ComposedIconInfo$SwatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ComposedIconInfo$SwatchType;->VibrantDark:Landroid/app/ComposedIconInfo$SwatchType;

    .line 143
    new-instance v0, Landroid/app/ComposedIconInfo$SwatchType;

    const-string/jumbo v1, "Muted"

    invoke-direct {v0, v1, v7}, Landroid/app/ComposedIconInfo$SwatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ComposedIconInfo$SwatchType;->Muted:Landroid/app/ComposedIconInfo$SwatchType;

    .line 144
    new-instance v0, Landroid/app/ComposedIconInfo$SwatchType;

    const-string/jumbo v1, "MutedLight"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/ComposedIconInfo$SwatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ComposedIconInfo$SwatchType;->MutedLight:Landroid/app/ComposedIconInfo$SwatchType;

    .line 145
    new-instance v0, Landroid/app/ComposedIconInfo$SwatchType;

    const-string/jumbo v1, "MutedDark"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/app/ComposedIconInfo$SwatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ComposedIconInfo$SwatchType;->MutedDark:Landroid/app/ComposedIconInfo$SwatchType;

    .line 138
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/app/ComposedIconInfo$SwatchType;

    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->Vibrant:Landroid/app/ComposedIconInfo$SwatchType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->VibrantLight:Landroid/app/ComposedIconInfo$SwatchType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->VibrantDark:Landroid/app/ComposedIconInfo$SwatchType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->Muted:Landroid/app/ComposedIconInfo$SwatchType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->MutedLight:Landroid/app/ComposedIconInfo$SwatchType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->MutedDark:Landroid/app/ComposedIconInfo$SwatchType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ComposedIconInfo$SwatchType;->$VALUES:[Landroid/app/ComposedIconInfo$SwatchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/ComposedIconInfo$SwatchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    const-class v0, Landroid/app/ComposedIconInfo$SwatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ComposedIconInfo$SwatchType;

    return-object v0
.end method

.method public static values()[Landroid/app/ComposedIconInfo$SwatchType;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Landroid/app/ComposedIconInfo$SwatchType;->$VALUES:[Landroid/app/ComposedIconInfo$SwatchType;

    return-object v0
.end method
