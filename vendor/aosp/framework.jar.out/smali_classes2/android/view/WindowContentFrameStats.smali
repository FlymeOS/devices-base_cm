.class public final Landroid/view/WindowContentFrameStats;
.super Landroid/view/FrameStats;
.source "WindowContentFrameStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowContentFrameStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFramesPostedTimeNano:[J

.field private mFramesReadyTimeNano:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Landroid/view/WindowContentFrameStats$1;

    invoke-direct {v0}, Landroid/view/WindowContentFrameStats$1;-><init>()V

    sput-object v0, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/view/FrameStats;-><init>()V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/view/FrameStats;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowContentFrameStats;->mRefreshPeriodNano:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPresentedTimeNano:[J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/WindowContentFrameStats$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/WindowContentFrameStats$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/WindowContentFrameStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getFramePostedTimeNano(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 91
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getFrameReadyTimeNano(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 110
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public init(J[J[J[J)V
    .locals 1
    .param p1, "refreshPeriodNano"    # J
    .param p3, "framesPostedTimeNano"    # [J
    .param p4, "framesPresentedTimeNano"    # [J
    .param p5, "framesReadyTimeNano"    # [J

    .prologue
    .line 65
    iput-wide p1, p0, Landroid/view/WindowContentFrameStats;->mRefreshPeriodNano:J

    .line 66
    iput-object p3, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    .line 67
    iput-object p4, p0, Landroid/view/WindowContentFrameStats;->mFramesPresentedTimeNano:[J

    .line 68
    iput-object p5, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "WindowContentFrameStats["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/WindowContentFrameStats;->getFrameCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", fromTimeNano:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/WindowContentFrameStats;->getStartTimeNano()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", toTimeNano:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/WindowContentFrameStats;->getEndTimeNano()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-wide v0, p0, Landroid/view/WindowContentFrameStats;->mRefreshPeriodNano:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 125
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPresentedTimeNano:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 126
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 127
    return-void
.end method
