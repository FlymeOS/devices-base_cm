.class public Landroid/location/FusedBatchOptions;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/FusedBatchOptions$SourceTechnologies;,
        Landroid/location/FusedBatchOptions$BatchFlags;,
        Landroid/location/FusedBatchOptions$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/FusedBatchOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mFlags:I

.field private volatile mMaxPowerAllocationInMW:D

.field private volatile mPeriodInNS:J

.field private volatile mSmallestDisplacementMeters:F

.field private volatile mSourcesToUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Landroid/location/FusedBatchOptions$1;

    invoke-direct {v0}, Landroid/location/FusedBatchOptions$1;-><init>()V

    .line 116
    sput-object v0, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 28
    iput v2, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 29
    iput v2, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return v0
.end method

.method public getMaxPowerAllocationInMW()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    return-wide v0
.end method

.method public getPeriodInNS()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    return-wide v0
.end method

.method public getSmallestDisplacementMeters()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    return v0
.end method

.method public getSourcesToUse()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return v0
.end method

.method public isFlagSet(I)Z
    .locals 2
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x0

    .line 88
    iget v1, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSourceToUseSet(I)Z
    .locals 2
    .param p1, "source"    # I

    .prologue
    const/4 v0, 0x0

    .line 72
    iget v1, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 84
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 83
    return-void
.end method

.method public resetSourceToUse(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 68
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 67
    return-void
.end method

.method public setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 80
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 79
    return-void
.end method

.method public setMaxPowerAllocationInMW(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 39
    return-void
.end method

.method public setPeriodInNS(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 47
    return-void
.end method

.method public setSmallestDisplacementMeters(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 56
    iput p1, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    .line 55
    return-void
.end method

.method public setSourceToUse(I)V
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 64
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 143
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 141
    return-void
.end method
