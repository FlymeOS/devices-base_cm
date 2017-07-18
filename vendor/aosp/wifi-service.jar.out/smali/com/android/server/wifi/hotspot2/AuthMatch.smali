.class public abstract Lcom/android/server/wifi/hotspot2/AuthMatch;
.super Ljava/lang/Object;
.source "AuthMatch.java"


# static fields
.field public static final Exact:I = 0x7

.field public static final Indeterminate:I = 0x0

.field public static final Method:I = 0x2

.field public static final MethodParam:I = 0x3

.field public static final None:I = -0x1

.field public static final Param:I = 0x1

.field public static final Realm:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "match"    # I

    .prologue
    .line 21
    if-gez p0, :cond_0

    .line 22
    const-string/jumbo v1, "None"

    return-object v1

    .line 24
    :cond_0
    if-nez p0, :cond_1

    .line 25
    const-string/jumbo v1, "Indeterminate"

    return-object v1

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 30
    const-string/jumbo v1, "Realm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    .line 33
    const-string/jumbo v1, "Method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_3
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_4

    .line 36
    const-string/jumbo v1, "Param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
