.class public Lcom/android/internal/telephony/SubscriptionData;
.super Ljava/lang/Object;
.source "SubscriptionData.java"


# instance fields
.field public subscription:[Lcom/android/internal/telephony/Subscription;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "numSub"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-array v1, p1, [Lcom/android/internal/telephony/Subscription;

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    new-instance v2, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/Subscription;-><init>()V

    aput-object v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/SubscriptionData;)Lcom/android/internal/telephony/SubscriptionData;
    .locals 3
    .param p1, "from"    # Lcom/android/internal/telephony/SubscriptionData;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/Subscription;

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    new-instance v2, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/Subscription;-><init>()V

    aput-object v2, v1, v0

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    array-length v0, v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscription(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;
    .locals 2
    .param p1, "sub"    # Lcom/android/internal/telephony/Subscription;

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Subscription;->isSame(Lcom/android/internal/telephony/Subscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v1, v1, v0

    .line 87
    :goto_1
    return-object v1

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasSubscription(Lcom/android/internal/telephony/Subscription;)Z
    .locals 2
    .param p1, "sub"    # Lcom/android/internal/telephony/Subscription;

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Subscription;->isSame(Lcom/android/internal/telephony/Subscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x1

    .line 78
    :goto_1
    return v1

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
