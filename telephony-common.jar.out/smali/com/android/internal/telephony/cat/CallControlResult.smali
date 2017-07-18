.class public final enum Lcom/android/internal/telephony/cat/CallControlResult;
.super Ljava/lang/Enum;
.source "CallControlResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/CallControlResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/cat/CallControlResult;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string/jumbo v1, "CALL_CONTROL_NO_CONTROL"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 23
    new-instance v0, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string/jumbo v1, "CALL_CONTROL_ALLOWED_NO_MOD"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 24
    new-instance v0, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string/jumbo v1, "CALL_CONTROL_NOT_ALLOWED"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 25
    new-instance v0, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string/jumbo v1, "CALL_CONTROL_ALLOWED_WITH_MOD"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/cat/CallControlResult;

    sget-object v1, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/cat/CallControlResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->$VALUES:[Lcom/android/internal/telephony/cat/CallControlResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/android/internal/telephony/cat/CallControlResult;->mValue:I

    .line 28
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 33
    invoke-static {}, Lcom/android/internal/telephony/cat/CallControlResult;->values()[Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 34
    .local v0, "e":Lcom/android/internal/telephony/cat/CallControlResult;
    iget v4, v0, Lcom/android/internal/telephony/cat/CallControlResult;->mValue:I

    if-ne v4, p0, :cond_0

    .line 35
    return-object v0

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "e":Lcom/android/internal/telephony/cat/CallControlResult;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/CallControlResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/android/internal/telephony/cat/CallControlResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CallControlResult;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/CallControlResult;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->$VALUES:[Lcom/android/internal/telephony/cat/CallControlResult;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/telephony/cat/CallControlResult;->mValue:I

    return v0
.end method
