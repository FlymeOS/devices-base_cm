.class public final enum Lcom/android/internal/util/gesture/EdgeGesturePosition;
.super Ljava/lang/Enum;
.source "EdgeGesturePosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/util/gesture/EdgeGesturePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/util/gesture/EdgeGesturePosition;

.field public static final enum BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

.field public static final enum LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

.field public static final enum RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

.field public static final enum TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;


# instance fields
.field public final FACTOR:I

.field public final FLAG:I

.field public final INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/internal/util/gesture/EdgeGesturePosition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .line 25
    new-instance v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/android/internal/util/gesture/EdgeGesturePosition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .line 26
    new-instance v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/android/internal/util/gesture/EdgeGesturePosition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .line 27
    new-instance v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/android/internal/util/gesture/EdgeGesturePosition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/util/gesture/EdgeGesturePosition;

    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;->$VALUES:[Lcom/android/internal/util/gesture/EdgeGesturePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p3, "index"    # I
    .param p4, "factor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/android/internal/util/gesture/EdgeGesturePosition;->INDEX:I

    .line 31
    const/4 v0, 0x1

    shl-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    .line 32
    iput p4, p0, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FACTOR:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/util/gesture/EdgeGesturePosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/util/gesture/EdgeGesturePosition;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;->$VALUES:[Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-virtual {v0}, [Lcom/android/internal/util/gesture/EdgeGesturePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/util/gesture/EdgeGesturePosition;

    return-object v0
.end method
