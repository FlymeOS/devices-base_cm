.class public final enum Lcom/android/internal/telephony/cat/TextAlignment;
.super Ljava/lang/Enum;
.source "TextAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;


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

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string/jumbo v1, "CENTER"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/cat/TextAlignment;

    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/android/internal/telephony/cat/TextAlignment;->mValue:I

    .line 34
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 45
    invoke-static {}, Lcom/android/internal/telephony/cat/TextAlignment;->values()[Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 46
    .local v0, "e":Lcom/android/internal/telephony/cat/TextAlignment;
    iget v4, v0, Lcom/android/internal/telephony/cat/TextAlignment;->mValue:I

    if-ne v4, p0, :cond_0

    .line 47
    return-object v0

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "e":Lcom/android/internal/telephony/cat/TextAlignment;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/TextAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextAlignment;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/TextAlignment;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

    return-object v0
.end method
