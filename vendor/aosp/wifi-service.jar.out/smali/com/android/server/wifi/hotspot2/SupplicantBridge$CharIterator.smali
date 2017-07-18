.class Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;
.super Ljava/lang/Object;
.source "SupplicantBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/SupplicantBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharIterator"
.end annotation


# instance fields
.field private mHex:I

.field private mPosition:I

.field private final mString:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->hasDoubleHex()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->next()C

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->nextDoubleHex()I

    move-result v0

    return v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    .line 406
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private hasDoubleHex()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 419
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 420
    return v4

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v5}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v0

    .line 423
    .local v0, "nh":I
    if-gez v0, :cond_1

    .line 424
    return v4

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v5}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v1

    .line 427
    .local v1, "nl":I
    if-gez v1, :cond_2

    .line 428
    return v4

    .line 430
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    .line 431
    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mHex:I

    .line 432
    return v5
.end method

.method private hasNext()Z
    .locals 2

    .prologue
    .line 411
    iget v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private next()C
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private nextDoubleHex()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mHex:I

    return v0
.end method
