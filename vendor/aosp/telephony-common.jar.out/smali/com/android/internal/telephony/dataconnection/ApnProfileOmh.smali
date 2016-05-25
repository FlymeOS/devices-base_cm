.class public Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;
.super Lcom/android/internal/telephony/dataconnection/ApnSetting;
.source "ApnProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;
    }
.end annotation


# static fields
.field private static final DATA_PROFILE_OMH_PRIORITY_HIGHEST:I = 0x0

.field private static final DATA_PROFILE_OMH_PRIORITY_LOWEST:I = 0xff


# instance fields
.field private mApnProfileModem:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

.field private mPriority:I

.field private mServiceTypeMasks:I


# direct methods
.method public constructor <init>(II)V
    .locals 28
    .param p1, "profileId"    # I
    .param p2, "priority"    # I

    .prologue
    .line 116
    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v2, 0x0

    new-array v15, v2, [Ljava/lang/String;

    const-string v16, "IP"

    const-string v17, "IP"

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    const-string v27, ""

    move-object/from16 v2, p0

    move/from16 v20, p1

    invoke-direct/range {v2 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mServiceTypeMasks:I

    .line 108
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mPriority:I

    .line 120
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mPriority:I

    .line 121
    return-void
.end method

.method private isValidPriority(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 183
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addServiceType(Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;)V
    .locals 7
    .param p1, "modemProfile"    # Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    .prologue
    .line 196
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mServiceTypeMasks:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mServiceTypeMasks:I

    .line 199
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v4, "serviceTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->values()[Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    move-result-object v1

    .local v1, "arr$":[Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 201
    .local v0, "apt":Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mServiceTypeMasks:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "apt":Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->types:[Ljava/lang/String;

    .line 206
    return-void
.end method

.method public canHandleType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mServiceTypeMasks:I

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->getApnProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApnProfileType()Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    return-object v0
.end method

.method public getApnProfileTypeModem()Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mApnProfileModem:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mPriority:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->profileId:I

    return v0
.end method

.method public isPriorityHigher(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mPriority:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPriorityLower(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mPriority:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPriority()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mPriority:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->isValidPriority(I)Z

    move-result v0

    return v0
.end method

.method public setApnProfileTypeModem(Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;)V
    .locals 0
    .param p1, "modemProfile"    # Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mApnProfileModem:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    .line 157
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mPriority:I

    .line 165
    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "ApnProfile OMH"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->profileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
