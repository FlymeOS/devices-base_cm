.class public final enum Landroid/app/ProfileGroup$Mode;
.super Ljava/lang/Enum;
.source "ProfileGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ProfileGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/ProfileGroup$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/ProfileGroup$Mode;

.field public static final enum DEFAULT:Landroid/app/ProfileGroup$Mode;

.field public static final enum OVERRIDE:Landroid/app/ProfileGroup$Mode;

.field public static final enum SUPPRESS:Landroid/app/ProfileGroup$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    new-instance v0, Landroid/app/ProfileGroup$Mode;

    const-string v1, "SUPPRESS"

    invoke-direct {v0, v1, v2}, Landroid/app/ProfileGroup$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ProfileGroup$Mode;->SUPPRESS:Landroid/app/ProfileGroup$Mode;

    new-instance v0, Landroid/app/ProfileGroup$Mode;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Landroid/app/ProfileGroup$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    new-instance v0, Landroid/app/ProfileGroup$Mode;

    const-string v1, "OVERRIDE"

    invoke-direct {v0, v1, v4}, Landroid/app/ProfileGroup$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ProfileGroup$Mode;->OVERRIDE:Landroid/app/ProfileGroup$Mode;

    .line 290
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/app/ProfileGroup$Mode;

    sget-object v1, Landroid/app/ProfileGroup$Mode;->SUPPRESS:Landroid/app/ProfileGroup$Mode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/ProfileGroup$Mode;->OVERRIDE:Landroid/app/ProfileGroup$Mode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/ProfileGroup$Mode;->$VALUES:[Landroid/app/ProfileGroup$Mode;

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
    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 290
    const-class v0, Landroid/app/ProfileGroup$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public static values()[Landroid/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Landroid/app/ProfileGroup$Mode;->$VALUES:[Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v0}, [Landroid/app/ProfileGroup$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method
