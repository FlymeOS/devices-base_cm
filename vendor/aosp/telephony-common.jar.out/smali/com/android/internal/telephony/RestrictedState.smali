.class public Lcom/android/internal/telephony/RestrictedState;
.super Ljava/lang/Object;
.source "RestrictedState.java"


# instance fields
.field private mCsEmergencyRestricted:Z

.field private mCsNormalRestricted:Z

.field private mPsRestricted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 91
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/RestrictedState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v2, "s":Lcom/android/internal/telephony/RestrictedState;
    if-nez p1, :cond_0

    .line 97
    return v3

    .line 92
    .end local v2    # "s":Lcom/android/internal/telephony/RestrictedState;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 100
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Lcom/android/internal/telephony/RestrictedState;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    iget-boolean v5, v2, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    if-ne v4, v5, :cond_1

    .line 101
    iget-boolean v4, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    iget-boolean v5, v2, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-ne v4, v5, :cond_1

    .line 102
    iget-boolean v4, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    iget-boolean v5, v2, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 100
    :cond_1
    return v3
.end method

.method public isCsEmergencyRestricted()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    return v0
.end method

.method public isCsNormalRestricted()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    return v0
.end method

.method public isCsRestricted()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPsRestricted()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    return v0
.end method

.method public setCsEmergencyRestricted(Z)V
    .locals 0
    .param p1, "csEmergencyRestricted"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    .line 43
    return-void
.end method

.method public setCsNormalRestricted(Z)V
    .locals 0
    .param p1, "csNormalRestricted"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    .line 57
    return-void
.end method

.method public setPsRestricted(Z)V
    .locals 0
    .param p1, "psRestricted"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    const-string/jumbo v0, "none"

    .line 109
    .local v0, "csString":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_1

    .line 110
    const-string/jumbo v0, "all"

    .line 117
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restricted State CS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " PS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 111
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_3

    .line 113
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_0

    .line 114
    const-string/jumbo v0, "normal call"

    goto :goto_0

    .line 112
    :cond_3
    const-string/jumbo v0, "emergency"

    goto :goto_0
.end method
