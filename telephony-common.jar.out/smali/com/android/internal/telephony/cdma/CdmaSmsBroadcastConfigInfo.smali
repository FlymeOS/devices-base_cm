.class public Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "CdmaSmsBroadcastConfigInfo.java"


# instance fields
.field private mFromServiceCategory:I

.field private mLanguage:I

.field private mSelected:Z

.field private mToServiceCategory:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "fromServiceCategory"    # I
    .param p2, "toServiceCategory"    # I
    .param p3, "language"    # I
    .param p4, "selected"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    .line 48
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    .line 49
    iput p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    .line 50
    iput-boolean p4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getFromServiceCategory()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    return v0
.end method

.method public getToServiceCategory()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CdmaSmsBroadcastConfigInfo: Id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, ", "

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "] "

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ENABLED"

    .line 83
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    const-string/jumbo v0, "DISABLED"

    goto :goto_0
.end method
